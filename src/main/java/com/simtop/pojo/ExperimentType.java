package com.simtop.pojo;

import java.util.Date;

/**
 * 实验类别
 */
public class ExperimentType {
    //实验类别id
    private Integer id;
    //实验类别 集中实验、分散实验
    private String experimentTypeName;
    //创建时间
    private Date createTime;
    //更新时间
    private Date updateTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getExperimentTypeName() {
        return experimentTypeName;
    }

    public void setExperimentTypeName(String experimentTypeName) {
        this.experimentTypeName = experimentTypeName;
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
        return "ExperimentType{" +
                "id=" + id +
                ", experimentTypeName='" + experimentTypeName + '\'' +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                '}';
    }
}
