package com.simtop.controller;

import com.simtop.common.ServerResponse;
import com.simtop.pojo.Experiment;
import com.simtop.pojo.ExperimentType;
import com.simtop.service.ExperimentTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping(value = "/experimentType")
public class ExperimentTypeController {

    @Autowired
    private ExperimentTypeService experimentTypeService;

    /**
     * 新增实验类别
     * @param request
     * @param experiment
     * @return
     */
    @RequestMapping(value = "/add",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<String> add(HttpServletRequest request, Experiment experiment){
        String token = request.getHeader("Authorization");
        if(token==null){
            return ServerResponse.createByErrorMsg("token错误");
        }
        // 进行实验类别管理
        return experimentTypeService.add(experiment);
    }

    /**
     * 根据实验类别id删除实验类别
     * @param request
     * @param id
     * @return
     */
    @RequestMapping(value = "/deleteById",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<String> deleteById(HttpServletRequest request,Integer id){
        String token = request.getHeader("Authorization");
        if(token==null){
            return ServerResponse.createByErrorMsg("token错误");
        }
        //实验类别删除
        return experimentTypeService.deleteById(id);
    }

    /**
     * 查询所有的实验类别信息
     * @return
     */
    @RequestMapping(value = "/findAll",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<List<ExperimentType>> selectAll(HttpServletRequest request){
        String token = request.getHeader("Authorization");
        if(token==null){
            return ServerResponse.createByErrorMsg("token错误");
        }
        return experimentTypeService.findAll();
    }

    /**
     * 根据实验类别id查询数据
     */

    @RequestMapping(value = "/selectById",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<ExperimentType> selectById(Integer id,HttpServletRequest request){
        String token = request.getHeader("Authorization");
        if(token==null){
            return ServerResponse.createByErrorMsg("token错误");
        }
        return experimentTypeService.selectById(id);
    }

    /**
     * 根据id修改实验类别
     */
    @RequestMapping(value = "/update",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<String> update(ExperimentType experimentType,HttpServletRequest request){
        String token = request.getHeader("Authorization");
        if(token==null){
            return ServerResponse.createByErrorMsg("token错误");
        }
        return experimentTypeService.update(experimentType);
    }
}
