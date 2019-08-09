package com.simtop.vo;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * 新增实验
 * 接受前台传递的参数 <-- pojo
 */
public class ExperimentVo {
    //实验名称
    private String experimentName;
    //课程
    private Integer courseId;
    //实验编码
    private String experimentCode;
    //实验开始时间

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date experimentStartTime;
    //实验结束时间

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date experimentEndTime;
    //用户姓名
    private String username;
    //用户id
    private Integer userId;

    public String getExperimentName() {
        return experimentName;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setExperimentName(String experimentName) {
        this.experimentName = experimentName;
    }

    public Integer getCourseId() {
        return courseId;
    }

    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }

    public String getExperimentCode() {
        return experimentCode;
    }

    public void setExperimentCode(String experimentCode) {
        this.experimentCode = experimentCode;
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
        return "ExperimentVo{" +
                "experimentName='" + experimentName + '\'' +
                ", courseId=" + courseId +
                ", experimentCode='" + experimentCode + '\'' +
                ", experimentStartTime=" + experimentStartTime +
                ", experimentEndTime=" + experimentEndTime +
                ", username='" + username + '\'' +
                '}';
    }
}
