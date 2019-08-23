package com.simtop.dao;

import com.simtop.pojo.Suggest;

import java.util.List;

public interface SuggestDao {
    int insert(Suggest suggest);

    List<Suggest> selectAll();

    int deleteById(Integer id);

    int updateById(Suggest suggest);

    Suggest selectById(Integer id);

    int checkUserId(Integer id);

    double countMark();
}
