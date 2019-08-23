package com.simtop.pojo;

import java.util.Date;

/**
 * 实验评星与建议
 */
public class Suggest {
    //评价id
    private Integer id;
    //姓名
    private String username;
    //学校
    private String school;
    //建议
    private String suggest;
    //星级
    private Integer star;
    //评价创建时间
    private Date createTime;
    //最后一次更新时间
    private Date updateTime;
    //用户id
    private Integer userId;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
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

    public String getSuggest() {
        return suggest;
    }

    public void setSuggest(String suggest) {
        this.suggest = suggest;
    }

    public Integer getStar() {
        return star;
    }

    public void setStar(Integer star) {
        this.star = star;
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

    @Override
    public String toString() {
        return "Suggest{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", school='" + school + '\'' +
                ", suggest='" + suggest + '\'' +
                ", star=" + star +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                ", userId=" + userId +
                '}';
    }
}
