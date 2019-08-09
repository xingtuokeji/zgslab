package com.simtop.vo;

/**
 * 封装课程模糊查询类
 */
public class CourseParamsVo {
    private String courseCode;//实验编码
    private String courseName;//实验名称

    public String getCourseCode() {
        return courseCode;
    }

    public void setCourseCode(String courseCode) {
        this.courseCode = courseCode;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    @Override
    public String toString() {
        return "CourseParamsVo{" +
                "courseCode='" + courseCode + '\'' +
                ", courseName='" + courseName + '\'' +
                '}';
    }
}
