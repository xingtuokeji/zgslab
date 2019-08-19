package com.simtop.controller;

import com.simtop.common.ServerResponse;
import com.simtop.dao.CountDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * 统计网站访问量
 */
@Controller
public class CountController {
    @Autowired
    private CountDao countDao;

    @RequestMapping(value = "/website/count",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<Integer> websiteCount(HttpServletRequest request){
        String token = request.getHeader("Authorization");
        if(token==null){
            return ServerResponse.createByErrorMsg("token错误");
        }
        return ServerResponse.createBySuccess(countDao.selectCount());
    }

}
