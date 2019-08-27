package com.simtop.pojo;

import java.util.Date;

/**
 * 报告表头
 */
public class Report {
    //报告表头主键id
    private Integer id;
    //实验id
    private Integer experimentId;
    //学校
    private String school;
    //课程名
    private String courseName;
    //用户姓名
    private String username;
    //教师姓名
    private String teacherName;
    //组织名
    private String organization;
    //创建时间
    private Date date;
    //报告得分
    private Integer score;
    //实验记录
    private String conclusion;

    //用户评星
    private Integer star;

    public Integer getStar() {
        return star;
    }

    public void setStar(Integer star) {
        this.star = star;
    }

    public Integer getExperimentId() {
        return experimentId;
    }

    public void setExperimentId(Integer experimentId) {
        this.experimentId = experimentId;
    }

    public String getConclusion() {
        return conclusion;
    }

    public void setConclusion(String conclusion) {
        this.conclusion = conclusion;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getTeacherName() {
        return teacherName;
    }

    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName;
    }

    public String getOrganization() {
        return organization;
    }

    public void setOrganization(String organization) {
        this.organization = organization;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    @Override
    public String toString() {
        return "Report{" +
                "id=" + id +
                ", experimentId=" + experimentId +
                ", school='" + school + '\'' +
                ", courseName='" + courseName + '\'' +
                ", username='" + username + '\'' +
                ", teacherName='" + teacherName + '\'' +
                ", organization='" + organization + '\'' +
                ", date=" + date +
                ", score=" + score +
                ", conclusion='" + conclusion + '\'' +
                ", star=" + star +
                '}';
    }
}
