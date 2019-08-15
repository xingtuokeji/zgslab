package com.simtop.dao;

import com.simtop.pojo.Comment;

public interface CommentDao {
    int insert(Comment comment);

    int deleteById(Integer id);
}
