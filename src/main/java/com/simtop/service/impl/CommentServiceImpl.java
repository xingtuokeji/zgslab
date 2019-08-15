package com.simtop.service.impl;

import com.simtop.common.ServerResponse;
import com.simtop.dao.CommentDao;
import com.simtop.pojo.Comment;
import com.simtop.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@Transactional
public class CommentServiceImpl implements CommentService {

    @Autowired
    private CommentDao commentDao;


    @Override
    public ServerResponse<String> add(Comment comment) {
        int resultCount = commentDao.insert(comment);
        if(resultCount != 1){
            return ServerResponse.createByErrorMsg("评论失败");
        }
        return ServerResponse.createBySuccessMsg("评论成功");
    }

    @Override
    public ServerResponse<String> deleteById(Integer id) {
        int resultCount = commentDao.deleteById(id);
        if(resultCount != 1){
            return ServerResponse.createByErrorMsg("删除评论失败");
        }
        return ServerResponse.createBySuccessMsg("删除评论成功");
    }
}
