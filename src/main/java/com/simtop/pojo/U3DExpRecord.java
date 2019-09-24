package com.simtop.pojo;


import java.util.Date;

/**
 * U3D >>> Web 实验【记录明细表】
 * todo 对接ilab平台
 */
public class U3DExpRecord {
    //主键
    private Integer id;
    private Integer experimentId;//单次实验ID
    private Integer userId;//用户id
    private Integer park360Browsing;//园区浏览-360度浏览得分
    private Integer parkTopBrowsing;//园区浏览-鸟瞰浏览得分
    private Integer parkFirstPersonBrowsing;//园区浏览-自主漫游得分
    private Integer parkAutoBrowsing;//园区浏览-自动漫游得分
    private Integer storage360Browsing;//库区浏览-360度浏览得分
    private Integer storageTopBrowsing;//库区浏览-鸟瞰浏览得分
    private Integer deviceAwareness;//设备认知得分
    private Integer orderProcessing;//订单处理得分
    private Integer replenishment;//补货作业得分
    private Integer pickByOrder;//摘取式拣货得分
    private Integer pickByBatchOrder;//播种式拣货得分
    private Integer pickByDisperse;//摘播式拣货得分
    private Integer shippingSweepCode;//发货作业-扫码复核得分
    private Integer shippingIntimidate;//发货作业-打贴面单得分
    private Integer shippingSealing;//发货作业-包装封箱得分
    private Integer sortingOperation;//分拣作业-全自动分拣作业得分
    private Integer modeComparison;//决策分析-模式对比分析得分
    private Integer ataComparison;//决策分析-数据对比分析得分
    private Integer experimentalCorrect;//实验报告-实验修正得分
    private Integer experimentalReport;//实验报告-完成实验报告得分
    private Integer experimentalEvaluation;//实验评价得分
    private Integer totalScore;//总分
    private Integer time;//实验时长
    private Date createTime;//创建时间 实验结束时间
    private Date updateTime;//更新时间
    private String loginName;//登录名

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }
    //由于返回值为int 报错
