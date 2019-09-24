package com.simtop.controller;

import com.alibaba.fastjson.JSONObject;
import com.simtop.common.Key;
import com.simtop.common.ServerResponse;
import com.simtop.pojo.U3DExpRecord;
import com.simtop.pojo.User;
import com.simtop.service.U3DExpRecordService;
import com.simtop.util.JwtUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * u3d实验记录 >> Web
 */
@Controller
@RequestMapping(value = "/u3d/experimentRecord")
@CrossOrigin
public class U3DExpRecordController {

    private static final Logger logger = LoggerFactory.getLogger(U3DExpRecordController.class);

    @Autowired
    private U3DExpRecordService u3DExpRecordService;

    /**
     * U3D<<<Web
     * @param expRecord
     * @param request
     * @return
     */
    @RequestMapping(value = "/add",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<String> addExperimentRecordByExpId(@RequestBody U3DExpRecord expRecord, HttpServletRequest request){
        /**
         * 接口安全 验证
         */
        logger.info("u3d正在往web数据库插入实验记录数据"+new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
        logger.info("获取到的试验记录参数为："+expRecord);
        String token = request.getHeader("Authorization");
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User u = JwtUtil.unsign(jwt,User.class);
        if(u == null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        expRecord.setLoginName(u.getLoginName());
         return u3DExpRecordService.add(expRecord);
    }

    @RequestMapping(value = "/findById",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<U3DExpRecord> findById(HttpServletRequest request,Integer experimentId){
        String token = request.getHeader("Authorization");
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User u = JwtUtil.unsign(jwt,User.class);
        if(u == null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        return u3DExpRecordService.findByExpId(experimentId);
    }
}
