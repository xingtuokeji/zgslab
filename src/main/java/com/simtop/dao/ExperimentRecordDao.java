package com.simtop.dao;

import com.simtop.pojo.ExperimentRecord;

import java.util.List;

public interface ExperimentRecordDao {

    int insert(ExperimentRecord record);

    List<ExperimentRecord> selectAll();

    int deleteById(Integer id);

    int queryExpNum();

    int selectTotalExpTime();

    int insertDispersionExp(ExperimentRecord record);

    List<ExperimentRecord> selectByExperimentId(List list);

    List<ExperimentRecord> selectByParams(ExperimentRecord record);

    List<ExperimentRecord> findByExperimentName(String experimentName);

    List<ExperimentRecord> findByExpList(List list);

    List<ExperimentRecord> selectByExperimentId1();

    List<ExperimentRecord> findStuByUsername(String username);
}
