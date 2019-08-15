package com.simtop.service.impl;

import com.simtop.common.ServerResponse;
import com.simtop.dao.U3DExpRecordDao;
import com.simtop.pojo.U3DExpRecord;
import com.simtop.service.U3DExpRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class U3DExpRecordServiceImpl implements U3DExpRecordService {

    @Autowired
    private U3DExpRecordDao u3DExpRecordDao;

    @Override
    public ServerResponse<String> add(U3DExpRecord expRecord) {
        int resultCount = u3DExpRecordDao.insertExpRecord(expRecord);
        if(resultCount!=1){
            return ServerResponse.createByErrorMsg("向web插入实验记录失败，请检查!");
        }
        System.out.println("插入实验id为："+expRecord.getExperimentId()+"的记录成功");
        return ServerResponse.createBySuccessMsg("插入数据成功");
    }

    @Override
    public ServerResponse<U3DExpRecord> findByExpId(Integer experimentId) {
        U3DExpRecord record = u3DExpRecordDao.findById(experimentId);
        return ServerResponse.createBySuccess(record);
    }
}
