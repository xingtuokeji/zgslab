package com.simtop.service.impl;


import com.simtop.common.ServerResponse;
import com.simtop.dao.ExperimentDao;
import com.simtop.pojo.Experiment;
import com.simtop.service.ExperimentService;
import com.simtop.util.ExperimentCodeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.concurrent.TimeUnit;


@Service
@Transactional
public class ExperimentServiceImpl implements ExperimentService {

    @Autowired
    private RedisTemplate redisTemplate;

    @Autowired
    private ExperimentDao experimentDao;

    @Override
    public ServerResponse<String> add(Experiment experiment) {
        String expCode = redisTemplate.boundValueOps("expCode").get().toString();
        if(expCode.equals("")){
            return ServerResponse.createByErrorMsg("实验码已过期，请重新生成");
        }
        experiment.setExperimentCode(expCode);
        int resultCount = experimentDao.insert(experiment);
        if(resultCount != 1){
            return ServerResponse.createByErrorMsg("新增实验失败");
        }
        return ServerResponse.createBySuccessMsg("新增实验成功");


    }

    @Override
    public ServerResponse<String> generateExpCode() {
        //产生实验编码
        String expCode = ExperimentCodeUtil.generateExpCode();
        //如果编码唯一就返回
        int resultCount = experimentDao.checkExpCode(expCode);
        if(resultCount==0){
            //保存在redis中 10分钟
            redisTemplate.boundValueOps("expCode").set(expCode,10, TimeUnit.MINUTES);
            return ServerResponse.createBySuccess(expCode);
        }
        return ServerResponse.createByErrorMsg("验证码重复，请重新获取");
    }

    @Override
    public ServerResponse<List<Experiment>> findAll() {
        List<Experiment> experimentList = experimentDao.selectAll();
        return ServerResponse.createBySuccess(experimentList);
    }

    @Override
    public ServerResponse<String> deleteById(Integer id) {
        int resultCount = experimentDao.deleteById(id);
        if(resultCount!=1){
            return ServerResponse.createByErrorMsg("删除实验数据失败");
        }
        return ServerResponse.createBySuccessMsg("删除实验数据成功");
    }

    @Override
    public ServerResponse<List<Experiment>> findByParams(Experiment experiment) {
        List<Experiment> experimentList = experimentDao.findByParams(experiment);
        return ServerResponse.createBySuccess(experimentList);
    }

    @Override
    public ServerResponse<Experiment> findById(Integer id) {
        Experiment experiment = experimentDao.findById(id);
        return ServerResponse.createBySuccess(experiment);
    }
}
