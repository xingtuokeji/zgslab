package com.simtop.controller;

import com.simtop.common.ServerResponse;
import com.simtop.pojo.ExperimentResult;
import com.simtop.pojo.User;
import com.simtop.service.ReportEchartsService;
import com.simtop.util.JwtUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/report")
@CrossOrigin
public class ReportEchartsController {

    @Autowired
    private ReportEchartsService reportEchartsService;

    @RequestMapping(value = "/show",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<List<ExperimentResult>> showTables(HttpServletRequest request, Integer userId, Integer experimentTimes, Integer experimentId){
        String token = request.getHeader("Authorization");
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User u = JwtUtil.unsign(jwt, User.class);
        if(u==null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        return reportEchartsService.showTables(userId,experimentTimes,experimentId);
    }

}
