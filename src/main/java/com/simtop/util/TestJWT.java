package com.simtop.util;
import com.alibaba.fastjson.JSONObject;
import com.simtop.common.Key;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

import java.io.ByteArrayOutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;

import java.io.ByteArrayOutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;


public class TestJWT {
    public static void main(String[] args)
    {
        try
        {
            String data= "";
//            // =================示例：解密xjwt (token也是一个xjwt);
            String xjwt = "AAABbb4s1qYBAAAAAAABkFI%3D.f3l%2F%2FD9%2B%2B9puye3r8tOW5P32Bxvn6mJKgSrkJtPTWjDcmU0D1M0nCpxSqFA2qgSHVnPPI3Oi1s2GlNQ9mKOtMmiPaXo0fV3CakI2RE%2FsfLE%2F2nPpkmid4SQ9YzhS4EJ0Cr0Jdo3T7kY5I3mzuNEXPCtRthDk3oWgWk79xUyVF4oI31i8Wh5HAJXEmIOyT5ihADSJeVZ4a%2BUOhme7%2BAXbjmmM3Ie2737DURB1dimh7Lu32w7mgx1eUMRncMR3jxA8LFT1YVRMH8QaMENSz27LPsXikCs8QJ%2BqCARxZFuk6jj0GYJzeOhb3vRji1zjFe6BfuS%2BvwgaBbee1mG12UtSkw%3D%3D.5p7Tw8HcUW9G8AompVkEWAJI49wS7%2FgjP4N5oAgONjQ%3D";
            data = dencrty(xjwt);
            JSONObject o = JSONObject.parseObject(data);
            String loginName = o.getString("mj");
            String username  = o.getString("dis");
            System.out.println(username);// 本地测试ok
            String s = new String(username.getBytes("UTF-8"),"UTF-8");
            System.out.println(s);

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
      //  获取当前时间
        long now = System.currentTimeMillis();
        //创建JWT实例
        JWT jwt = new JWT(Key.SecretKey, Key.AesKey,now,Key.issuerId);
        //对数据进行url 解码
        xjwt=URLDecoder.decode(xjwt,"UTF-8");
        //解密数据
        String json = jwt.verifyAndDecrypt(xjwt,now);
//        return dencrty(xjwt);
        return json;
    }

    /**
     * 加密json数据 ——token
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



class Test {
    public static void main(String[] args) {
        System.out.println(System.getProperty("sun.jnu.encoding"));
    }
}


class HelloWorld {
    public static void main(String[] args) {
        System.out.println("Default Charset=" + Charset.defaultCharset());
        System.out.println("file.encoding=" + System.getProperty("file.encoding"));
        System.out.println("Default Charset=" + Charset.defaultCharset());
        System.out.println("Default Charset in Use=" + getDefaultCharSet());
    }

    private static String getDefaultCharSet() {
        OutputStreamWriter writer = new OutputStreamWriter(new ByteArrayOutputStream());
        String enc = writer.getEncoding();
        return enc;
    }
}
