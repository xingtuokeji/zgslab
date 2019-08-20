package com.simtop.controller;

import com.simtop.common.ServerResponse;
import com.simtop.interceptor.ExperimentResultService;
import com.simtop.pojo.ExperimentResult;
import com.simtop.pojo.User;
import com.simtop.util.JwtUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@RequestMapping("/u3d/report")
@CrossOrigin
public class U3DReportToWeb {
    private static final Logger logger = LoggerFactory.getLogger(U3DExpRecordController.class);

    @Autowired
    private ExperimentResultService experimentResultService;

    /**
     * U3D<<<Web
     * @param result
     * @param request
     * @return
     */
    @RequestMapping(value = "/add",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<String> addReportData(@RequestBody ExperimentResult result, HttpServletRequest request){
        logger.info("u3d正在往web数据库插入报告数据"+new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
        String token = request.getHeader("Authorization");
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User u = JwtUtil.unsign(jwt,User.class);
        if(u == null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        return experimentResultService.add(result);
    }
}
