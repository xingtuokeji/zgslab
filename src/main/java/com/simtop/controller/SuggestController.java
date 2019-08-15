package com.simtop.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.simtop.common.ServerResponse;
import com.simtop.pojo.Suggest;
import com.simtop.service.SuggestService;
import net.sf.jsqlparser.schema.Server;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/suggest")
public class SuggestController {

    @Autowired
    private SuggestService suggestService;

    /**
     * 新增实验评级和建议记录
     * @param request
     * @param suggest
     * @return
     */
    @RequestMapping(value = "/add",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<String> add(HttpServletRequest request,Suggest suggest){
        String token = request.getHeader("Authorization");
        if(token == null){
            return ServerResponse.createByErrorMsg("token错误");
        }
        return suggestService.add(suggest);
    }

    /**
     * 分页查询所有的评价与建议信息
     * todo 默认查询、显示出4星以上的数据
     * @param request
     * @param pageNum
     * @param pageSize
     * @return
     */
    @RequestMapping(value = "/findAll",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<PageInfo<Suggest>> findAll(HttpServletRequest request, Integer pageNum, Integer pageSize){
        String token = request.getHeader("Authorization");
        if(token == null){
            return ServerResponse.createByErrorMsg("token错误");
        }
        if(ObjectUtils.isEmpty(pageNum)){
            pageNum = 1;
        }
        PageHelper.startPage(pageNum,pageSize);
        List<Suggest> suggestList = suggestService.findAll();
        PageInfo<Suggest> pageInfo = new PageInfo<>(suggestList);
        return ServerResponse.createBySuccess(pageInfo);
    }

    /**
     * 根据评价建议id删除信息
     * @param request
     * @param id
     * @return
     */
    @RequestMapping(value = "/deleteById",method = RequestMethod.DELETE)
    @ResponseBody
    public ServerResponse<String> deleteById(HttpServletRequest request,Integer id){
        String token = request.getHeader("Authorization");
        if(token == null){
            return ServerResponse.createByErrorMsg("token错误");
        }
        return suggestService.deleteById(id);
    }

    /**
     * 根据评价id修改评价信息
     * @param request
     * @param suggest
     * @return
     */
    @RequestMapping(value = "/updateById",method = RequestMethod.PUT)
    @ResponseBody
    public ServerResponse<String> updateById(HttpServletRequest request,Suggest suggest){
        String token = request.getHeader("Authorization");
        if(token == null){
            return ServerResponse.createByErrorMsg("token错误");
        }
        return suggestService.updateById(suggest);
    }

    /**\
     * 根据id查询评价信息
     * @param request
     * @param id
     * @return
     */
    @RequestMapping(value = "/findById",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<Suggest> findById(HttpServletRequest request,Integer id){
        String token = request.getHeader("Authorization");
        if(token == null){
            return ServerResponse.createByErrorMsg("token错误");
        }
        return suggestService.findById(id);
    }
}
