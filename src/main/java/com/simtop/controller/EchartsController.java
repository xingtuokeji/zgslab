package com.simtop.controller;

import com.simtop.common.ServerResponse;
import com.simtop.pojo.Echarts;
import com.simtop.pojo.Echarts2;
import com.simtop.pojo.Echarts3;
import com.simtop.service.EchartsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/user/echarts")
public class EchartsController {

    @Autowired
    private EchartsService echartsService;
    /**
     * 查询前八的省份用户数量
     * @param request
     * @return
     */
    @RequestMapping(value = "/userArea",method = RequestMethod.GET)
    @ResponseBody
    public  ServerResponse<List<Echarts>> userAreaCount(HttpServletRequest request){
        //判断token是否失效
        String token = request.getHeader("Authorization");
        if(token == null){
            return ServerResponse.createByErrorMsg("token已过期");
        }
        return echartsService.selectEightProUser();
    }

    @RequestMapping(value = "/role",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<List<Echarts2>> selectRoleUser(HttpServletRequest request){
        //判断token是否失效
        String token = request.getHeader("Authorization");
        if(token == null){
            return ServerResponse.createByErrorMsg("token已过期");
        }
        return echartsService.selectRoleUser();
    }

    @RequestMapping(value = "/score",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<Echarts3> selectScoreUser(HttpServletRequest request){
        //判断token是否失效
        String token = request.getHeader("Authorization");
        if(token == null){
            return ServerResponse.createByErrorMsg("token已过期");
        }
        return echartsService.selectScoreUser();
    }

}
