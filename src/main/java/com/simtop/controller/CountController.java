package com.simtop.controller;

import com.simtop.common.ServerResponse;
import com.simtop.dao.CountDao;
import com.simtop.pojo.User;
import com.simtop.util.JwtUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 统计网站访问量
 */
@Controller
@CrossOrigin
public class CountController {
    @Autowired
    private CountDao countDao;

    @RequestMapping(value = "/website/count",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<Integer> websiteCount(HttpServletRequest request, HttpServletResponse response){
        String token = request.getHeader("Authorization");
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User u = JwtUtil.unsign(jwt,User.class);
        if(u == null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        return ServerResponse.createBySuccess(countDao.selectCount());
    }

}
