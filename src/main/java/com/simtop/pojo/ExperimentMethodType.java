package com.simtop.pojo;

import java.util.Date;

/**
 * 实验方式 三种拣货方法
 * 2019年8月13日13:51:08
 */
public class ExperimentMethodType {
    //方法类别id+主键
    private Integer id;
    //实验方法名称 摘取式 播种式 摘播式
    private Integer methodTypeName;
    //创建时间
    private Date createTime;
    //最后一次更新时间
    private Date updateTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getMethodTypeName() {
        return methodTypeName;
    }

    public void setMethodTypeName(Integer methodTypeName) {
        this.methodTypeName = methodTypeName;
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
        return "ExperimentMethodType{" +
                "id=" + id +
                ", methodTypeName=" + methodTypeName +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                '}';
    }
}
