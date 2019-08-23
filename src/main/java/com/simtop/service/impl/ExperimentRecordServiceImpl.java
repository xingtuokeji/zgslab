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
    public ServerResponse<Integer> add(ExperimentRecord record) {
        if(record.getParams()==null){
            return ServerResponse.createByErrorMsg("参数params错误！");
        }
        //todo 新增试验记录区分组织/实验类型
        //todo important 返回一个实验id
        /**
         * 使用params参数加以区分 2019年8月23日10:40:25
         * 如果params=1 实验为分散实验，组织形式为个人
         * 如果params=2 实验为集中实验，组织形式为班级
         */
        //如果是集中实验
        if(record.getParams()==2){
            record.setExperimentType("集中实验");
            record.setOrganization("班级");
            int resultCount = experimentRecordDao.insert(record);
            if(resultCount == 1){
                return ServerResponse.createBySuccess(record.getId());
            }
        }

        //如果是分散实验
        if(record.getParams() == 1){
            record.setExperimentType("分散实验");
            record.setOrganization("个人");
            int resultCount = experimentRecordDao.insertDispersionExp(record);
            if(resultCount == 1){
                return ServerResponse.createBySuccess(record.getId());
            }
        }

        return ServerResponse.createBySuccessMsg("新增实验记录失败");
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

    @Override
    public ServerResponse<Integer> accountExp() {
        int expNum = experimentRecordDao.queryExpNum();
        return ServerResponse.createBySuccess(expNum);
    }

    @Override
    public ServerResponse<Integer> countTotalExpTime() {
        int totalTime = experimentRecordDao.selectTotalExpTime();
        return ServerResponse.createBySuccess(totalTime);
    }
}
