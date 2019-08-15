package com.simtop.dao;

import com.simtop.pojo.Question;
import org.omg.CORBA.INTERNAL;

import java.util.List;

public interface QuestionDao {
    int insert(Question question);

    Question selectById(Integer id);

    List<Question> selectAll(Integer id);

    List<Question> selectByParams(Question question);

    int deleteById(Integer id);

    int update(Question question);
}
