package com.simtop.vo;

public class ExperimentVoParams {
    //用户名
    private Integer userId;
    //实验码
    private String experimentCode;
    //课程
    private Integer courseId;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getExperimentCode() {
        return experimentCode;
    }

    public void setExperimentCode(String experimentCode) {
        this.experimentCode = experimentCode;
    }

    public Integer getCourseId() {
        return courseId;
    }

    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }

    @Override
    public String toString() {
        return "ExperimentVoParams{" +
                "userId=" + userId +
                ", experimentCode='" + experimentCode + '\'' +
                ", courseId=" + courseId +
                '}';
    }
}
