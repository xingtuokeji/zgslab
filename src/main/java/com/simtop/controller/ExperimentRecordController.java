package com.simtop.controller;

import com.simtop.common.ServerResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = "/experimentRecord")
public class ExperimentRecordController {

    @Autowired
    private ExperimentRecordService experimentRecordService;

    @RequestMapping(value = "/add",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<String> addExpRec(Integer id, HttpServletRequest request){
        return null;
    }


}
