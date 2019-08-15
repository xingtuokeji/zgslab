package com.simtop.interceptor;

import com.simtop.common.ServerResponse;
import com.simtop.pojo.ExperimentResult;

public interface ExperimentResultService {
    ServerResponse<String> add(ExperimentResult result);
}
