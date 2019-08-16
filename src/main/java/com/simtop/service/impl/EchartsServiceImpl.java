package com.simtop.service.impl;

import com.simtop.common.ServerResponse;
import com.simtop.dao.EchartsDao;
import com.simtop.pojo.Echarts;
import com.simtop.pojo.Echarts2;
import com.simtop.pojo.Echarts3;
import com.simtop.service.EchartsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class EchartsServiceImpl implements EchartsService {

    @Autowired
    private EchartsDao echartsDao;

    @Override
    public ServerResponse<List<Echarts>> selectEightProUser() {
        List list =  echartsDao.selectEightProUser();
        return ServerResponse.createBySuccess(list);
    }

    @Override
    public ServerResponse<List<Echarts2>> selectRoleUser() {
        List<Echarts2> echartsList = echartsDao.selectRoleUser();
        return ServerResponse.createBySuccess(echartsList);
    }

    @Override
    public ServerResponse<Echarts3> selectScoreUser() {
        return ServerResponse.createBySuccess(echartsDao.selectScoreUser());
    }
}
