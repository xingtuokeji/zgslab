package com.simtop.service.impl;

import com.simtop.common.ServerResponse;
import com.simtop.dao.ReportDao;
import com.simtop.dao.SuggestDao;
import com.simtop.pojo.Report;
import com.simtop.pojo.Suggest;
import com.simtop.service.ReportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ReportServiceImpl implements ReportService {

    @Autowired
    private ReportDao reportDao;

    @Autowired
    private SuggestDao suggestDao;

    @Override
    public ServerResponse<Report> selectByReportHeader(Integer experimentId) {
        Report reportHeader = reportDao.findByExperimentId(experimentId);
        System.out.println(reportHeader);
        return ServerResponse.createBySuccess(reportHeader);
    }

    @Override
    public ServerResponse<String> addExpReportHeader(Report reportHeader) {
        Suggest suggest = new Suggest();
        suggest.setUsername(reportHeader.getUsername());
        suggest.setSchool(reportHeader.getSchool());
        suggest.setSuggest(reportHeader.getSuggest());
        suggest.setStar(reportHeader.getStar());
        //todo 向tb_evaluate_suggest表中插入u3d评价评星数据
        suggestDao.insertU3d(suggest);
        int resultCount = reportDao.insertReportHeader(reportHeader);
        if(resultCount != 1){
            return ServerResponse.createByErrorMsg("插入数据失败");
        }
        return ServerResponse.createBySuccessMsg("插入数据成功");
    }
}
