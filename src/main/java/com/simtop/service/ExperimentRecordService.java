package com.simtop.service;

import com.simtop.common.ServerResponse;
import com.simtop.pojo.ExperimentRecord;

import java.util.List;

public interface ExperimentRecordService {
    ServerResponse<ExperimentRecord> findById(Integer id);

    ServerResponse<String> add(ExperimentRecord record);

    List<ExperimentRecord> findAll();

    ServerResponse<String> deleteById(Integer id);

    ServerResponse<Integer> accountExp();

    ServerResponse<Integer> countTotalExpTime();
}
