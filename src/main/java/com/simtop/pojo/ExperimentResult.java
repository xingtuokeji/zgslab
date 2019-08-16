package com.simtop.pojo;

import java.util.Date;

/**
 * 实验结果实体类
 * 包含实验结果数据和图表所有的数据 2019年8月13日13:50:13
 */
public class ExperimentResult {
    //主键
    private Integer id;
    //实验记录id
    private Integer experimentId;
    //实验类别id
    private Integer experimentMethodId;
    //实验方式id 1摘取式 2播种式 3摘播式
    //用户id
    private Integer userId;
    //总的拣货时长 s
    private double totalPickTime;
    //有效时长
    private double effectiveTime;
    //效率
    private double efficiency;
    //工作步数
    private int walkStep;
    //第几次实验
    private int experimentTimes;
    //作业人员
    private String worker;
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

    public Integer getExperimentId() {
        return experimentId;
    }

    public void setExperimentId(Integer experimentId) {
        this.experimentId = experimentId;
    }

    public Integer getExperimentMethodId() {
        return experimentMethodId;
    }

    public void setExperimentMethodId(Integer experimentMethodId) {
        this.experimentMethodId = experimentMethodId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public double getTotalPickTime() {
        return totalPickTime;
    }

    public void setTotalPickTime(double totalPickTime) {
        this.totalPickTime = totalPickTime;
    }

    public double getEffectiveTime() {
        return effectiveTime;
    }

    public void setEffectiveTime(double effectiveTime) {
        this.effectiveTime = effectiveTime;
    }

    public double getEfficiency() {
        return efficiency;
    }

    public void setEfficiency(double efficiency) {
        this.efficiency = efficiency;
    }

    public int getWalkStep() {
        return walkStep;
    }

    public void setWalkStep(int walkStep) {
        this.walkStep = walkStep;
    }

    public int getExperimentTimes() {
        return experimentTimes;
    }

    public void setExperimentTimes(int experimentTimes) {
        this.experimentTimes = experimentTimes;
    }

    public String getWorker() {
        return worker;
    }

    public void setWorker(String worker) {
        this.worker = worker;
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
        return "ExperimentResult{" +
                "id=" + id +
                ", experimentId=" + experimentId +
                ", experimentMethodId=" + experimentMethodId +
                ", userId=" + userId +
                ", totalPickTime=" + totalPickTime +
                ", effectiveTime=" + effectiveTime +
                ", efficiency=" + efficiency +
                ", walkStep=" + walkStep +
                ", experimentTimes=" + experimentTimes +
                ", worker='" + worker + '\'' +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                '}';
    }
}
