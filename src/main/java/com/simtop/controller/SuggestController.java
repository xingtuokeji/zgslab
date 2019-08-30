package com.simtop.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.simtop.common.ServerResponse;
import com.simtop.pojo.Suggest;
import com.simtop.pojo.User;
import com.simtop.service.SuggestService;
import com.simtop.util.JwtUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/suggest")
@CrossOrigin
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
    public ServerResponse<String> add(HttpServletRequest request, @RequestBody  Suggest suggest){
        String token = request.getHeader("Authorization");
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User u = JwtUtil.unsign(jwt,User.class);
        if(u == null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        // todo U3D >>
        //检查一下评星数据表中是否含有user_id,如果存在则返回提示信息
        if(suggestService.checkUserId(u.getId())==1){
            return ServerResponse.createByErrorMsg("用户已经评价，不可重复评价");
        }
        suggest.setUserId(u.getId());
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
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User u = JwtUtil.unsign(jwt,User.class);
        if(u == null){
            return ServerResponse.createByErrorMsg("token无效");
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
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User u = JwtUtil.unsign(jwt,User.class);
        if(u == null){
            return ServerResponse.createByErrorMsg("token无效");
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
    public ServerResponse<String> updateById(HttpServletRequest request,@RequestBody Suggest suggest){
        String token = request.getHeader("Authorization");
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User u = JwtUtil.unsign(jwt,User.class);
        if(u == null){
            return ServerResponse.createByErrorMsg("token无效");
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
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User u = JwtUtil.unsign(jwt,User.class);
        if(u == null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        return suggestService.findById(id);
    }
    /**
     * 统计综合评分
     */
    @RequestMapping(value = "/countMark",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<Double> countMark(HttpServletRequest request){
        String token = request.getHeader("Authorization");
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User u = JwtUtil.unsign(jwt,User.class);
        if(u == null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        return suggestService.countMark();
    }
}
