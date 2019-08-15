package com.simtop.pojo;

import java.util.Date;

/**
 * 实验记录表
 */
public class ExperimentRecord {
    //试验记录id
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
    private Date createTime;
    //最后一次更新时间
    private Date updateTime;
    //时长
    private Integer time;
    //得分
    private Double score;

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

    public Integer getTime() {
        return time;
    }

    public void setTime(Integer time) {
        this.time = time;
    }

    public Double getScore() {
        return score;
    }

    public void setScore(Double score) {
        this.score = score;
    }

    @Override
    public String toString() {
        return "ExperimentRecord{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", school='" + school + '\'' +
                ", courseName='" + courseName + '\'' +
                ", experimentName='" + experimentName + '\'' +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                ", time=" + time +
                ", score=" + score +
                '}';
    }
}
