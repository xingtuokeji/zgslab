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
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * 实验课程管理 1、生成课程码 2、添加课程
 */
@Controller
@RequestMapping("/experiment")
@CrossOrigin
public class ExperimentController {
    private static final Logger logger = LoggerFactory.getLogger(ExperimentController.class);

    @Autowired
    private ExperimentService experimentService;


    /**
     * 新增课程记录之前需要先产生6位随机实验码，不重复，先保存在redis内存中10分钟
     * @param request
     * @return
     */
    @RequestMapping(value = "/generateExpCode",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<String> generateExpCode(HttpServletRequest request){
        String token = request.getHeader("Authorization");
        if(token == null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User u = JwtUtil.unsign(jwt,User.class);
        if(u == null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        return experimentService.generateExpCode();
    }

    /**
     * 新增一条实验课程(管理员、教师有权限新增)
     * @param experiment
     * @param request
     * @return
     */
    @RequestMapping(value = "/add",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<String> addExperiment(@RequestBody Experiment experiment, HttpServletRequest request){
          Date experimentEndTime = experiment.getExperimentEndTime();
          if(experimentEndTime.getTime()<new Date().getTime()){
              return ServerResponse.createByErrorMsg("实验截止时间不能小于当前时间");
          }
        // todo
//        //解决body中文参数问题 实验名称、课程名称
//        String experimentName = new String(request.getParameter("experimentName").getBytes("ISO-8859-1"),"UTF-8");
//        String courseName = new String(request.getParameter("courseName").getBytes("ISO-8859-1"),"UTF-8");
//        String username = new String(request.getParameter("username").getBytes("ISO-8859-1"),"UTF-8");
//        //todo 时间类型数据转化 important
//        System.out.println(experiment.getExperimentStartTime());
//        experiment.setExperimentName(experimentName);
//        experiment.setCourseName(courseName);
//        experiment.setUsername(username);
        String token = request.getHeader("Authorization");// 不传 会报出空指针一场
        if(token == null){
            return ServerResponse. createByErrorMsg("token无效");
        }
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User u = JwtUtil.unsign(jwt,User.class);
        if(u == null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        if(u.getRoleId()==1||u.getRoleId()==2){
            // todo 只有教师、管理员可以新增实验课程
            return experimentService.add(experiment);
        }
        return ServerResponse.createByErrorMsg("无权限新增实验课程,请联系管理员");
    }

    /**
     * todo 实验记录默认显示需要前端修改接口url，其它不需要动 2019年9月5日11:30:04
     * 查询所有的实验课程信息 todo 分页 已解决
     * @param request
     * @return
     */
    @RequestMapping(value = "/findAll",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<PageInfo<Experiment>> findAll(HttpServletRequest request,Integer pageSize,Integer pageNum){
        String token = request.getHeader("Authorization");
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User u = JwtUtil.unsign(jwt,User.class);
        if(u == null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        if(ObjectUtils.isEmpty(pageNum)){
            pageNum = 1;
        }
        System.out.println("用户的角色id为："+u.getRoleId());
        PageHelper.startPage(pageNum,pageSize);
        //获取登录后用户的username
        /**
         *
         * 专家、学生查看和加入实验
         */
        if(u.getRoleId()==3 || u.getRoleId()==4 || u.getRoleId()==5 || u.getRoleId()==6){
            List<Experiment> experimentList = experimentService.findAll();
            PageInfo<Experiment> pageInfo = new PageInfo<>(experimentList);
            return ServerResponse.createBySuccess(pageInfo);
        }
        return ServerResponse.createByErrorMsg("实验课程模块查询错误，请联系管理员");
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
        String token = request.getHeader("Authorization");
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User u = JwtUtil.unsign(jwt,User.class);
        if(u == null){
            return ServerResponse.createByErrorMsg("token无效");
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
    public ServerResponse<PageInfo<Experiment>> findBySomeParams(HttpServletRequest request, Experiment experiment,Integer pageSize,Integer pageNum){
        String token = request.getHeader("Authorization");
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User u = JwtUtil.unsign(jwt,User.class);
        if(u == null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        if(ObjectUtils.isEmpty(pageNum)){
            pageNum = 1;
        }
        PageHelper.startPage(pageNum,pageSize);
        if(u.getRoleId()==2) {
            //todo 教师 查看自己的实验课程信息  + 多参数查询
            if ("".equals(experiment.getExperimentName()) && "".equals(experiment.getUsername()) && "".equals(experiment.getExperimentCode())) {
                System.out.println("查看教师自己新建的课程");
                //默认显示
                String username = u.getUsername();
                List<Experiment> experimentList = experimentService.findAll(username);
                PageInfo<Experiment> pageInfo = new PageInfo<>(experimentList);
                return ServerResponse.createBySuccess(pageInfo);
            } else {
                System.out.println("进入到多参数查询");
                //执行多参数查询功能
                List<Experiment> experimentList = experimentService.findByParams(experiment);
                PageInfo<Experiment> pageInfo = new PageInfo<>(experimentList);
                return ServerResponse.createBySuccess(pageInfo);
            }
        }
        //管理员
        if(u.getRoleId()==1){
            // todo 管理员 显示全部
                //执行多参数查询功能
                List<Experiment> experimentList = experimentService.findByParams(experiment);
                PageInfo<Experiment> pageInfo = new PageInfo<>(experimentList);
                return ServerResponse.createBySuccess(pageInfo);
        }
        //执行多参数查询功能
        List<Experiment> experimentList = experimentService.findByParams(experiment);
        PageInfo<Experiment> pageInfo = new PageInfo<>(experimentList);
        return ServerResponse.createBySuccess(pageInfo);
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
        String token = request.getHeader("Authorization");
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User u = JwtUtil.unsign(jwt,User.class);
        if(u == null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        return experimentService.findById(id);
    }

    /**
     * 修改实验课程信息(id、courseName)
     */
    @RequestMapping(value = "/updateById",method = RequestMethod.PUT)
    @ResponseBody
    public ServerResponse<String> updateById(HttpServletRequest request,@RequestBody Experiment experiment){
        String token = request.getHeader("Authorization");
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User u = JwtUtil.unsign(jwt,User.class);
        if(u == null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        return experimentService.updateById(experiment);
    }

    /**
     * 根据实验编码查询数据
     */
    @RequestMapping(value = "/findByExperimentCode",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<Experiment> findByExperimentCode(HttpServletRequest request,String experimentCode){
        String token = request.getHeader("Authorization");
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User u = JwtUtil.unsign(jwt,User.class);
        if(u == null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        return experimentService.findByExperimentCode(experimentCode);
    }
}
