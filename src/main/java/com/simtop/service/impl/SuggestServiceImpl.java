package com.simtop.service.impl;

import com.simtop.common.ServerResponse;
import com.simtop.dao.SuggestDao;
import com.simtop.pojo.Suggest;
import com.simtop.service.SuggestService;
import net.sf.jsqlparser.schema.Server;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class SuggestServiceImpl implements SuggestService {

    @Autowired
    private SuggestDao suggestDao;

    @Override
    public ServerResponse<String> add(Suggest suggest) {
        int resultCount = suggestDao.insert(suggest);
        if(resultCount != 1){
            return ServerResponse.createByErrorMsg("新增评价信息失败");
        }
        return ServerResponse.createBySuccessMsg("新增评价信息成功");
    }

    @Override
    public List<Suggest> findAll() {
        return suggestDao.selectAll();
    }

    @Override
    public ServerResponse<String> deleteById(Integer id) {
        int resultCount = suggestDao.deleteById(id);
        if(resultCount != 1){
            return ServerResponse.createByErrorMsg("删除评论信息失败");
        }
        return ServerResponse.createBySuccessMsg("删除评论信息成功");
    }

    @Override
    public ServerResponse<String> updateById(Suggest suggest) {
        int resultCount = suggestDao.updateById(suggest);
        if(resultCount != 1){
            return ServerResponse.createByErrorMsg("修改评价信息失败");
        }
        return ServerResponse.createBySuccessMsg("修改评价信息成功");
    }

    @Override
    public ServerResponse<Suggest> findById(Integer id) {
        Suggest suggest = suggestDao.selectById(id);
        if(suggest==null){
            return ServerResponse.createByErrorMsg("查询错误");
        }
        return ServerResponse.createBySuccess(suggest);
    }
}
