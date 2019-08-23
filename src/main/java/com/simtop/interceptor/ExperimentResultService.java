package com.simtop.interceptor;

import com.simtop.common.ServerResponse;
import com.simtop.pojo.ExperimentResult;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface ExperimentResultService {
    ServerResponse<String> add(ExperimentResult result);

    ServerResponse<List<ExperimentResult>> findByExperimentTimes(ExperimentResult result);
}
