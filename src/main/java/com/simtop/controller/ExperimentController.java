package com.simtop.controller;

import com.simtop.common.ServerResponse;
import com.simtop.pojo.Experiment;
import com.simtop.pojo.User;
import com.simtop.service.ExperimentService;
import com.simtop.util.JwtUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 课程管理 1、生成课程码 2、添加课程
 */
@Controller
@RequestMapping("/experiment")
public class ExperimentController {
    private static final Logger logger = LoggerFactory.getLogger(ExperimentController.class);

    @Autowired
    private ExperimentService experimentService;


    /**
     * 产生实验码，不重复，先保存在redis内存中10分钟
     * @param request
     * @return
     */
    @RequestMapping(value = "/generateExpCode",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<String> generateExpCode(HttpServletRequest request){
        String token = request.getHeader("Authorization");
        if(token==null){
            return ServerResponse.createByErrorMsg("token已过期");
        }
        return experimentService.generateExpCode();
    }

    /**
     * 新增实验
     * @param experiment
     * @param request
     * @return
     */
    @RequestMapping(value = "/add")
    @ResponseBody
    public ServerResponse<String> addExperiment(Experiment experiment, HttpServletRequest request){
        //判断token是否失效
        String token = request.getHeader("Authorization");
        if(token == null){
            return ServerResponse.createByErrorMsg("token已过期");
        }
        return experimentService.add(experiment);
    }

    /**
     * 查询所有的实验课程信息
     * @param request
     * @return
     */
    @RequestMapping(value = "/findAll",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<List<Experiment>> findAll(HttpServletRequest request){
        //判断token是否失效
        String token = request.getHeader("Authorization");
        if(token == null){
            return ServerResponse.createByErrorMsg("token已过期");
        }
        return experimentService.findAll();
    }

    /**
     * 根据id删除实验课程信息
     * @param request
     * @param id
     * @return
     */
    @RequestMapping(value = "/deleteById",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<String> deleteById(HttpServletRequest request,Integer id){
        //判断token是否失效
        String token = request.getHeader("Authorization");
        if(token == null){
            return ServerResponse.createByErrorMsg("token已过期");
        }
        return experimentService.deleteById(id);
    }

    /**
     * 多参数查询
     * @param request
     * @param experiment
     * @return
     */
    @RequestMapping(value = "/findBySomeParams",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<List<Experiment>> findBySomeParams(HttpServletRequest request, Experiment experiment){
        //判断token是否失效
        String token = request.getHeader("Authorization");
        if(token == null){
            return ServerResponse.createByErrorMsg("token已过期");
        }
        return experimentService.findByParams(experiment);
    }

    @RequestMapping(value = "/findById",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<Experiment> findById(Integer id,HttpServletRequest request){
        //判断token是否失效
        String token = request.getHeader("Authorization");
        if(token == null){
            return ServerResponse.createByErrorMsg("token已过期");
        }
        return experimentService.findById(id);
    }
}
