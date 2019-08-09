package com.simtop.service;

import com.simtop.common.ServerResponse;
import com.simtop.pojo.Experiment;

import java.util.List;

public interface ExperimentService {
    ServerResponse<String> add(Experiment experiment);

    ServerResponse<String> generateExpCode();

    ServerResponse<List<Experiment>> findAll();

    ServerResponse<String> deleteById(Integer id);

    ServerResponse<List<Experiment>> findByParams(Experiment experiment);

    ServerResponse<Experiment> findById(Integer id);
}
