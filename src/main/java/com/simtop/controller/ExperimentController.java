package com.simtop.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.simtop.common.ServerResponse;
import com.simtop.pojo.Experiment;
import com.simtop.pojo.User;
import com.simtop.service.ExperimentService;
import com.simtop.util.JwtUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 实验课程管理 1、生成课程码 2、添加课程
 */
@Controller
@RequestMapping("/experiment")
public class ExperimentController {
    private static final Logger logger = LoggerFactory.getLogger(ExperimentController.class);

    @Autowired
    private ExperimentService experimentService;


    /**
     * 新增课程记录之前需要先产生6位随机实验码，不重复，先保存在redis内存中10分钟
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
     * 新增一条实验课程
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
     * 查询所有的实验课程信息 todo 分页 已解决
     * @param request
     * @return
     */
    @RequestMapping(value = "/findAll",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<PageInfo<Experiment>> findAll(HttpServletRequest request,Integer pageSize,Integer pageNum){
        //判断token是否失效
        String token = request.getHeader("Authorization");
        if(token == null){
            return ServerResponse.createByErrorMsg("token已过期");
        }
        if(ObjectUtils.isEmpty(pageNum)){
            pageNum = 1;
        }
        PageHelper.startPage(pageNum,pageSize);
        List<Experiment> experimentList = experimentService.findAll();
        PageInfo<Experiment> pageInfo = new PageInfo<>(experimentList);
        return ServerResponse.createBySuccess(pageInfo);
    }

    /**
     * 根据id删除实验课程信息
     * @param request
     * @param id
     * @return
     */
    @RequestMapping(value = "/deleteById",method = RequestMethod.DELETE)
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
     * 多参数查询 课程编码、姓名、实验名称
     * @param request
     * @param experiment
     * @return
     */
    @RequestMapping(value = "/findBySomeParams",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<List<Experiment>> findBySomeParams(HttpServletRequest request, Experiment experiment){
        //判断token是否失效
        String token = request.getHeader("Authorization");
        if(token == null){
            return ServerResponse.createByErrorMsg("token已过期");
        }
        return experimentService.findByParams(experiment);
    }

    /**
     * 根据传入的实验课称id查询出实验课程信息
     * @param id
     * @param request
     * @return
     */
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

    /**
     * 修改实验课程信息(id、courseName)
     */
    @RequestMapping(value = "/updateById",method = RequestMethod.PUT)
    @ResponseBody
    public ServerResponse<String> updateById(HttpServletRequest request,Experiment experiment){
        //判断token是否失效
        String token = request.getHeader("Authorization");
        if(token == null){
            return ServerResponse.createByErrorMsg("token已过期");
        }
        return experimentService.updateById(experiment);
    }
}
