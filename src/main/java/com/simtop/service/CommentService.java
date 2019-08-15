package com.simtop.service;

import com.simtop.common.ServerResponse;
import com.simtop.pojo.Comment;


public interface CommentService {
    ServerResponse<String> add(Comment comment);

    ServerResponse<String> deleteById(Integer id);
}
