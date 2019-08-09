package com.simtop.service;

import com.simtop.common.ServerResponse;
import com.simtop.pojo.Experiment;
import com.simtop.pojo.ExperimentType;

import java.util.List;

public interface ExperimentTypeService {
    ServerResponse<String> add(Experiment experiment);

    ServerResponse<String> deleteById(Integer id);

    ServerResponse<List<ExperimentType>> findAll();

    ServerResponse<ExperimentType> selectById(Integer id);

    ServerResponse<String> update(ExperimentType experimentType);

}
