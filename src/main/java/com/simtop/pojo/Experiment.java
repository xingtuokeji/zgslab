package com.simtop.pojo;


import com.alibaba.fastjson.annotation.JSONField;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;

import java.util.Date;

/**
 * 课程表实体类  实验数据：课程管理
 */
@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
public class Experiment {
    private Integer id;
    private String experimentCode;//实验编码
    private String experimentName;//实验名称
    private String courseName;//课程名称 todo
    private ExperimentType experimentType;//实验类别名称
    private User user;//教师
    private String username;//姓名 todo
    private Date createTime;//创建时间
    private Date updateTime;//最后一次更新时间
    // todo 前台 String类型的时间到后台Date类型时间转换问题
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private Date experimentStartTime;//实验开始时间
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private Date experimentEndTime;//实验结束时间

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getExperimentName() {
        return experimentName;
    }

    public void setExperimentName(String experimentName) {
        this.experimentName = experimentName;
    }

    public ExperimentType getExperimentType() {
        return experimentType;
    }

    public void setExperimentType(ExperimentType experimentType) {
        this.experimentType = experimentType;
    }

    public String getExperimentCode() {
        return experimentCode;
    }

    public void setExperimentCode(String experimentCode) {
        this.experimentCode = experimentCode;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public Date getExperimentStartTime() {
        return experimentStartTime;
    }

    public void setExperimentStartTime(Date experimentStartTime) {
        this.experimentStartTime = experimentStartTime;
    }

    public Date getExperimentEndTime() {
        return experimentEndTime;
    }

    public void setExperimentEndTime(Date experimentEndTime) {
        this.experimentEndTime = experimentEndTime;
    }

    @Override
    public String toString() {
        return "Experiment{" +
                "id=" + id +
                ", experimentCode='" + experimentCode + '\'' +
                ", experimentName='" + experimentName + '\'' +
                ", courseName='" + courseName + '\'' +
                ", experimentType=" + experimentType +
                ", user=" + user +
                ", username='" + username + '\'' +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                ", experimentStartTime=" + experimentStartTime +
                ", experimentEndTime=" + experimentEndTime +
                '}';
    }
}
