package com.simtop.pojo;


import java.util.Date;

/**
 * U3D >>> Web 实验记录明细表
 */
public class U3DExpRecord {
    //主键
    private Integer id;
    //记录表id用于关联experiment表
    private Integer experimentId;//单次实验ID
    //园区浏览得分
    private Double parkBrowsing;
    //库区浏览得分
    private Double smartStorageBrowsing;
    //设备认知得分
    private Double deviceAwareness;
    //订单处理得分
    private Double orderProcessing;
    //摘取式拣货得分
    private Double pickByOrder;
    //播种式拣货得分
    private Double pickByBatchOrder;
    //摘播式拣货得分
    private Double pickByDisperse;
    //发货作业得分
    private Double shippingOperation;
    //分拣作业得分
    private Double sortingOperation;
    //总得分
    private Double totalScore; //试验记录明细表
    //时间戳
    //实验时长 2019年8月21日11:20:50
    private Integer time;//试验记录明细表
    private Date createTime;
    private Date updateTime;
    //todo 新增实验大类类型typeId
    //实验类型1代表分散实验，2代表集中实验
    private Integer experimentTypeId;
    //用户id
    private Integer userId;

    public Integer getTime() {
        return time;
    }

    public void setTime(Integer time) {
        this.time = time;
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

    public Double getParkBrowsing() {
        return parkBrowsing;
    }

    public void setParkBrowsing(Double parkBrowsing) {
        this.parkBrowsing = parkBrowsing;
    }

    public Double getSmartStorageBrowsing() {
        return smartStorageBrowsing;
    }

    public void setSmartStorageBrowsing(Double smartStorageBrowsing) {
        this.smartStorageBrowsing = smartStorageBrowsing;
    }

    public Double getDeviceAwareness() {
        return deviceAwareness;
    }

    public void setDeviceAwareness(Double deviceAwareness) {
        this.deviceAwareness = deviceAwareness;
    }

    public Double getOrderProcessing() {
        return orderProcessing;
    }

    public void setOrderProcessing(Double orderProcessing) {
        this.orderProcessing = orderProcessing;
    }

    public Double getPickByOrder() {
        return pickByOrder;
    }

    public void setPickByOrder(Double pickByOrder) {
        this.pickByOrder = pickByOrder;
    }

    public Double getPickByBatchOrder() {
        return pickByBatchOrder;
    }

    public void setPickByBatchOrder(Double pickByBatchOrder) {
        this.pickByBatchOrder = pickByBatchOrder;
    }

    public Double getPickByDisperse() {
        return pickByDisperse;
    }

    public void setPickByDisperse(Double pickByDisperse) {
        this.pickByDisperse = pickByDisperse;
    }

    public Double getShippingOperation() {
        return shippingOperation;
    }

    public void setShippingOperation(Double shippingOperation) {
        this.shippingOperation = shippingOperation;
    }

    public Double getSortingOperation() {
        return sortingOperation;
    }

    public void setSortingOperation(Double sortingOperation) {
        this.sortingOperation = sortingOperation;
    }

    public Double getTotalScore() {
        return totalScore;
    }

    public void setTotalScore(Double totalScore) {
        this.totalScore = totalScore;
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

    public Integer getExperimentTypeId() {
        return experimentTypeId;
    }

    public void setExperimentTypeId(Integer experimentTypeId) {
        this.experimentTypeId = experimentTypeId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    @Override
    public String toString() {
        return "U3DExpRecord{" +
                "id=" + id +
                ", experimentId=" + experimentId +
                ", parkBrowsing=" + parkBrowsing +
                ", smartStorageBrowsing=" + smartStorageBrowsing +
                ", deviceAwareness=" + deviceAwareness +
                ", orderProcessing=" + orderProcessing +
                ", pickByOrder=" + pickByOrder +
                ", pickByBatchOrder=" + pickByBatchOrder +
                ", pickByDisperse=" + pickByDisperse +
                ", shippingOperation=" + shippingOperation +
                ", sortingOperation=" + sortingOperation +
                ", totalScore=" + totalScore +
                ", time=" + time +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                ", experimentTypeId=" + experimentTypeId +
                ", userId=" + userId +
                '}';
    }
}
