package com.simtop.controller;

import com.simtop.common.ServerResponse;
import com.simtop.pojo.Comment;
import com.simtop.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/comment")
/**
 * 问题答复控制器
 */
public class CommentController {

    @Autowired
    private CommentService commentService;

    /**
     * 添加评论
     * @param request
     * @param comment
     * @return
     */
    @RequestMapping(value = "/add",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<String> addComment(HttpServletRequest request, Comment comment){
        String token = request.getHeader("Authorization");
        if(token == null){
            return ServerResponse.createByErrorMsg("token错误");
        }
        return commentService.add(comment);
    }

    /**
     * 根据评论id删除评论
     * @param id
     * @param request
     * @return
     */
    @RequestMapping(value = "/deleteById",method = RequestMethod.DELETE)
    @ResponseBody
    public ServerResponse<String> deleteById(Integer id,HttpServletRequest request){
        String token = request.getHeader("Authorization");
        if(token == null){
            return ServerResponse.createByErrorMsg("token错误");
        }
        return commentService.deleteById(id);
    }


}
