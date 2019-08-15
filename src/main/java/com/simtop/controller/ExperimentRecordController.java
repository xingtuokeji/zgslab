package com.simtop.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.simtop.common.ServerResponse;
import com.simtop.dao.ExperimentRecordDao;
import com.simtop.pojo.ExperimentRecord;
import com.simtop.service.ExperimentRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 *
 * 实验记录控制组件Controller 主表
 */
@Controller
@RequestMapping(value = "/experimentRecord")
public class ExperimentRecordController {

    @Autowired
    private ExperimentRecordService experimentRecordService;

    /**
     * 实验记录查询
     * @param id
     * @param request
     * @return
     */
    @RequestMapping(value = "/findById",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<ExperimentRecord> findById(Integer id, HttpServletRequest request){
        String token = request.getHeader("Authorization");
        System.out.println(token);
        if(token==null){
            return ServerResponse.createByErrorMsg("请传入登陆时候的token");
        }
        return experimentRecordService.findById(id);
    }

    /**
     * 新增一条实验记录
     * @param request
     * @param record
     * @return
     */
    @RequestMapping(value = "/add",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<String> add(HttpServletRequest request,ExperimentRecord record){
        String token = request.getHeader("Authorization");
        if(token==null){
            return ServerResponse.createByErrorMsg("请传入登陆时候的token");
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
        if(token==null){
            return ServerResponse.createByErrorMsg("请传入登陆时候的token");
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
        if(token==null){
            return ServerResponse.createByErrorMsg("请传入登陆时候的token");
        }
        return experimentRecordService.deleteById(id);
    }

}
