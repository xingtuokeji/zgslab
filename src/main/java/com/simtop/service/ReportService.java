package com.simtop.service;

import com.simtop.common.ServerResponse;
import com.simtop.pojo.Report;

public interface ReportService {
    ServerResponse<Report> selectByReportHeader(Integer experimentId);
}
