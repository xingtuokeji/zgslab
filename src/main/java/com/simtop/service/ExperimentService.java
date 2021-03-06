package com.simtop.service;

import com.simtop.common.ServerResponse;
import com.simtop.pojo.Experiment;

import java.util.List;

public interface ExperimentService {
    ServerResponse<String> add(Experiment experiment);

    ServerResponse<String> generateExpCode();

    List<Experiment> findAll(String username);

    ServerResponse<String> deleteById(Integer id);

    List<Experiment> findByParams(Experiment experiment);

    ServerResponse<Experiment> findById(Integer id);

    ServerResponse<String> updateById(Experiment experiment);

    ServerResponse<Experiment> findByExperimentCode(String experimentCode);

    List<Experiment> findAll();
}
