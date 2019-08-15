package com.simtop.service.impl;

import com.simtop.common.ServerResponse;
import com.simtop.dao.ExperimentRecordDao;
import com.simtop.pojo.ExperimentRecord;
import com.simtop.service.ExperimentRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ExperimentRecordServiceImpl implements ExperimentRecordService {


    @Autowired
    private ExperimentRecordDao experimentRecordDao;

    @Override
    public ServerResponse<ExperimentRecord> findById(Integer id) {
        ExperimentRecord record = experimentRecordDao.findById(id);
        return ServerResponse.createBySuccess(record);
    }

    @Override
    public ServerResponse<String> add(ExperimentRecord record) {
        int resultCount = experimentRecordDao.insert(record);
        if(resultCount != 1){
            return ServerResponse.createByErrorMsg("新增实验记录失败");
        }
        return ServerResponse.createBySuccessMsg("新增实验记录成功");
    }

    @Override
    public List<ExperimentRecord> findAll() {
        List<ExperimentRecord> experimentRecordList = experimentRecordDao.selectAll();
        return experimentRecordList;
    }

    @Override
    public ServerResponse<String> deleteById(Integer id) {
        int resultCount = experimentRecordDao.deleteById(id);
        if(resultCount != 1){
            return ServerResponse.createByErrorMsg("删除实验记录失败");
        }
        return ServerResponse.createBySuccessMsg("删除实验记录成功");
    }
}
