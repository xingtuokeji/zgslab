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

    List<ExperimentRecord> selectByExperimentId(List list);

    List<ExperimentRecord> findByParams(ExperimentRecord record);

    List<ExperimentRecord> findAll(String experimentName);

    List<ExperimentRecord> findByExpList(List list);

    List<ExperimentRecord> selectByExperimentId1();

    List<ExperimentRecord> findStuByUsername(String username);
}
