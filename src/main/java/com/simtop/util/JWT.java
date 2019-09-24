package com.simtop.util;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.util.Base64;
import java.util.Random;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.Mac;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/**
 * 用于对接ilab平台的类 （实验数据加解密）
 */
public class JWT {
    public static final byte[] XJWT = "xjwt".getBytes();
    public static final byte DOT = '.';

    public static final int SIG_LENGTH = 32;
    public static final int BASE64_SIG_LENGTH = 44;
    public static final int AES_KEY_LENGTH = 44;
    public static final int EXPIRES_OFFSET = 0;
    public static final int TYPE_OFFSET = EXPIRES_OFFSET + 8;
    public static final int ISSUEID_OFFSET = TYPE_OFFSET + 1;
    public static final int HEADER_LENGTH = ISSUEID_OFFSET + 8;

    public final ByteBuffer header = ByteBuffer.allocate(HEADER_LENGTH).order(ByteOrder.BIG_ENDIAN);

    private final Mac sha256_HMAC;
    private final SecretKeySpec secret_key;
    private byte[] sig = new byte[SIG_LENGTH];
    private byte[] aesKey;
    private final Random rand;

    private final Cipher cipher;
    private final Cipher decipher;
    private final SecretKeySpec keySpec;
    private final IvParameterSpec iv;

    private final long issueId;

    public interface Type {
        byte RESERVED = 0;
        byte JSON = 1;
        byte SYS = 2;
    }

    public static boolean isValidType(byte t) {
        switch (t) {
            case Type.RESERVED:
            case Type.JSON:
            case Type.SYS:
                return true;
            default:
                return false;
        }
    }

    private ByteBuffer encrypted = ByteBuffer.allocate(1024 * 64).order(ByteOrder.BIG_ENDIAN);

    public JWT(String secret, String aesKey) {
        this(secret, aesKey, System.nanoTime(), 0);
    }

