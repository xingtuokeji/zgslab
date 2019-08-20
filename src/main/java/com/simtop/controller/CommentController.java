package com.simtop.controller;

import com.simtop.common.ServerResponse;
import com.simtop.pojo.Comment;
import com.simtop.pojo.User;
import com.simtop.service.CommentService;
import com.simtop.util.JwtUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/comment")
@CrossOrigin
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
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User u = JwtUtil.unsign(jwt,User.class);
        if(u == null){
            return ServerResponse.createByErrorMsg("token无效");
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
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User u = JwtUtil.unsign(jwt,User.class);
        if(u == null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        return commentService.deleteById(id);
    }


}
