package com.simtop.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.simtop.common.ServerResponse;
import com.simtop.dao.ExperimentRecordDao;
import com.simtop.pojo.Experiment;
import com.simtop.pojo.ExperimentRecord;
import com.simtop.pojo.User;
import com.simtop.service.ExperimentRecordService;
import com.simtop.util.JwtUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 *
 * 实验记录控制组件Controller 主表
 */
@Controller
@RequestMapping(value = "/experimentRecord")
@CrossOrigin
public class ExperimentRecordController {

    @Autowired
    private ExperimentRecordService experimentRecordService;

    /**
     * 实验记录查询
     * @param id
     * @param request
     * @return
     */

    /**
     * 新增一条实验记录 (加入实验编码)
     * 区分组织形式（班级/个人）、实验类型（集中/分散） 通过参数来区分
     * @param request
     * @param record
     * @return
     */
    @RequestMapping(value = "/add",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<Integer> add(HttpServletRequest request,@RequestBody ExperimentRecord record){
        // System.out.println(record);
        String token = request.getHeader("Authorization");
        if(token == null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User u = JwtUtil.unsign(jwt,User.class);
        if(u == null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        return experimentRecordService.add(record);
    }

    /**
     * 分页查询所有的实验主表记录
     * @param request
     * @return
     */
    @RequestMapping(value = "/findAll",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<PageInfo<ExperimentRecord>> findAll(HttpServletRequest request,Integer pageNum,Integer pageSize){
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
        List<ExperimentRecord> experimentRecordList = experimentRecordService.findAll();
        PageInfo<ExperimentRecord> pageInfo = new PageInfo<>(experimentRecordList);
        return  ServerResponse.createBySuccess(pageInfo);
    }

    /**
     * 根据id删除一条实验记录
     * @return
     */
    @RequestMapping(value = "/deleteById",method = RequestMethod.DELETE)
    @ResponseBody
    public ServerResponse<String> deleteById(HttpServletRequest request,Integer id){
        String token = request.getHeader("Authorization");
        if(token == null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User u = JwtUtil.unsign(jwt,User.class);
        if(u == null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        return experimentRecordService.deleteById(id);
    }

    /**
     * 统计总的实验次数
     */
    @GetMapping("/expAcct")
    @ResponseBody
    public ServerResponse<Integer> experimentAccount(HttpServletRequest request){
        System.out.println("这个方法不能跨域访问。。。。。。。");
        String token = request.getHeader("Authorization");
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User u = JwtUtil.unsign(jwt,User.class);
        if(u == null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        return experimentRecordService.accountExp();
    }

    /**
     * 统计总的实验时间，单位是秒s
     */
    @RequestMapping(value = "/expTime",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<Integer> totalExpCount(HttpServletRequest request) {
//        System.out.println("这个方法可以跨域访问/////");
        String token = request.getHeader("Authorization");
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User u = JwtUtil.unsign(jwt,User.class);
        if(u == null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        return experimentRecordService.countTotalExpTime();
    }

    /**
     * 根据用户姓名、实验编码、实验名称查询试验记录
     */
    @RequestMapping(value = "/findByParams",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<PageInfo<ExperimentRecord>> findByParams(HttpServletRequest request,ExperimentRecord record,Integer pageNum,Integer pageSize){
        String token = request.getHeader("Authorization");
        if(token == null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User user = JwtUtil.unsign(jwt,User.class);
        if(user == null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        List<ExperimentRecord> experimentRecordList = experimentRecordService.findByParams(record);
        if(ObjectUtils.isEmpty(pageNum)){
            pageNum = 1;
        }
        PageHelper.startPage(pageNum,pageSize);
        PageInfo<ExperimentRecord> pageInfo = new PageInfo<ExperimentRecord>(experimentRecordList);
        return ServerResponse.createBySuccess(pageInfo);
    }
}
