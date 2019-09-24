package com.simtop.pojo;

import com.simtop.controller.U3DReportToWeb;

import java.util.Date;

/**
 * 实验记录表
 */
public class ExperimentRecord {
    //用于区分实验类型和组织形式
    private Integer params;
    //课程id
    private Integer id;
    //学生名称
    private String username;
    //学校
    private String school;
    //课程名称
    private String courseName;
    //实验名称
    private String experimentName;
    //创建时间
    private Date createTime;//实验开始时间
    //最后一次更新时间
    private Date updateTime;
    //关联明细表
    private U3DExpRecord u3DExpRecord;
    //实验类型 集中实验/分散实验
    private String experimentType;
    //组织形式 班级/个人
    private String organization;
    //关联报告表
    private U3DReportToWeb u3DReportToWeb;

    //新增实验编码
    private String experimentCode;

    public String getExperimentCode() {
        return experimentCode;
    }

    public void setExperimentCode(String experimentCode) {
        this.experimentCode = experimentCode;
    }

    public U3DReportToWeb getU3DReportToWeb() {
        return u3DReportToWeb;
    }

    public void setU3DReportToWeb(U3DReportToWeb u3DReportToWeb) {
        this.u3DReportToWeb = u3DReportToWeb;
    }

    public Integer getParams() {
        return params;
    }

    public void setParams(Integer params) {
        this.params = params;
    }

    public String getExperimentType() {
        return experimentType;
    }

    public void setExperimentType(String experimentType) {
        this.experimentType = experimentType;
    }

    public String getOrganization() {
        return organization;
    }

    public void setOrganization(String organization) {
        this.organization = organization;
    }

    public U3DExpRecord getU3DExpRecord() {
        return u3DExpRecord;
    }

    public void setU3DExpRecord(U3DExpRecord u3DExpRecord) {
        this.u3DExpRecord = u3DExpRecord;
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

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getExperimentName() {
        return experimentName;
    }

    public void setExperimentName(String experimentName) {
        this.experimentName = experimentName;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Override
    public String toString() {
        return "ExperimentRecord{" +
                "params=" + params +
                ", id=" + id +
                ", username='" + username + '\'' +
                ", school='" + school + '\'' +
                ", courseName='" + courseName + '\'' +
                ", experimentName='" + experimentName + '\'' +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                ", u3DExpRecord=" + u3DExpRecord +
                ", experimentType='" + experimentType + '\'' +
                ", organization='" + organization + '\'' +
                ", u3DReportToWeb=" + u3DReportToWeb +
                ", experimentCode='" + experimentCode + '\'' +
                '}';
    }
}
