package com.simtop.service.impl;

import com.simtop.common.ServerResponse;
import com.simtop.dao.ExperimentResultDao;
import com.simtop.interceptor.ExperimentResultService;
import com.simtop.pojo.ExperimentResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Service
@Transactional
public class ExperimentResultServiceImpl implements ExperimentResultService {

    @Autowired
    private ExperimentResultDao experimentResultDao;

    @Override
    public ServerResponse<String> add(ExperimentResult result) {
        int resultCount = experimentResultDao.insert(result);
        if(resultCount != 1){
            return ServerResponse.createByErrorMsg("向web端插入数据错误");
        }
        return ServerResponse.createBySuccessMsg("向web端插入数据成功");
    }

    @Override
    public ServerResponse<List<ExperimentResult>> findByExperimentTimes(ExperimentResult result) {
        List<ExperimentResult> experimentResultList = experimentResultDao.findByExperimentTimes(result);
        return ServerResponse.createBySuccess(experimentResultList);
    }

}