    /**
     *
     * @param secret
     *  shared secret between parties
     * @param aesKey
     *  shared aesKey between parties
     * @param seed
     *  a random seed
     * @param issueId
     *  a pre-allocated issueId
     */
    public JWT(String secret, String aesKey, long seed, long issueId) {
        try {
            if (aesKey.length() != AES_KEY_LENGTH) {
                throw new IllegalArgumentException("Aes key length must be 44");
            }
            sha256_HMAC = Mac.getInstance("HmacSHA256");
            secret_key = new javax.crypto.spec.SecretKeySpec(secret.getBytes("UTF8"), "HmacSHA256");
            sha256_HMAC.init(secret_key);
            this.aesKey = Base64.getDecoder().decode(aesKey.getBytes());

            cipher = Cipher.getInstance("AES/CBC/NoPadding");
            keySpec = new SecretKeySpec(this.aesKey, "AES");
            iv = new IvParameterSpec(this.aesKey, 0, 16);
            cipher.init(Cipher.ENCRYPT_MODE, keySpec, iv);

            decipher = Cipher.getInstance("AES/CBC/NoPadding");

            decipher.init(Cipher.DECRYPT_MODE, keySpec, iv);

            rand = new Random(seed);
            this.issueId = issueId;

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    private int absolutePosition(ByteBuffer bb) {
        return bb.position() + bb.arrayOffset();
    }

    /**
     * Sign the payload. The output buffer is cleared and flipped.
     *
     * @param payload
     *            the payload
     * @param out
     *            the output buffer, it will be cleared
     * @param
     *
     * @return the output buffer
     */
    public ByteBuffer sign(byte type, ByteBuffer payload, ByteBuffer out, long expires) {
        out.clear();
        int pos = absolutePosition(out);
        header.clear();
        header.putLong(EXPIRES_OFFSET, expires);
        header.put(TYPE_OFFSET, type);
        header.putLong(ISSUEID_OFFSET, issueId);
        out.put(Base64.getEncoder().encode(header));
        out.put(DOT);
        out.put(Base64.getEncoder().encode(payload));
        sha256_HMAC.update(out.array(), pos, absolutePosition(out) - pos);
        out.put(DOT);
        try {
            sha256_HMAC.doFinal(sig, 0);
        } catch (ShortBufferException | IllegalStateException e) {
            throw new RuntimeException(e);
        }
        out.put(Base64.getEncoder().encode(sig));
        out.flip();
        return out;
    }

    /**
     * Encrypt and then sign the payload. The output buffer is cleared and flipped.
     *
     * According to the current research, this is the best practice
     *
     * @param type
     *            the type of the payload
     * @param payload
     *            the payload data
     * @param out
     *            encrypted and signed output
     * @param
     *
     * @return the output byte buffer, same as out
     */
    public ByteBuffer encryptAndSign(byte type, ByteBuffer payload, ByteBuffer out, long expires) {
        if (!isValidType(type)) {
            throw new IllegalArgumentException("Unknown type:" + type);
        }
        out.clear();
        int pos = out.position();
        out.putLong(rand.nextLong());
        out.put(payload);

        byte padding = (byte)  ((16 - ((out.position() + 1) & 0xF)) & 0xF);

        for (int i = 0; i < padding + 1; ++i) {
            out.put(padding);
        }

        try {
            int len = cipher.doFinal(out.array(), pos + out.arrayOffset(), out.position() - pos, encrypted.array(), 0);
            encrypted.limit(len);
            out.position(pos);
            return sign(type, encrypted, out, expires);

        } catch (ShortBufferException | IllegalBlockSizeException | BadPaddingException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * Verify a signed data
     *
     * @param data
     * @param out
     * @return the type of the message
     * @param now
     *         current time in milliseconds
     */
    public byte verify(String data, ByteBuffer out, long now) {
        if (data == null) {
            throw new RuntimeException("Input data is null");
        }
        int i = data.length() - BASE64_SIG_LENGTH - 1;
        if (i < 0 || data.charAt(i) != DOT) {
            throw new RuntimeException("Invalid token");
        }

        byte[] da = data.getBytes();

        sha256_HMAC.update(da, 0, i);
        try {
            sha256_HMAC.doFinal(sig, 0);
        } catch (ShortBufferException | IllegalStateException e) {
            try {
                cipher.init(Cipher.ENCRYPT_MODE, keySpec, iv);
            } catch (InvalidKeyException | InvalidAlgorithmParameterException e1) {
                throw new RuntimeException(e);
            }
            throw new RuntimeException(e);
        }

        byte[] tmp = data.substring(data.lastIndexOf(DOT) + 1).getBytes();
        byte[] _sig = Base64.getDecoder().decode(tmp);

        for (int j = 0; j < _sig.length; ++j) {
            if (_sig[j] != sig[j]) {
                throw new RuntimeException("Invalid token");
            }
        }

        int s = data.indexOf(DOT);

        byte[] header = Base64.getDecoder().decode(data.substring(0, s).getBytes());

        ByteBuffer bb = ByteBuffer.wrap(header).order(ByteOrder.BIG_ENDIAN);

        long expires = bb.getLong(EXPIRES_OFFSET);
        if (expires < now) {
            throw new RuntimeException("Invalid token, expired");
        }

        out.clear();
        out.put(Base64.getDecoder().decode(data.substring(s + 1, i).getBytes()));
        out.flip();
        byte type = header[TYPE_OFFSET];
        if (!isValidType(type)) {
            throw new RuntimeException("Invalid token, unknown type:" + type);
        }
        return type;
    }

    /**
     * Verify and decrypt a signed data
     *
     * @param data
     * @param out
     * @return the type of the message
     * @param now
     *         current time in milliseconds
     */

    public byte verifyAndDecrypt(String data, ByteBuffer out, long now) {
        byte type = verify(data, encrypted, now);
        out.clear();
        int len;
        try {
            len = decipher.doFinal(encrypted.array(), absolutePosition(encrypted), encrypted.remaining(), out.array(), absolutePosition(out));
            len -= 1 + out.array()[out.position() + out.arrayOffset() + len - 1];
            if (len < 0 || len > out.remaining()) {
                throw new RuntimeException("Incorrect AES key or outout buffer too small");
            }
            out.position(8).limit(len);
            return type;
        } catch (ShortBufferException | IllegalBlockSizeException | BadPaddingException e) {
            try {
                decipher.init(Cipher.DECRYPT_MODE, keySpec, iv);
            } catch (InvalidKeyException | InvalidAlgorithmParameterException e1) {
                throw new RuntimeException(e);
            }
            throw new RuntimeException(e);
        }

    }

    /**
     * Encrypt and sign the given payload as type JSON
     *
     * @param payload
     *            the payload to be encrypted and signed
     * @param token
     *            the output token
     * @param expires
     *            the expire time in milliseconds
     * @return the token
     *
     */
    public ByteBuffer encryptAndSign(ByteBuffer payload, ByteBuffer token, long expires) {
        return encryptAndSign(Type.JSON, payload, token, expires);
    }

    public String verifyAndDecrypt(String data, long now) {
        ByteBuffer out = ByteBuffer.allocate(1024 * 8).order(ByteOrder.BIG_ENDIAN);
        this.verifyAndDecrypt(data, out, now);
        return new String(out.array(), out.arrayOffset() + out.position(), out.remaining());
    }
}
