package com.simtop.service;

import com.simtop.common.ServerResponse;
import com.simtop.pojo.Question;

import java.util.List;

public interface QuestionService {
    ServerResponse<String> add(Question question);

    ServerResponse<Question> findById(Integer id);

    ServerResponse<List<Question>> findAllById(Integer id);

    List<Question> findByParams(Question question);

    ServerResponse<String> deleteById(Integer id);

    ServerResponse<String> updateById(Question question);
}
