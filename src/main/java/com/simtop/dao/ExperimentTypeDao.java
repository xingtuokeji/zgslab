package com.simtop.dao;

import com.simtop.pojo.Experiment;
import com.simtop.pojo.ExperimentType;

import java.util.List;

public interface ExperimentTypeDao {
    int insertExperimentType(Experiment experiment);

    int deleteById(Integer id);

    List<ExperimentType> selectAll();

    ExperimentType selectById(Integer id);

    int update(ExperimentType experimentType);

}
