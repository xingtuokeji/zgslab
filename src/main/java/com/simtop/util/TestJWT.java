package com.simtop.util;
import com.alibaba.fastjson.JSONObject;
import com.simtop.common.Key;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;


public class TestJWT {
    public static void main(String[] args)
    {
        try
        {
            String data= "";
//            // =================示例：解密xjwt (token也是一个xjwt);
             String xjwt = "AAABbWITm98BAAAAAAABkFI%3D.F3uwmNO5DvjdknnsqCv6S0jNxDq2VcBzJWd9Kt%2BAigaLuxT5XV%2FOE1%2BkSWTNQ45bx%2B4On1pAg3V8vgPa125uaZckvDGhSmkMJ0Gycudkpiz0Qaf1ZgnogQt8i2WjBi%2BGgZiB1YcJpSbfLuEfeMtB48%2Buk9FF50IJENZDBqgJBh%2Fwhk5NMZ7%2FRFnGTrjw3tPP%2FOF7wihNxcCb4b8TqOVA%2BR17bzwUTQix6R5JSaJV8wGaz6ZwHbZChzVnUcOprJ48Ph52MSpk7Ik%2F02V5333yYO0CesihETlN%2FMsonp3ZVsnHd3Y8DRlcV1j9MTzb5mpC0SgS9L4xazf9fUweixjzSA%3D%3D.zGF5hJD5%2FeJnGEZsh9%2FGSG98SjgDAfR0EEkJA6f3C7c%3D";
            data = dencrty(xjwt);
           System.out.println(data);

            // =================示例：生成xjwt
            JSONObject param=new JSONObject();
            param.put("username","test");
            param.put("issuerId", String.valueOf(Key.issuerId));
            String json=param.toString();

            data = encrty(json);
            System.out.println(data);

        } catch (Exception e)
        {
            e.printStackTrace();
        }
    }

    /**
     * 解析jwt >>> json
     * @param xjwt
     * @return
     * @throws Exception
     */
    public static String dencrty(String xjwt) throws Exception {
        //获取当前时间
        long now = System.currentTimeMillis();
        //创建JWT实例
        JWT jwt = new JWT(Key.SecretKey, Key.AesKey,now,Key.issuerId);
        //对数据进行url 解码
        xjwt=URLDecoder.decode(xjwt,"UTF-8");
        //解密数据
        String json = jwt.verifyAndDecrypt(xjwt,now);
        return json;
    }

    /**
     * 加密json数据
     * @param json
     * @return
     * @throws Exception
     */
    public static String encrty(String json) throws Exception {
        //获取当前时间
        long now=System.currentTimeMillis();
        //创建JWT实例
        JWT jwt=new JWT(Key.SecretKey, Key.AesKey,now,Key.issuerId);
        //创建payload
        ByteBuffer payload = ByteBuffer.allocate(1024).order(ByteOrder.BIG_ENDIAN);
        payload.put(json.getBytes("UTF-8")).flip();
        //创建out
        ByteBuffer out = ByteBuffer.allocate(1024);
        //加密数据
        jwt.encryptAndSign(JWT.Type.SYS,payload,out,now+10*60*1000); //设置过期时间，例:10分钟
        String xjwt = new String(out.array(),out.arrayOffset(),out.remaining());
        //对数据进行url 编码
        return URLEncoder.encode(xjwt,"UTF-8");
    }
}
