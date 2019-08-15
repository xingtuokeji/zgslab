package com.simtop.service.impl;

import com.simtop.common.ServerResponse;
import com.simtop.dao.QuestionDao;
import com.simtop.pojo.Question;
import com.simtop.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class QuestionServiceImpl implements QuestionService {

    @Autowired
    private QuestionDao questionDao;

    @Override
    public ServerResponse<String> add(Question question) {

        //字段非空验证
        if(question.getUsername()==null||question.getUsername().equals("")){
            return ServerResponse.createByErrorMsg("username必填");
        }
        if(question.getSchool()==null||question.getSchool().equals("")){
            return ServerResponse.createByErrorMsg("school必填");
        }
        if(question.getQuestion()==null||question.getQuestion().equals("")){
            return ServerResponse.createByErrorMsg("question必填");
        }
        //设置答复状态0代表已经答复，1代表未答复
        question.setIsAnswer(1);
        int resultCount = questionDao.insert(question);
        if(resultCount != 1){
            return ServerResponse.createByErrorMsg("新增问题失败");
        }
        return ServerResponse.createBySuccessMsg("新增问题成功");
    }

    @Override
    public ServerResponse<Question> findById(Integer id) {
        Question question = questionDao.selectById(id);
        if(question == null){
            return ServerResponse.createByErrorMsg("根据id查询问题详情失败");
        }
        return ServerResponse.createBySuccess(question);
    }

    @Override
    public ServerResponse<List<Question>> findAllById(Integer id) {
        List<Question> questions = questionDao.selectAll(id);
        return ServerResponse.createBySuccess(questions);
    }

    @Override
    public List<Question> findByParams(Question question) {
        List<Question> questionList = questionDao.selectByParams(question);
        return questionList;
    }

    @Override
    public ServerResponse<String> deleteById(Integer id) {
        int resultCount = questionDao.deleteById(id);
        if(resultCount != 1){
            return ServerResponse.createByErrorMsg("删除问题失败");
        }
        return ServerResponse.createBySuccessMsg("删除问题成功");
    }

    @Override
    public ServerResponse<String> updateById(Question question) {
        int resultCount = questionDao.update(question);
        if(resultCount != 1){
            return ServerResponse.createByErrorMsg("修改问题内容失败");
        }
        return ServerResponse.createBySuccessMsg("修改问题成功");
    }
}
