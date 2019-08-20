package com.simtop.service.impl;

import com.simtop.common.ServerResponse;
import com.simtop.dao.CountDao;
import com.simtop.dao.UserDao;
import com.simtop.pojo.User;
import com.simtop.service.JwtLoginService;
import com.simtop.util.JwtUtil;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;

/**
 * JWT业务验证类
 */
@Service
public class JwtLoginServiceImpl implements JwtLoginService {

    @Autowired
    private UserDao userDao;

    @Autowired
    private CountDao countDao;

    @Override
    public ServerResponse<String> login(User user) {
        //验证成功返回token
        User u = userDao.checkLoginNameOrEmail(user.getLoginName(),user.getEmail());
        if(u == null){
            return ServerResponse.createByErrorMsg("登录名不存在");
        }
        //如果登陆成功
        if(u.getPassword().equals(user.getPassword())){
            //使用JWT加密生成token todo
            u.setPassword(StringUtils.EMPTY);//置空密码
            // todo important token有效期10个小时
            String token = JwtUtil.sign(u,600L*1000L*60L);//token有效期10小时
            /**
             * todo 统计网站访问次数：登陆成功后统计次数变量count加1
             */
            int num = countDao.selectCount();
            int count = ++num;
            countDao.updateOne(count);
            return ServerResponse.createBySuccess(token);
        }
        return ServerResponse.createByErrorMsg("登陆密码错误");
    }
}
