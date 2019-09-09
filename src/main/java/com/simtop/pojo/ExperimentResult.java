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
    //用户id
    private Integer userId;
    //实验次数
    private Integer experimentTimes;
    private String worker;//拣货人员
    private Integer zbsEffectiveTime;//摘播式有效时长
    private Integer zbsTotalPickTime;//摘播式总时长
    private double zbsEfficiency;//摘播式效率
    private Integer zbsWalkStep;//摘播式行走步数

    private Integer zqsEffectiveTime;//摘取式有效时长
    private Integer zqsTotalPickTime;//摘取式总时长
    private double zqsEfficiency;//摘取式效率
    private Integer zqsWalkStep;//摘取式行走步数

    private Integer bzsEffectiveTime;//播种式有效时长
    private Integer bzsTotalPickTime;//播种式总时长
    private double bzsEfficiency;//播种式效率
    private Integer bzsWalkStep;//播种式行走步数

    //创建时间
    private Date createTime;
    //最后一次更新时间
    private Date updateTime;

    //订单量
    private int orderNum;
    //货物品项
    private int goodsItem;
    //货物总量
    private int goodsTotalNum;

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

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getExperimentTimes() {
        return experimentTimes;
    }

    public void setExperimentTimes(Integer experimentTimes) {
        this.experimentTimes = experimentTimes;
    }

    public String getWorker() {
        return worker;
    }

    public void setWorker(String worker) {
        this.worker = worker;
    }

    public Integer getZbsEffectiveTime() {
        return zbsEffectiveTime;
    }

    public void setZbsEffectiveTime(Integer zbsEffectiveTime) {
        this.zbsEffectiveTime = zbsEffectiveTime;
    }

    public Integer getZbsTotalPickTime() {
        return zbsTotalPickTime;
    }

    public void setZbsTotalPickTime(Integer zbsTotalPickTime) {
        this.zbsTotalPickTime = zbsTotalPickTime;
    }

    public double getZbsEfficiency() {
        return zbsEfficiency;
    }

    public void setZbsEfficiency(double zbsEfficiency) {
        this.zbsEfficiency = zbsEfficiency;
    }

    public Integer getZbsWalkStep() {
        return zbsWalkStep;
    }

    public void setZbsWalkStep(Integer zbsWalkStep) {
        this.zbsWalkStep = zbsWalkStep;
    }

    public Integer getZqsEffectiveTime() {
        return zqsEffectiveTime;
    }

    public void setZqsEffectiveTime(Integer zqsEffectiveTime) {
        this.zqsEffectiveTime = zqsEffectiveTime;
    }

    public Integer getZqsTotalPickTime() {
        return zqsTotalPickTime;
    }

    public void setZqsTotalPickTime(Integer zqsTotalPickTime) {
        this.zqsTotalPickTime = zqsTotalPickTime;
    }

    public double getZqsEfficiency() {
        return zqsEfficiency;
    }

    public void setZqsEfficiency(double zqsEfficiency) {
        this.zqsEfficiency = zqsEfficiency;
    }

    public Integer getZqsWalkStep() {
        return zqsWalkStep;
    }

    public void setZqsWalkStep(Integer zqsWalkStep) {
        this.zqsWalkStep = zqsWalkStep;
    }

    public Integer getBzsEffectiveTime() {
        return bzsEffectiveTime;
    }

    public void setBzsEffectiveTime(Integer bzsEffectiveTime) {
        this.bzsEffectiveTime = bzsEffectiveTime;
    }

    public Integer getBzsTotalPickTime() {
        return bzsTotalPickTime;
    }

    public void setBzsTotalPickTime(Integer bzsTotalPickTime) {
        this.bzsTotalPickTime = bzsTotalPickTime;
    }

    public double getBzsEfficiency() {
        return bzsEfficiency;
    }

    public void setBzsEfficiency(double bzsEfficiency) {
        this.bzsEfficiency = bzsEfficiency;
    }

    public Integer getBzsWalkStep() {
        return bzsWalkStep;
    }

    public void setBzsWalkStep(Integer bzsWalkStep) {
        this.bzsWalkStep = bzsWalkStep;
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

    public int getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(int orderNum) {
        this.orderNum = orderNum;
    }

    public int getGoodsItem() {
        return goodsItem;
    }

    public void setGoodsItem(int goodsItem) {
        this.goodsItem = goodsItem;
    }

    public int getGoodsTotalNum() {
        return goodsTotalNum;
    }

    public void setGoodsTotalNum(int goodsTotalNum) {
        this.goodsTotalNum = goodsTotalNum;
    }

    @Override
    public String toString() {
        return "ExperimentResult{" +
                "id=" + id +
                ", experimentId=" + experimentId +
                ", userId=" + userId +
                ", experimentTimes=" + experimentTimes +
                ", worker='" + worker + '\'' +
                ", zbsEffectiveTime=" + zbsEffectiveTime +
                ", zbsTotalPickTime=" + zbsTotalPickTime +
                ", zbsEfficiency=" + zbsEfficiency +
                ", zbsWalkStep=" + zbsWalkStep +
                ", zqsEffectiveTime=" + zqsEffectiveTime +
                ", zqsTotalPickTime=" + zqsTotalPickTime +
                ", zqsEfficiency=" + zqsEfficiency +
                ", zqsWalkStep=" + zqsWalkStep +
                ", bzsEffectiveTime=" + bzsEffectiveTime +
                ", bzsTotalPickTime=" + bzsTotalPickTime +
                ", bzsEfficiency=" + bzsEfficiency +
                ", bzsWalkStep=" + bzsWalkStep +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                ", orderNum=" + orderNum +
                ", goodsItem=" + goodsItem +
                ", goodsTotalNum=" + goodsTotalNum +
                '}';
    }
}
