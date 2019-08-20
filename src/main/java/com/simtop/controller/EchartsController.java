package com.simtop.controller;

import com.simtop.common.ServerResponse;
import com.simtop.pojo.Echarts;
import com.simtop.pojo.Echarts2;
import com.simtop.pojo.Echarts3;
import com.simtop.pojo.User;
import com.simtop.service.EchartsService;
import com.simtop.util.JwtUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping("/user/echarts")
@CrossOrigin
public class EchartsController {

    @Autowired
    private EchartsService echartsService;
    /**
     * 查询前八的省份用户数量
     * @param request
     * @return
     */
    @RequestMapping(value = "/userArea",method = RequestMethod.GET)
    @ResponseBody
    public  ServerResponse<List<Echarts>> userAreaCount(HttpServletRequest request, HttpServletResponse response){
        String token = request.getHeader("Authorization");
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User u = JwtUtil.unsign(jwt,User.class);
        if(u == null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        return echartsService.selectEightProUser();
    }

    /**
     * 用户数量统计分析
     * @param request
     * @return
     */
    @RequestMapping(value = "/role",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<List<Echarts2>> selectRoleUser(HttpServletRequest request,HttpServletResponse response){
        response.setHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS");
        String token = request.getHeader("Authorization");
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User u = JwtUtil.unsign(jwt,User.class);
        if(u == null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        return echartsService.selectRoleUser();
    }

    /**
     * 实验成绩分布图
     * @param request
     * @return
     */
    @RequestMapping(value = "/score",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<Echarts3> selectScoreUser(HttpServletRequest request,HttpServletResponse response){
        response.setHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS");
        String token = request.getHeader("Authorization");
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User u = JwtUtil.unsign(jwt,User.class);
        if(u == null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        return echartsService.selectScoreUser();
    }

}
