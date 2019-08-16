package com.simtop.dao;

import com.simtop.pojo.Echarts;
import com.simtop.pojo.Echarts2;
import com.simtop.pojo.Echarts3;

import java.util.List;

public interface EchartsDao {
    List<Echarts> selectEightProUser();

    List<Echarts2> selectRoleUser();

    Echarts3 selectScoreUser();
}
