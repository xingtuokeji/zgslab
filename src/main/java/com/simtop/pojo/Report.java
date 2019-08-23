package com.simtop.pojo;

import java.util.Date;

/**
 * 报告表头
 */
public class Report {
    private Integer id;
    private String school;
    private String courseName;
    private String username;
    private String teacherName;
    private String organization;
    private Date date;
    private Integer score;

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
                ", school='" + school + '\'' +
                ", courseName='" + courseName + '\'' +
                ", username='" + username + '\'' +
                ", teacherName='" + teacherName + '\'' +
                ", organization='" + organization + '\'' +
                ", date=" + date +
                ", score=" + score +
                '}';
    }
}
