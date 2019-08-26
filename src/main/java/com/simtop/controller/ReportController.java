package com.simtop.controller;

import com.simtop.common.ServerResponse;
import com.simtop.pojo.Report;
import com.simtop.pojo.User;
import com.simtop.service.ReportService;
import com.simtop.util.JwtUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = "/report")
@CrossOrigin
public class ReportController {

    @Autowired
    private ReportService reportService;

    /**
     * 根据实验id查询报告基本信息
     * @param request
     * @param experimentId
     * @return
     */
    @RequestMapping(value = "/header",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<Report> showReportHeader(HttpServletRequest request,Integer experimentId){
        String token = request.getHeader("Authorization");
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User u = JwtUtil.unsign(jwt,User.class);
        if(u == null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        return reportService.selectByReportHeader(experimentId);
    }

    @RequestMapping(value = "/reportHeader/add",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<String> u3DAddReportHeader(HttpServletRequest request,@RequestBody Report reportHeader){
        System.out.println("接收到的u3d那边的报告头部数据为："+reportHeader);
        String token = request.getHeader("Authorization");
        if(token==null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User user = JwtUtil.unsign(jwt, User.class);
        if(user == null){
            return ServerResponse.createByErrorMsg("token失效");
        }
        return reportService.addExpReportHeader(reportHeader);
    }
}
