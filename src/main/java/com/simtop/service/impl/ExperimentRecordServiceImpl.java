package com.simtop.service.impl;

import com.simtop.common.ServerResponse;
import com.simtop.dao.ExperimentDao;
import com.simtop.dao.ExperimentRecordDao;
import com.simtop.pojo.ExperimentRecord;
import com.simtop.pojo.U3DExpRecord;
import com.simtop.service.ExperimentRecordService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ExperimentRecordServiceImpl implements ExperimentRecordService {

    private static Logger logger = LoggerFactory.getLogger(ExperimentRecordServiceImpl.class);

    @Autowired
    private ExperimentRecordDao experimentRecordDao;

    @Autowired
    private ExperimentDao experimentDao;


    @Override
    public ServerResponse<Integer> add(ExperimentRecord record) {
        logger.debug("record="+record);
        /**
         * {params=null, id=25, username='评审专家2号', school='fdasf', courseName='电商小件商品快速拣货决策虚拟仿真实验',
         * experimentName='2019年8月30日09:47:38实验', createTime=null, updateTime=null, u3DExpRecord=null,
         * experimentType='null', organization='null', u3DReportToWeb=null, experimentCode='null'
         */
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
            logger.debug("进入的是集中实验，参数params为"+record.getParams());
            record.setExperimentType("集中实验");
            record.setOrganization("班级");
            //todo 根据传入的课程id，查询到实验编码
            String expCode = experimentDao.findExpCodeByExpId(record.getId());
            logger.debug("课程id为："+record.getId()+" 实验编码为："+expCode);
            if(expCode == null){
                return ServerResponse.createByErrorMsg("根据课程id查询实验编码错误");
            }
            // todo 将实验编码放置于实体类 ExperimentRecord中
            record.setExperimentCode(expCode);
            int resultCount = experimentRecordDao.insert(record);
            logger.debug("插入试验记录数为："+resultCount);
            if(resultCount == 1){
                return ServerResponse.createBySuccess(record.getId());
            }
        }

        //如果是分散实验
        if(record.getParams() == 1){
            record.setExperimentType("分散实验");
            record.setOrganization("个人");
            record.setCourseName("电商小件商品快速拣货决策虚拟仿真实验");
            record.setExperimentName("分散实验");
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

    @Override
    public List<ExperimentRecord> selectByExperimentId() {
        List<ExperimentRecord> experimentRecords = experimentRecordDao.selectByExperimentId();
        return experimentRecords;
    }

    @Override
    public List<ExperimentRecord> findByParams(ExperimentRecord record) {
        List<ExperimentRecord> experimentRecordList = experimentRecordDao.selectByParams(record);
        return experimentRecordList;
    }
}
