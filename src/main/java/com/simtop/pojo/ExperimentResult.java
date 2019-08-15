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
    private Integer experimentTypeId; //和实验方式表关联
    //实验方式id 1摘取式 2播种式 3摘播式
    private Integer experimentMethodId;
    //用户id
    private Integer userId;
    //总的拣货时长
    private String totalPickTime;
    //订单数量
    private Integer orderNumber;
    //工作时长
    private String workTime;
    //创建时间
    private Date createTime;
    //最后一次更新时间
    private Date updateTime;
    //最大货物数量
    private Integer maxGoodsNum;
    //货物品项
    private Integer goodsItem;

    public Integer getMaxGoodsNum() {
        return maxGoodsNum;
    }

    public void setMaxGoodsNum(Integer maxGoodsNum) {
        this.maxGoodsNum = maxGoodsNum;
    }

    public Integer getGoodsItem() {
        return goodsItem;
    }

    public void setGoodsItem(Integer goodsItem) {
        this.goodsItem = goodsItem;
    }

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

    public Integer getExperimentTypeId() {
        return experimentTypeId;
    }

    public void setExperimentTypeId(Integer experimentTypeId) {
        this.experimentTypeId = experimentTypeId;
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

    public String getTotalPickTime() {
        return totalPickTime;
    }

    public void setTotalPickTime(String totalPickTime) {
        this.totalPickTime = totalPickTime;
    }

    public Integer getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(Integer orderNumber) {
        this.orderNumber = orderNumber;
    }

    public String getWorkTime() {
        return workTime;
    }

    public void setWorkTime(String workTime) {
        this.workTime = workTime;
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
                ", experimentTypeId=" + experimentTypeId +
                ", experimentMethodId=" + experimentMethodId +
                ", userId=" + userId +
                ", totalPickTime='" + totalPickTime + '\'' +
                ", orderNumber=" + orderNumber +
                ", workTime='" + workTime + '\'' +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                ", maxGoodsNum=" + maxGoodsNum +
                ", goodsItem=" + goodsItem +
                '}';
    }
}
