package com.simtop.util;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URLConnection;

/**
 * 调用http接口的方法
 */
public class HttpUtil {
    public static String loadJSON(String url) {
        StringBuilder json = new StringBuilder();
        try {
            URL oracle = new URL(url);
            URLConnection yc = oracle.openConnection();
            BufferedReader in = new BufferedReader(new InputStreamReader(
                    yc.getInputStream()));
            String inputLine = null;
            while ((inputLine = in.readLine()) != null) {
                json.append(inputLine);
            }
            in.close();
        } catch (MalformedURLException e) {
        } catch (IOException e) {
        }
        return json.toString();
    }

    public static void main(String[] args) {
//        String username = "test";
//        String nonce = StringUtil.getRandomString(16);
//        // String nonce = "0F2785E6ED1B59AC";
//        String cnonce = StringUtil.getRandomString(16);
//        // String cnonce = "F5A981C20303072";
//        String newPassword = SHA256Util.generateShaPwd(nonce, "123456", cnonce);
//        //错误的是393CA50663B80D910B33C005A125BC886CBD62BB218DCD0DA1C82486164A21D4
//        //正确的是2760F0245D3C03E7ABDA1CCA310187E2E33EEB886FDE0FCD5C827E971AED44D7
////        System.out.println(password);
//        String json = loadJSON("http://202.205.145.156:8017/sys/api/user/validate?username=" + username + "&password=" + newPassword + "&nonce=" + nonce + "&cnonce=" + cnonce);//get请求
//        System.out.println(json);
//        // {"code":0,"username":"test","name":"星星"}
//        /*interfaceUtil("http://172.83.28.221:7001/NSRTRegistration/test/add.do",
//             "id=8888888&name=99999999");*///post请求
//        String json1 = loadJSON("http://202.205.145.156:8017/third/api/test/result/upload?xjwt=AAABbV14H4gCAAAAAAABiDA%3D.TGTcJJHoNoYdDV66IUdm94mNumwROV8NAMtCfe21ezg%2FmKmIvbp3Z%2Ftbt0vJyrl%2F.zubreqVNE3LFbJti5Luyrg2NQW709Bq5ni2OvuI5hGk%3D");
//        System.out.println(json1);
        /**
         * todo 测试ilab报告推送接口
         */
        try {
            String jwt = TestJWT.encrty("SYS");
            String chunkSize = "1048576";
            String current = "0";
            /**
             * todo 总分片数和文件名
             */
            String totalChunks = "";
            String fileName = "";
            String jsonStr = loadJSON("http://www.ilab-x.com/project/log/attachment/upload?totalChunks=TOTALCHUNKS&current=CURRENT&filename=FILENAME&chunkSize=CHUNKSIZE&xjwt=XJWT");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}