//    public int getReplenishment() {
//        return replenishment;
//    }
//
//    public void setReplenishment(int replenishment) {
//        this.replenishment = replenishment;
//    }

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

    public Integer getPark360Browsing() {
        return park360Browsing;
    }

    public void setPark360Browsing(Integer park360Browsing) {
        this.park360Browsing = park360Browsing;
    }

    public Integer getParkTopBrowsing() {
        return parkTopBrowsing;
    }

    public void setParkTopBrowsing(Integer parkTopBrowsing) {
        this.parkTopBrowsing = parkTopBrowsing;
    }

    public Integer getParkFirstPersonBrowsing() {
        return parkFirstPersonBrowsing;
    }

    public void setParkFirstPersonBrowsing(Integer parkFirstPersonBrowsing) {
        this.parkFirstPersonBrowsing = parkFirstPersonBrowsing;
    }

    public Integer getParkAutoBrowsing() {
        return parkAutoBrowsing;
    }

    public void setParkAutoBrowsing(Integer parkAutoBrowsing) {
        this.parkAutoBrowsing = parkAutoBrowsing;
    }

    public Integer getStorage360Browsing() {
        return storage360Browsing;
    }

    public void setStorage360Browsing(Integer storage360Browsing) {
        this.storage360Browsing = storage360Browsing;
    }

    public Integer getStorageTopBrowsing() {
        return storageTopBrowsing;
    }

    public void setStorageTopBrowsing(Integer storageTopBrowsing) {
        this.storageTopBrowsing = storageTopBrowsing;
    }

    public Integer getDeviceAwareness() {
        return deviceAwareness;
    }

    public void setDeviceAwareness(Integer deviceAwareness) {
        this.deviceAwareness = deviceAwareness;
    }

    public Integer getOrderProcessing() {
        return orderProcessing;
    }

    public void setOrderProcessing(Integer orderProcessing) {
        this.orderProcessing = orderProcessing;
    }

    public Integer getReplenishment() {
        return replenishment;
    }

    public void setReplenishment(Integer replenishment) {
        this.replenishment = replenishment;
    }

    public Integer getPickByOrder() {
        return pickByOrder;
    }

    public void setPickByOrder(Integer pickByOrder) {
        this.pickByOrder = pickByOrder;
    }

    public Integer getPickByBatchOrder() {
        return pickByBatchOrder;
    }

    public void setPickByBatchOrder(Integer pickByBatchOrder) {
        this.pickByBatchOrder = pickByBatchOrder;
    }

    public Integer getPickByDisperse() {
        return pickByDisperse;
    }

    public void setPickByDisperse(Integer pickByDisperse) {
        this.pickByDisperse = pickByDisperse;
    }

    public Integer getShippingSweepCode() {
        return shippingSweepCode;
    }

    public void setShippingSweepCode(Integer shippingSweepCode) {
        this.shippingSweepCode = shippingSweepCode;
    }

    public Integer getShippingIntimidate() {
        return shippingIntimidate;
    }

    public void setShippingIntimidate(Integer shippingIntimidate) {
        this.shippingIntimidate = shippingIntimidate;
    }

    public Integer getShippingSealing() {
        return shippingSealing;
    }

    public void setShippingSealing(Integer shippingSealing) {
        this.shippingSealing = shippingSealing;
    }

    public Integer getSortingOperation() {
        return sortingOperation;
    }

    public void setSortingOperation(Integer sortingOperation) {
        this.sortingOperation = sortingOperation;
    }

    public Integer getModeComparison() {
        return modeComparison;
    }

    public void setModeComparison(Integer modeComparison) {
        this.modeComparison = modeComparison;
    }

    public Integer getAtaComparison() {
        return ataComparison;
    }

    public void setAtaComparison(Integer ataComparison) {
        this.ataComparison = ataComparison;
    }

    public Integer getExperimentalCorrect() {
        return experimentalCorrect;
    }

    public void setExperimentalCorrect(Integer experimentalCorrect) {
        this.experimentalCorrect = experimentalCorrect;
    }

    public Integer getExperimentalReport() {
        return experimentalReport;
    }

    public void setExperimentalReport(Integer experimentalReport) {
        this.experimentalReport = experimentalReport;
    }

    public Integer getExperimentalEvaluation() {
        return experimentalEvaluation;
    }

    public void setExperimentalEvaluation(Integer experimentalEvaluation) {
        this.experimentalEvaluation = experimentalEvaluation;
    }

    public Integer getTotalScore() {
        return totalScore;
    }

    public void setTotalScore(Integer totalScore) {
        this.totalScore = totalScore;
    }

    public Integer getTime() {
        return time;
    }

    public void setTime(Integer time) {
        this.time = time;
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
        return "U3DExpRecord{" +
                "id=" + id +
                ", experimentId=" + experimentId +
                ", userId=" + userId +
                ", park360Browsing=" + park360Browsing +
                ", parkTopBrowsing=" + parkTopBrowsing +
                ", parkFirstPersonBrowsing=" + parkFirstPersonBrowsing +
                ", parkAutoBrowsing=" + parkAutoBrowsing +
                ", storage360Browsing=" + storage360Browsing +
                ", storageTopBrowsing=" + storageTopBrowsing +
                ", deviceAwareness=" + deviceAwareness +
                ", orderProcessing=" + orderProcessing +
                ", replenishment=" + replenishment +
                ", pickByOrder=" + pickByOrder +
                ", pickByBatchOrder=" + pickByBatchOrder +
                ", pickByDisperse=" + pickByDisperse +
                ", shippingSweepCode=" + shippingSweepCode +
                ", shippingIntimidate=" + shippingIntimidate +
                ", shippingSealing=" + shippingSealing +
                ", sortingOperation=" + sortingOperation +
                ", modeComparison=" + modeComparison +
                ", ataComparison=" + ataComparison +
                ", experimentalCorrect=" + experimentalCorrect +
                ", experimentalReport=" + experimentalReport +
                ", experimentalEvaluation=" + experimentalEvaluation +
                ", totalScore=" + totalScore +
                ", time=" + time +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                ", loginName='" + loginName + '\'' +
                '}';
    }
}
