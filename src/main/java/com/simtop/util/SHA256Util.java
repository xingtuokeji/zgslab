package com.simtop.util;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * SHA256加密算法
 */
public class SHA256Util {
    public static String getSHA256StrJava(String str) {
        MessageDigest messageDigest;
        String encodeStr = "";
        try {
            messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(str.getBytes("UTF-8"));
            encodeStr = byte2Hex(messageDigest.digest());
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return encodeStr;
    }

    /**
     * 　　* 将byte转为16进制
     * 　　* @param bytes
     * 　　* @return
     *
     */
    private static String byte2Hex(byte[] bytes) {
        StringBuffer stringBuffer = new StringBuffer();
        String temp = null;
        for (int i = 0; i < bytes.length; i++) {
            temp = Integer.toHexString(bytes[i] & 0xFF);
            if (temp.length() == 1) {
                //1得到一位的进行补0操作
                stringBuffer.append("0");
            }
            stringBuffer.append(temp);
        }
        return stringBuffer.toString();
    }

    /**
     * 密码加密后
     * password = sha256(nonce+sha256(password).toUpperCase() + cnonce).toUpperCase()
     * @return
     */
    public static String generateShaPwd(String nonce,String password,String cnonce){
        String pwd = SHA256Util.getSHA256StrJava(nonce+SHA256Util.getSHA256StrJava(password).toUpperCase()+cnonce).toUpperCase();
        return pwd;
    }

    public static void main(String[] args) {
        String nonce = "0F2785E6ED1B59AC";
        String cnonce = "F5A981C203030722";
        String password = "123456";
        System.out.println(generateShaPwd(nonce,password,cnonce));
        //2760F0245D3C03E7ABDA1CCA310187E2E33EEB886FDE0FCD5C827E971AED44D7

    }
}
