package com.simtop.dao;


import com.simtop.pojo.Experiment;

import java.util.List;

public interface ExperimentDao {

    int checkExpCode(String expCode);

    int insert(Experiment experiment);

    List<Experiment> selectAll(String username);

    int deleteById(Integer id);

    List<Experiment> findByParams(Experiment experiment);

    Experiment findById(Integer id);

    int updateById(Experiment experiment);

    Experiment findByExperimentCode(String experimentCode);

    String findExpCodeByExpId(Integer id);

    List<Experiment> findAll();

    String selectExperimentNameByUserName(String username);

    List<String> findExpCodeByUsername(String username);
}
