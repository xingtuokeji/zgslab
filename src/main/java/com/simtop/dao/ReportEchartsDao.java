package com.simtop.dao;

import com.simtop.pojo.ExperimentResult;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ReportEchartsDao {
    List<ExperimentResult> selectResults(@Param("userId") Integer userId, @Param("experimentTimes") Integer experimentTimes, @Param("experimentId") Integer experimentId);
}
