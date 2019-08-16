package com.simtop.service;

import com.github.pagehelper.PageInfo;
import com.simtop.common.ServerResponse;
import com.simtop.pojo.Experiment;

import java.util.List;

public interface ExperimentService {
    ServerResponse<String> add(Experiment experiment);

    ServerResponse<String> generateExpCode();

    List<Experiment> findAll();

    ServerResponse<String> deleteById(Integer id);

    ServerResponse<List<Experiment>> findByParams(Experiment experiment);

    ServerResponse<Experiment> findById(Integer id);

    ServerResponse<String> updateById(Experiment experiment);
}
