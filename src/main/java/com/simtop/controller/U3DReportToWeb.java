package com.simtop.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.simtop.common.ServerResponse;
import com.simtop.dao.ExperimentDao;
import com.simtop.interceptor.ExperimentResultService;
import com.simtop.pojo.ExperimentRecord;
import com.simtop.pojo.ExperimentResult;
import com.simtop.pojo.User;
import com.simtop.service.ExperimentRecordService;
import com.simtop.util.JwtUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * 实验报告模块
 */
@Controller
@RequestMapping("/u3d/report")
@CrossOrigin
public class U3DReportToWeb {
    private static final Logger logger = LoggerFactory.getLogger(U3DExpRecordController.class);

    @Autowired
    private ExperimentResultService experimentResultService;

    @Autowired
    private ExperimentRecordService experimentRecordService;

    @Autowired
    private ExperimentDao experimentDao;
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
        System.out.println("获取的的报告数据为："+result);
        result.setBzsEfficiency(Double.parseDouble(String.format("%.2f",result.getBzsEfficiency())));
        result.setZbsEfficiency(Double.parseDouble(String.format("%.2f",result.getZbsEfficiency())));
        result.setZqsEfficiency(Double.parseDouble(String.format("%.2f",result.getZqsEfficiency())));
        System.out.println("处理后获取的报告数据为："+result);
        String token = request.getHeader("Authorization");
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User u = JwtUtil.unsign(jwt,User.class);
        if(u == null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        return experimentResultService.add(result);
    }

    /**
     * 给front提供的数据接口
     * 同一个userId、experimentMethod、不同实验次数experimentTimes的数据
     */
    @RequestMapping(value = "/findByExpTimes",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<List<ExperimentResult>> findByExperimentTimes(ExperimentResult result, HttpServletRequest request){
        String token = request.getHeader("Authorization");
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User u = JwtUtil.unsign(jwt,User.class);
        if(u == null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        return experimentResultService.findByExperimentTimes(result);
    }

    /**
     * 报告模块
     * 根据实验id显示生成的报告
     */
    @RequestMapping(value = "/showReport",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<PageInfo<ExperimentRecord>> showReport(ExperimentRecord record,HttpServletRequest request,Integer pageNum,Integer pageSize){
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
        if(u.getRoleId()==1){
            // todo 管理员能够查询所有的已出报告
            // {todo} important 管理员不能够多参数查询 2019年9月6日09:34:34
            List<ExperimentRecord> experimentRecordList = experimentRecordService.findByParams(record);
            PageInfo<ExperimentRecord> pageInfo = new PageInfo<>(experimentRecordList);
            return ServerResponse.createBySuccess(pageInfo);
        }
        // todo 关联查询报告表和实验记录表显示已经出报告的数据
        if(u.getRoleId()==2){
            // todo 教师 查看自己实验编码下的实验记录 2019年9月5日14:16:47  待解决多参数查询
            if("".equals(record.getUsername())&&"".equals(record.getExperimentName())&&"".equals(record.getExperimentCode()) ){
                //默认显示老师课程下面的已出报告数据
                String username = u.getUsername();//教师姓名
                // 获取所有的实验编码
                List list = experimentDao.findExpCodeByUsername(username);
                //查询该编码对应的所有实验记录
                List<ExperimentRecord> experimentRecordList = experimentRecordService.selectByExperimentId(list);
                PageInfo<ExperimentRecord> pageInfo = new PageInfo<>(experimentRecordList);
                return ServerResponse.createBySuccess(pageInfo);
            }else{
                //根据参数进行查询实验报告
                List<ExperimentRecord> experimentRecordList = experimentRecordService.findByParams(record);
                PageInfo<ExperimentRecord> pageInfo = new PageInfo<>(experimentRecordList);
                return ServerResponse.createBySuccess(pageInfo);
            }
        }
        if(u.getRoleId()==3){
            // todo 专家 只能查看所有已出报告列表(没有出成绩的不显示)
            List<ExperimentRecord> experimentRecordList = experimentRecordService.findAll();
            PageInfo<ExperimentRecord> pageInfo = new PageInfo<>(experimentRecordList);
            return ServerResponse.createBySuccess(pageInfo);
        }
        if(u.getRoleId()==4){
            // todo 学生 只能看到自己的实验报告
            List<ExperimentRecord> experimentRecordList = experimentRecordService.findStuByUsername(u.getUsername());
            PageInfo<ExperimentRecord> pageInfo = new PageInfo<>(experimentRecordList);
            return ServerResponse.createBySuccess(pageInfo);
        }
        return ServerResponse.createByErrorMsg("该用户不具备查询权限，请联系管理员开放");
    }

    /**
     * 2019年8月27日09:27:15 根据实验id删除报告信息
     * 报告模块，试验记录信息 也被删除
     */
    @RequestMapping(value = "/deleteByExpId",method = RequestMethod.DELETE)
    @ResponseBody
    public ServerResponse<String> deleteReportByExpId(HttpServletRequest request,Integer id){
        String token = request.getHeader("Authorization");
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User u = JwtUtil.unsign(jwt,User.class);
        if(u == null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        return experimentRecordService.deleteById(id);
    }


    /**
     * 实验记录查询
     * @param id
     * @param request
     * @return
     */
//    @RequestMapping(value = "/findById",method = RequestMethod.GET)
//    @ResponseBody
//    public ServerResponse<ExperimentRecord> findById(Integer id, HttpServletRequest request){
//        //todo
//        String token = request.getHeader("Authorization");
//        String jwt = token.substring(token.lastIndexOf(" ")+1);
//        User u = JwtUtil.unsign(jwt,User.class);
//        if(u == null){
//            return ServerResponse.createByErrorMsg("token无效");
//        }
//        return experimentRecordService.findById(id);
//    }

    /**
     * 根据用户姓名、实验编码、实验名称查询试验记录
     *  管理员专家
     */
    @RequestMapping(value = "/findByParams",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<PageInfo<ExperimentRecord>> findByParams(HttpServletRequest request, ExperimentRecord record, Integer pageNum, Integer pageSize){
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

        if(user.getRoleId()==2){
            // todo 教师 查看自己实验编码下的实验记录 2019年9月5日14:16:47
            String username = user.getUsername();//教师姓名
            // 获取所有的实验编码
            List list = experimentDao.findExpCodeByUsername(username);
            //查询该编码对应的所有实验记录
            List<ExperimentRecord> experimentRecordList = experimentRecordService.selectByExperimentId(list);
            PageInfo<ExperimentRecord> pageInfo = new PageInfo<>(experimentRecordList);
            return ServerResponse.createBySuccess(pageInfo);
        }
        List<ExperimentRecord> experimentRecordList = experimentRecordService.findByParams(record);
        PageInfo<ExperimentRecord> pageInfo = new PageInfo<ExperimentRecord>(experimentRecordList);
        return ServerResponse.createBySuccess(pageInfo);
    }

}
