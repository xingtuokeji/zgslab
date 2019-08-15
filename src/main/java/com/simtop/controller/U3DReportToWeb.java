package com.simtop.controller;

import com.simtop.common.ServerResponse;
import com.simtop.interceptor.ExperimentResultService;
import com.simtop.pojo.ExperimentResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/u3d/report")
public class U3DReportToWeb {

    @Autowired
    private ExperimentResultService experimentResultService;

    @RequestMapping(value = "/add",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<String> addReportData(ExperimentResult result, HttpServletRequest request){
        String token = request.getHeader("Authorization");
        if(token==null){
            return ServerResponse.createByErrorMsg("token错误");
        }
        return experimentResultService.add(result);
    }
}
