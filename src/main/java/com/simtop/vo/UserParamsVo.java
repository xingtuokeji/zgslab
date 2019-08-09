package com.simtop.vo;

public class UserParamsVo {
    private String username;
    private String school;
    private String loginName;

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

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    @Override
    public String toString() {
        return "UserParamsVo{" +
                "username='" + username + '\'' +
                ", school='" + school + '\'' +
                ", loginName='" + loginName + '\'' +
                '}';
    }
}
