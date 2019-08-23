package com.simtop.dao;

import com.simtop.pojo.Report;

public interface ReportDao {
    Report findByExperimentId(Integer experimentId);
}
