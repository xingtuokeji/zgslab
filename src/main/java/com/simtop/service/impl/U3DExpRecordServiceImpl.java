package com.simtop.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.simtop.common.Key;
import com.simtop.common.ServerResponse;
import com.simtop.dao.ExperimentRecordDao;
import com.simtop.dao.U3DExpRecordDao;
import com.simtop.pojo.ExperimentRecord;
import com.simtop.pojo.U3DExpRecord;
import com.simtop.service.ExperimentRecordService;
import com.simtop.service.U3DExpRecordService;
import com.simtop.util.HttpUtil;
import com.simtop.util.TestJWT;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;

@Service
@Transactional
public class U3DExpRecordServiceImpl implements U3DExpRecordService {

    @Autowired
    private U3DExpRecordDao u3DExpRecordDao;

    @Autowired
    private ExperimentRecordDao experimentRecordDao;

    @Override
    public ServerResponse<String> add(U3DExpRecord expRecord) {
        int resultCount = u3DExpRecordDao.insertExpRecord(expRecord);
        if(resultCount!=1){
            return ServerResponse.createByErrorMsg("向web插入实验记录失败，请检查!");
        }
        //根据试验记录id查询试验记录
        U3DExpRecord record = u3DExpRecordDao.findById( expRecord.getExperimentId());
        System.out.println("插入实验id为："+expRecord.getExperimentId()+"的记录成功");
        // todo 对接ilab项目 2019年9月23日17:57:55
        JSONObject param=new JSONObject();
        // 注释 用户登录名
        String username = expRecord.getLoginName();
        // 项目名称
        // String projectTitle = "接口连通公测项目"; todo important 这是ilab测试平台的项目名称
        String projectTitle = "电商小件商品快速拣货决策虚拟仿真实验";// 正式的申报项目
        // 实验状态
        int status = 1;//完成
        // 实验得分
        int score = record.getTotalScore();
        //实验结束时间
        long startDate = record.getCreateTime().getTime();
        //实验开始时间
        //根据实验记录id查询试验记录主表
        Date createTime = experimentRecordDao.findCreateTimeByExperimentId(expRecord.getExperimentId());
        long endDate = createTime.getTime();
        //实验用时
        int timeUsed = record.getTime()/60;
        //接入平台编号：由“实验空间”分配给实验教学项目的编号
        String issuerId = String.valueOf(Key.issuerId);
        param.put("username",username);
        param.put("projectTitle",projectTitle);
        param.put("status",status);
        param.put("score",score);
        param.put("startDate",startDate);
        param.put("endDate",endDate);
        param.put("timeUsed",timeUsed);
        param.put("issuerId",issuerId);//todo 已解决 2019年9月23日20:20:42
        String json=param.toString();
        System.out.println("实验结果json数据上传ILAB:"+json);
        try {
            String jwt = TestJWT.encrty(json);
            System.out.println("实验结果jwt数据上传ILAB:"+jwt);
            /**
             * {"score":61,"timeUsed":3,"endDate":1569240638000,"startDate":1569240863000,
             * "username":"test1","projectTitle":"接口连通公测项目","status":1}
             *
             * ilab平台数据格式
             * {
             *     "username":"test", ok
             *     "projectTitle":"项目名称", ok
             *     "childProjectTitle":"子项目名称", todo [非必填]
             *     "status":1, 实验状态：1 - 完成；2 - 未完成 ok
             *     "score":100, ok
             *     "startDate":1522646936023,ok
             *     "endDate":1522647936001,ok
             *     "timeUsed":15, 实验用时：非零整数，单位分钟 ok
             *     "issuerId":"100001", 没有 todo 2019年9月23日20:19:11 接入平台编号：由“实验空间”分配给实验教学项目的编号
             *     "attachmentId":"12" 非必填
             * }
             */
            /**
             * 测试平台实验结果数据上传ilab url
             */
             HttpUtil.loadJSON("http://202.205.145.156:8017/project/log/upload?xjwt="+jwt);

            /**
             * 正式平台实验结果数据上传ilab url
             */
//            HttpUtil.loadJSON("http://www.ilab-x.com/project/log/upload?xjwt="+jwt);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ServerResponse.createBySuccessMsg("插入数据成功");
    }

    @Override
    public ServerResponse<U3DExpRecord> findByExpId(Integer experimentId) {
        U3DExpRecord record = u3DExpRecordDao.findById(experimentId);
        return ServerResponse.createBySuccess(record);
    }
}
