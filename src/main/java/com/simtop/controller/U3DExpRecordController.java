package com.simtop.controller;

import com.simtop.common.ServerResponse;
import com.simtop.pojo.U3DExpRecord;
import com.simtop.service.U3DExpRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * u3d实验记录推送至web端
 */
@Controller
@RequestMapping(value = "/u3d/experimentRecord")
public class U3DExpRecordController {

    @Autowired
    private U3DExpRecordService u3DExpRecordService;

    @RequestMapping(value = "/add",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<String> addExperimentRecordByExpId(U3DExpRecord expRecord, HttpServletRequest request){
         String token = request.getHeader("Authorization");
         System.out.println(token);
         if(token==null){
             return ServerResponse.createByErrorMsg("请传入登陆时候的token");
         }
         return u3DExpRecordService.add(expRecord);
    }

    @RequestMapping(value = "/findById",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<U3DExpRecord> findById(HttpServletRequest request,Integer experimentId){
        String token = request.getHeader("Authorization");
        System.out.println(token);
        if(token==null){
            return ServerResponse.createByErrorMsg("请传入登陆时候的token");
        }
        return u3DExpRecordService.findByExpId(experimentId);
    }
}
