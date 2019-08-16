package com.simtop.service;

import com.simtop.common.ServerResponse;
import com.simtop.pojo.Echarts;
import com.simtop.pojo.Echarts2;
import com.simtop.pojo.Echarts3;

import java.util.List;

public interface EchartsService {
    ServerResponse<List<Echarts>> selectEightProUser();

    ServerResponse<List<Echarts2>> selectRoleUser();

    ServerResponse<Echarts3> selectScoreUser();
}
