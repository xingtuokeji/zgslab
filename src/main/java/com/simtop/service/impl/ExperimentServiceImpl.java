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

    //从token中获取 todo
    @Override
    public ServerResponse<String> add(Experiment experiment) {
        //生成一条实验课程之前，需要生成实验编码 todo 空指针异常
        try{
            String experimentCode = redisTemplate.boundValueOps("expCode").get().toString();
            if(experimentCode == null || "".equals(experimentCode)){
                return ServerResponse.createByErrorMsg("请生成实验编码");
            }
            experiment.setExperimentCode(experimentCode);
        }catch (NullPointerException e){
            return ServerResponse.createByErrorMsg("请生成实验编码");
        }
        int resultCount = experimentDao.insert(experiment);
        if(resultCount != 1){
            return ServerResponse.createByErrorMsg("新增实验失败");
        }
        return ServerResponse.createBySuccessMsg("新增实验成功");


    }

    /**
     * 生成实验编码
     * @return
     */
    @Override
    public ServerResponse<String> generateExpCode() {
        //产生实验编码
        String expCode = ExperimentCodeUtil.generateExpCode();
        //如果编码唯一就返回
        int resultCount = experimentDao.checkExpCode(expCode);
        if(resultCount==0){
            //保存在redis中 3分钟
            redisTemplate.boundValueOps("expCode").set(expCode,3, TimeUnit.MINUTES);
            return ServerResponse.createBySuccess(expCode);
        }
        return ServerResponse.createByErrorMsg("验证码重复，请重新获取");
    }

    @Override
    public List<Experiment> findAll(String username) {
        List<Experiment> experimentList = experimentDao.selectAll(username);
        return experimentList;
    }

    @Override
    public ServerResponse<String> deleteById(Integer id) {
        int resultCount = experimentDao.deleteById(id);
        if(resultCount!=1){
            return ServerResponse.createByErrorMsg("删除实验数据失败");
        }
        return ServerResponse.createBySuccessMsg("删除实验数据成功");
    }


    //todo
    @Override
    public List<Experiment> findByParams(Experiment experiment) {
        List<Experiment> experimentList = experimentDao.findByParams(experiment);
        return experimentList;
    }

    @Override
    public ServerResponse<Experiment> findById(Integer id) {
        Experiment experiment = experimentDao.findById(id);
        return ServerResponse.createBySuccess(experiment);
    }

    /**
     * 更新实验课程信息
     * @param experiment
     * @return
     */
    @Override
    public ServerResponse<String> updateById(Experiment experiment) {
        //判断实验编码是否存在
        int resultCount = experimentDao.updateById(experiment);
        if(resultCount != 1){
            return ServerResponse.createByErrorMsg("修改实验课程信息失败");
        }
        return ServerResponse.createBySuccessMsg("修改实验课程信息成功");
    }

    @Override
    public ServerResponse<Experiment> findByExperimentCode(String experimentCode) {
        Experiment experiment = experimentDao.findByExperimentCode(experimentCode);
        return ServerResponse.createBySuccess(experiment);
    }

    @Override
    public List<Experiment> findAll() {
        List<Experiment> experimentList = experimentDao.findAll();
        return experimentList;
    }
}
