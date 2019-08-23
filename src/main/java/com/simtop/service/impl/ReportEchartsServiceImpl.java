package com.simtop.service.impl;

import com.simtop.common.ServerResponse;
import com.simtop.dao.ReportEchartsDao;
import com.simtop.pojo.ExperimentResult;
import com.simtop.service.ReportEchartsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
@Transactional
public class ReportEchartsServiceImpl implements ReportEchartsService {

    @Autowired
    private ReportEchartsDao reportEchartsDao;


    @Override
    public ServerResponse<List<ExperimentResult>> showTables(Integer userId, Integer experimentTimes, Integer experimentId) {
        List<ExperimentResult> reportEcharts = reportEchartsDao.selectResults(userId,experimentTimes,experimentId);
        return ServerResponse.createBySuccess(reportEcharts);
    }
}
