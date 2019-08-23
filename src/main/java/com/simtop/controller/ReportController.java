package com.simtop.controller;

import com.simtop.common.ServerResponse;
import com.simtop.pojo.Report;
import com.simtop.pojo.User;
import com.simtop.service.ReportService;
import com.simtop.util.JwtUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = "/report")
@CrossOrigin
public class ReportController {

    @Autowired
    private ReportService reportService;

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
}
