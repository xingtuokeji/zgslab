package com.simtop.dao;

import com.simtop.pojo.ExperimentResult;

import java.util.List;

public interface ExperimentResultDao {
    int insert(ExperimentResult result);

    List<ExperimentResult> findByExperimentTimes(ExperimentResult result);
}
