package com.simtop.pojo;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;

import java.util.Date;
import java.util.List;

/**
 * 实验答疑类
 */
@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
public class Question {
    //主键id
    private Integer id;
    //姓名
    private String username;
    //学校
    private String school;
    //问题
    private String question;
    //创建时间
    private Date createTime;
    //最后一次更新时间
    private Date updateTime;
    //是否答复
    private Integer isAnswer;//1答复 2未答复

    //封装评论信息
    private List<Comment> comments;

    public List<Comment> getComments() {
        return comments;
    }

    public void setComments(List<Comment> comments) {
        this.comments = comments;
    }

    public Integer getIsAnswer() {
        return isAnswer;
    }

    public void setIsAnswer(Integer isAnswer) {
        this.isAnswer = isAnswer;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Override
    public String toString() {
        return "Question{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", school='" + school + '\'' +
                ", question='" + question + '\'' +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                ", isAnswer=" + isAnswer +
                ", comments=" + comments +
                '}';
    }
}
