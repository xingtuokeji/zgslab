package com.simtop.service.impl;

import com.simtop.common.ServerResponse;
import com.simtop.dao.ExperimentTypeDao;
import com.simtop.pojo.Experiment;
import com.simtop.pojo.ExperimentType;
import com.simtop.service.ExperimentTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ExperimentTypeServiceImpl implements ExperimentTypeService {

    @Autowired
    private ExperimentTypeDao experimentTypeDao;

    @Override
    public ServerResponse<String> add(Experiment experiment) {
        int resultCount = experimentTypeDao.insertExperimentType(experiment);
        if(resultCount != 1){
            return ServerResponse.createByErrorMsg("新增实验类别失败");
        }
        return ServerResponse.createBySuccessMsg("新增实验类别成功");
    }

    @Override
    public ServerResponse<String> deleteById(Integer id) {
        int resultCount = experimentTypeDao.deleteById(id);
        if(resultCount != 1){
            return ServerResponse.createByErrorMsg("删除失败");
        }
        return ServerResponse.createBySuccessMsg("删除成功");
    }

    @Override
    public ServerResponse<List<ExperimentType>> findAll() {
        List<ExperimentType> experimentTypeList = experimentTypeDao.selectAll();
        return ServerResponse.createBySuccess(experimentTypeList);
    }

    @Override
    public ServerResponse<ExperimentType> selectById(Integer id) {
        ExperimentType experimentType = experimentTypeDao.selectById(id);
        if(experimentType==null){
            return ServerResponse.createByErrorMsg("查询数据失败");
        }
        return ServerResponse.createBySuccess(experimentType);
    }

    @Override
    public ServerResponse<String> update(ExperimentType experimentType) {
        int resultCount = experimentTypeDao.update(experimentType);
        if(resultCount!=1){
            return ServerResponse.createByErrorMsg("更新实验类别失败");
        }
        return ServerResponse.createBySuccessMsg("更新成功");
    }
}
