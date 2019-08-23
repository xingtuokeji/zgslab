package com.simtop.service;

import com.simtop.common.ServerResponse;
import com.simtop.pojo.Suggest;

import java.util.List;

public interface SuggestService {
    ServerResponse<String> add(Suggest suggest);

    List<Suggest> findAll();

    ServerResponse<String> deleteById(Integer id);

    ServerResponse<String> updateById(Suggest suggest);

    ServerResponse<Suggest> findById(Integer id);

    int checkUserId(Integer id);

    ServerResponse<Double> countMark();

}
