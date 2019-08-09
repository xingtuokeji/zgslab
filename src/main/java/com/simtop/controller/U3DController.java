package com.simtop.controller;

import com.simtop.common.ServerResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/u3d")
public class U3DController {

    @RequestMapping("/coursemanage/insert")
    @ResponseBody
    public ServerResponse<String> courseManage(){
        // todo 占位符 2019年8月8日09:14:20

        return null;
    }

}
