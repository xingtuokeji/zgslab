package com.simtop.controller;

import com.simtop.common.ServerResponse;
import com.simtop.pojo.User;
import com.simtop.util.JwtUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/jwt")
@CrossOrigin
public class TestJwtDecodeController {

    @RequestMapping(value = "/test",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<User> jwtDecode(HttpServletRequest request){
        String token = request.getHeader("Authorization");
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User user = JwtUtil.unsign(jwt,User.class);
        System.out.println("后台解析token后的user："+user);
        return ServerResponse.createBySuccess(user);
    }
}
