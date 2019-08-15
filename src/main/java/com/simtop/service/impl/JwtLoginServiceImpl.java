package com.simtop.service.impl;

import com.simtop.dao.UserDao;
import com.simtop.pojo.User;
import com.simtop.service.JwtLoginService;
import com.simtop.util.JwtUtil;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * JWT业务验证类
 */
@Service
public class JwtLoginServiceImpl implements JwtLoginService {

    @Autowired
    private UserDao userDao;

    @Override
    public String login(User user) {
        //验证成功返回token
        User u = userDao.checkLoginNameOrEmail(user.getLoginName(),user.getEmail());
        if(u == null){
            return null;
        }
        //如果登陆成功
        if(u.getPassword().equals(user.getPassword())){
            //使用JWT加密生成token todo
            u.setPassword(StringUtils.EMPTY);//置空密码
            System.out.println(u);
            String token = JwtUtil.sign(u,60L*1000L*60L);//token有效期1小时
            return token;
        }
        return null;
    }
}
