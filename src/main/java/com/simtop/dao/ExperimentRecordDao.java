package com.simtop.dao;

import com.simtop.pojo.ExperimentRecord;

import java.util.List;

public interface ExperimentRecordDao {
    ExperimentRecord findById(Integer id);

    int insert(ExperimentRecord record);

    List<ExperimentRecord> selectAll();

    int deleteById(Integer id);

}
