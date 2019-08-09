package com.simtop.dao;


import com.simtop.pojo.Experiment;

import java.util.List;

public interface ExperimentDao {

    int checkExpCode(String expCode);

    int insert(Experiment experiment);

    List<Experiment> selectAll();

    int deleteById(Integer id);

    List<Experiment> findByParams(Experiment experiment);

    Experiment findById(Integer id);
}
