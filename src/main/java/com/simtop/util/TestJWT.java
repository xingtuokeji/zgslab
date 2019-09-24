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
//            String xjwt = "AAABbV0hHTUBAAAAAAABiDA%3D.%2BWWnm2RsBmYtina4eUwxloBb57MzBrNtG%2Fq3hUgw7DxBkGT45PL2m%2FKU7rSBu9odGGbTaLMF16NiHFBl35xV2nO8h%2Be57Ykd6dcc8anRTnDDBidW5lRAho4ZiIwcxyTKD2xbF7wDiJ%2FIV5Lz15usLBelaqn%2FsC8vZ%2BckqIeY6JZZN26HOatD1dyRE6m5koKuY5EQ9c4FeIIsYH9v%2Fubp%2BykNaDlEGRZMr9omYBrN3dC0YXVPQwDDaCEiwIaDHiYZ08g8jgEWuTnhf38DQL8njlFbYBkb8MvDvLuXcrbbC%2BU%3D.7tnw6ojpQ5OTz2zsV4no%2FdioKFWjL4NyMuJmnPL4UeU%3D";
//            data = dencrty(xjwt);
//            System.out.println(data);

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
