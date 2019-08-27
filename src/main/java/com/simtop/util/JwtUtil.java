package com.simtop.util;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.auth0.jwt.JWTSigner;
import com.auth0.jwt.JWTVerifier;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.simtop.pojo.User;

import java.util.HashMap;
import java.util.Map;

public class JwtUtil {
    //加密字符串
    private static final String SECRET = "XX#$%()(#*!()!KL<><MQLMNQNQJQK sdfkjsdrow32234545fdf>?N<:{LWPW";
    //过期时间ms
    private static final String EXP = "exp";
    //主体
    private static final String PAYLOAD = "payload";

    //加密，传入一个对象和有效期
    public static <T> String sign(T object, long maxAge) {
        try {
            final JWTSigner signer = new JWTSigner(SECRET);
            final Map<String, Object> claims = new HashMap<String, Object>();
            ObjectMapper mapper = new ObjectMapper();
            //值拆开 todo 搞定了 解析json字符串 2019年8月15日10:29:38
            String jsonString = mapper.writeValueAsString(object);
            System.out.println(jsonString);
//            claims.put(PAYLOAD, jsonString);
            //返回数据给前端
            JSONObject jsonObject = JSON.parseObject(jsonString);
            String username = jsonObject.getString("username");
            Integer id = jsonObject.getInteger("id");
            String loginName = jsonObject.getString("loginName");
            Integer roleId = Integer.valueOf(jsonObject.getString("roleId"));
            String school = jsonObject.getString("school");
            System.out.println(school);
            /**
             * json字符串
             * {
             *   "id": 16,
             *   "exp": 1565677098148,
             *   "roleId": "1",
             *   "loginName": "zhanghua",
             *   "username": "张华"
             * }
             */
            claims.put("id",id);
            claims.put("username",username);
            claims.put("loginName",loginName);
            claims.put("roleId",roleId);
            claims.put("school",school);
            claims.put(EXP, System.currentTimeMillis() + maxAge);
            return signer.sign(claims);
        } catch(Exception e) {
            return null;
        }
    }

    //解密，传入一个加密后的token字符串和解密后的类型 todo 解密
    public static<T> T unsign(String jwt, Class<T> classT) {
        final JWTVerifier verifier = new JWTVerifier(SECRET);
        try {
            final Map<String,Object> claims= verifier.verify(jwt);
            if (claims.containsKey(EXP)) {
                long exp = (Long)claims.get(EXP);
                long currentTimeMillis = System.currentTimeMillis();
                //token没过期
                if (exp > currentTimeMillis) {
                    String username = (String)claims.get("username");
                    Integer id = (Integer) claims.get("id");
                    String loginName = (String) claims.get("loginName");
                    Integer roleId = (Integer) claims.get("roleId");
                    String school = (String) claims.get("school");
                    User user = new User();
                    user.setId(id);
                    user.setUsername(username);
                    user.setLoginName(loginName);
                    user.setRoleId(roleId);
                    user.setSchool(school);
                    //todo 封装成json字符串
                    String json = JSONObject.toJSONString(user);
                    ObjectMapper objectMapper = new ObjectMapper();
                    return objectMapper.readValue(json, classT);
                }
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }
}
