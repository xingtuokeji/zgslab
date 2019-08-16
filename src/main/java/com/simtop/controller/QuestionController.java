package com.simtop.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.simtop.common.ServerResponse;
import com.simtop.pojo.Question;
import com.simtop.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 实验问题
 */
@Controller
@RequestMapping("/question")
public class QuestionController {

    @Autowired
    private QuestionService questionService;

    /**
     * 添加问题
     * @param question
     * @param request
     * @return
     */
    @RequestMapping(value = "/add",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<String> addQuestion(Question question, HttpServletRequest request){
        String token = request.getHeader("Authorization");
        if(token==null){
            return ServerResponse.createByErrorMsg("token错误");
        }
        return questionService.add(question);
    }

    /**
     * 默认分页显示所有的问题
     */
    @RequestMapping(value = "/findAll",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<PageInfo<Question>> findAll(HttpServletRequest request,Integer pageNum,Integer pageSize){
        String token = request.getHeader("Authorization");
        if(token==null){
            return ServerResponse.createByErrorMsg("token错误");
        }
        if(ObjectUtils.isEmpty(pageNum)){
            pageNum = 1;
        }
        PageHelper.startPage(pageNum,pageSize);
        List<Question> questionList = questionService.findAll();
        PageInfo<Question> pageInfo = new PageInfo<>(questionList);
        return ServerResponse.createBySuccess(pageInfo);
    }

    /**
     * 点击查看显示详情
     */
    @RequestMapping(value = "/findById",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<Question> findByQuestionId(HttpServletRequest request,Integer id){
        String token = request.getHeader("Authorization");
        if(token==null){
            return ServerResponse.createByErrorMsg("token错误");
        }
        return questionService.findById(id);
    }

    /**
     * 点击查看，根据问题id显示所有信息（评论+问题）
     */
    @RequestMapping(value = "/findAllById",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<List<Question>> findAll(HttpServletRequest request,Integer id){
        String token = request.getHeader("Authorization");
        if(token==null){
            return ServerResponse.createByErrorMsg("token错误");
        }
        return questionService.findAllById(id);
    }

    /**
     * 多参数查询问题 姓名、学校、实验问题 todo 分页功能 已完成！
     */
    @RequestMapping(value = "/findByParams",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<PageInfo<Question>> findByParams(Question question,HttpServletRequest request,Integer pageSize,Integer pageNum){
        String token = request.getHeader("Authorization");
        if(token == null){
            return ServerResponse.createByErrorMsg("token错误");
        }
        if(ObjectUtils.isEmpty(pageNum)){
            pageNum = 1;
        }
        PageHelper.startPage(pageNum,pageSize);
        PageInfo<Question> pageInfo = new PageInfo<>( questionService.findByParams(question));
        return ServerResponse.createBySuccess(pageInfo);
    }

    /**
     * 根据问题id删除问题
     */
    @RequestMapping(value = "/deleteById",method = RequestMethod.DELETE)
    @ResponseBody
    public ServerResponse<String> deleteByQuestionId(Integer id,HttpServletRequest request){
        String token = request.getHeader("Authorization");
        if(token==null){
            return ServerResponse.createByErrorMsg("token错误");
        }
        return questionService.deleteById(id);
    }

    /**
     * 根据问题id修改问题内容
     */
    @RequestMapping(value = "/updateById",method = RequestMethod.PUT)
    @ResponseBody
    public ServerResponse<String> updateById(Question question,HttpServletRequest request){
        String token = request.getHeader("Authorization");
        if(token==null){
            return ServerResponse.createByErrorMsg("token错误");
        }
        return questionService.updateById(question);
    }

}
