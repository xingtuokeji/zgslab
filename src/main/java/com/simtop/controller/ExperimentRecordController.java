package com.simtop.controller;

import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.simtop.common.Key;
import com.simtop.common.ServerResponse;
import com.simtop.dao.ExperimentDao;
import com.simtop.dao.ExperimentRecordDao;
import com.simtop.pojo.Experiment;
import com.simtop.pojo.ExperimentRecord;
import com.simtop.pojo.User;
import com.simtop.service.ExperimentRecordService;
import com.simtop.util.HttpUtil;
import com.simtop.util.JwtUtil;
import com.simtop.util.TestJWT;
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

    @Autowired
    private ExperimentDao experimentDao;

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
        // todo 推送实验状态给ilab平台
        String username = u.getLoginName();
//        String json = "{\"username\":"+username+",\"issuerId\":100400}";
        JSONObject param=new JSONObject();
        param.put("username",username);
        param.put("issuerId", Key.issuerId);
        String json=param.toString();
        System.out.println(json);
        try {
            String xjwt = TestJWT.encrty(json);
            System.out.println(xjwt);

            /**
             * 测试平台的url
             */
            // HttpUtil.loadJSON("http://202.205.145.156:8017/third/api/test/result/upload?xjwt="+xjwt);

            /**
             * 正式平台url
             */
            String code = HttpUtil.loadJSON("http://www.ilab-x.com/third/api/test/result/upload?xjwt="+xjwt);
            System.out.println("推送实验状态的状态码为==========="+code);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return experimentRecordService.add(record);
    }

    /**
     * 分页查询所有的实验主表记录
     *  todo 2019年9月5日11:44:52 前台调整接口路径url 其它不需要调整
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
        if(u.getRoleId()==4 || u.getRoleId()==5 || u.getRoleId()==6){
            //学生只能看到自己加入实验后的记录
            String username = u.getUsername();
            List<ExperimentRecord> experimentRecordList = experimentRecordService.findStuByUsername(username);
            PageInfo<ExperimentRecord> pageInfo = new PageInfo<>(experimentRecordList);
            return  ServerResponse.createBySuccess(pageInfo);
        }
        if(u.getRoleId()==3){
            //专家查看所有的记录
            System.out.println("这是专家【实验记录】");
            List<ExperimentRecord> experimentRecordList = experimentRecordService.findAll();
            PageInfo<ExperimentRecord> pageInfo = new PageInfo<>(experimentRecordList);
            return  ServerResponse.createBySuccess(pageInfo);
        }
        return  ServerResponse.createByErrorMsg("查询实验记录失败,请联系管理员");
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
        if(ObjectUtils.isEmpty(pageNum)){
            pageNum = 1;
        }
        PageHelper.startPage(pageNum,pageSize);
        if(user.getRoleId()==1){
            //管理员查看、多参数查询所有的实验记录
            List<ExperimentRecord> experimentRecordList = experimentRecordService.findByParams(record);
            PageInfo<ExperimentRecord> pageInfo = new PageInfo<ExperimentRecord>(experimentRecordList);
            return ServerResponse.createBySuccess(pageInfo);
        }
        if(user.getRoleId()==2){
            // todo 教师 查看自己实验编码下的实验记录 2019年9月5日14:16:47
            if("".equals(record.getUsername())&&"".equals(record.getExperimentName())&&"".equals(record.getExperimentCode())){
                String username = user.getUsername();//教师姓名
                // 获取所有的实验编码
                List list = experimentDao.findExpCodeByUsername(username);
                //查询该编码对应的所有实验记录
                List<ExperimentRecord> experimentRecordList = experimentRecordService.findByExpList(list);
                PageInfo<ExperimentRecord> pageInfo = new PageInfo<ExperimentRecord>(experimentRecordList);
                return ServerResponse.createBySuccess(pageInfo);
            }else{
                List<ExperimentRecord> experimentRecordList = experimentRecordService.findByParams(record);
                PageInfo<ExperimentRecord> pageInfo = new PageInfo<ExperimentRecord>(experimentRecordList);
                return ServerResponse.createBySuccess(pageInfo);
            }
        }
        return ServerResponse.createByErrorMsg("查询试验记录失败，请联系管理员");
    }
}
