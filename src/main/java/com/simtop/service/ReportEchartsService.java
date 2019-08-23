package com.simtop.service;

import com.simtop.common.ServerResponse;
import com.simtop.pojo.ExperimentResult;

import java.util.List;

public interface ReportEchartsService {

    ServerResponse<List<ExperimentResult>> showTables(Integer userId, Integer experimentTimes, Integer experimentId);
}
