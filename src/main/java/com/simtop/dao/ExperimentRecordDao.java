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

    List<ExperimentRecord> selectByExperimentId();

    List<ExperimentRecord> selectByParams(ExperimentRecord record);
}
