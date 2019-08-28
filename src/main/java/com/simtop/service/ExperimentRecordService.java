package com.simtop.service;

import com.simtop.common.ServerResponse;
import com.simtop.pojo.ExperimentRecord;
import com.simtop.pojo.U3DExpRecord;

import java.util.List;

public interface ExperimentRecordService {

    ServerResponse<Integer> add(ExperimentRecord record);

    List<ExperimentRecord> findAll();

    ServerResponse<String> deleteById(Integer id);

    ServerResponse<Integer> accountExp();

    ServerResponse<Integer> countTotalExpTime();

    List<ExperimentRecord> selectByExperimentId();

    List<ExperimentRecord> findByParams(ExperimentRecord record);
}
