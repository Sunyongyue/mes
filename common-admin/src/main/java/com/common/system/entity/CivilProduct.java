package com.common.system.entity;

public class CivilProduct {
    //主键ID
    private int id;
    //通讯编号
    private String telNum;
    //生产单ID
    private int productNumId;
    //生产单号
    private String productNum;
    //产品名称
    private String goodsName;
    //产品规格
    private String specifications;
    //计费方式
    private String charMethod;
    //脉冲当量
    private String pulseEquivalent;
    //报警方数
    private int alarmSquare;
    //预存气量
    private int reservedAir;
    //窃气检测
    private String gasCheck;
    //关阀时间
    private int valveCloseTime;
    //开阀时间
    private int valveOpenTime;
    //生产工序ID
    private int workingorderId;
    //生产工序名称
    private String orderName;
    //采购商ID
    private int purchaserId;
    //备注
    private String remarks;
    //操作员
    private String operator;
    //操作时间
    private String operatorTime;
    //状态
    private String status;
    //待用
    private String more;
    public CivilProduct(){}

    public CivilProduct(int id, String telNum, int productNumId, String productNum, String goodsName, String specifications, String charMethod, String pulseEquivalent, int alarmSquare, int reservedAir, String gasCheck, int valveCloseTime, int valveOpenTime, int workingorderId, String orderName, int purchaserId, String remarks, String operator, String operatorTime, String status, String more) {
        this.id = id;
        this.telNum = telNum;
        this.productNumId = productNumId;
        this.productNum = productNum;
        this.goodsName = goodsName;
        this.specifications = specifications;
        this.charMethod = charMethod;
        this.pulseEquivalent = pulseEquivalent;
        this.alarmSquare = alarmSquare;
        this.reservedAir = reservedAir;
        this.gasCheck = gasCheck;
        this.valveCloseTime = valveCloseTime;
        this.valveOpenTime = valveOpenTime;
        this.workingorderId = workingorderId;
        this.orderName = orderName;
        this.purchaserId = purchaserId;
        this.remarks = remarks;
        this.operator = operator;
        this.operatorTime = operatorTime;
        this.status = status;
        this.more = more;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTelNum() {
        return telNum;
    }

    public void setTelNum(String telNum) {
        this.telNum = telNum;
    }

    public int getProductNumId() {
        return productNumId;
    }

    public void setProductNumId(int productNumId) {
        this.productNumId = productNumId;
    }

    public String getProductNum() {
        return productNum;
    }

    public void setProductNum(String productNum) {
        this.productNum = productNum;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public String getSpecifications() {
        return specifications;
    }

    public void setSpecifications(String specifications) {
        this.specifications = specifications;
    }

    public String getCharMethod() {
        return charMethod;
    }

    public void setCharMethod(String charMethod) {
        this.charMethod = charMethod;
    }

    public String getPulseEquivalent() {
        return pulseEquivalent;
    }

    public void setPulseEquivalent(String pulseEquivalent) {
        this.pulseEquivalent = pulseEquivalent;
    }

    public int getAlarmSquare() {
        return alarmSquare;
    }

    public void setAlarmSquare(int alarmSquare) {
        this.alarmSquare = alarmSquare;
    }

    public int getReservedAir() {
        return reservedAir;
    }

    public void setReservedAir(int reservedAir) {
        this.reservedAir = reservedAir;
    }

    public String getGasCheck() {
        return gasCheck;
    }

    public void setGasCheck(String gasCheck) {
        this.gasCheck = gasCheck;
    }

    public int getValveCloseTime() {
        return valveCloseTime;
    }

    public void setValveCloseTime(int valveCloseTime) {
        this.valveCloseTime = valveCloseTime;
    }

    public int getValveOpenTime() {
        return valveOpenTime;
    }

    public void setValveOpenTime(int valveOpenTime) {
        this.valveOpenTime = valveOpenTime;
    }

    public int getWorkingorderId() {
        return workingorderId;
    }

    public void setWorkingorderId(int workingorderId) {
        this.workingorderId = workingorderId;
    }

    public String getOrderName() {
        return orderName;
    }

    public void setOrderName(String orderName) {
        this.orderName = orderName;
    }

    public int getPurchaserId() {
        return purchaserId;
    }

    public void setPurchaserId(int purchaserId) {
        this.purchaserId = purchaserId;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }

    public String getOperatorTime() {
        return operatorTime;
    }

    public void setOperatorTime(String operatorTime) {
        this.operatorTime = operatorTime;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getMore() {
        return more;
    }

    public void setMore(String more) {
        this.more = more;
    }

    @Override
    public String toString() {
        return "CivilProduct{" +
                "id=" + id +
                ", telNum='" + telNum + '\'' +
                ", productNumId=" + productNumId +
                ", productNum='" + productNum + '\'' +
                ", goodsName='" + goodsName + '\'' +
                ", specifications='" + specifications + '\'' +
                ", charMethod='" + charMethod + '\'' +
                ", pulseEquivalent='" + pulseEquivalent + '\'' +
                ", alarmSquare=" + alarmSquare +
                ", reservedAir=" + reservedAir +
                ", gasCheck='" + gasCheck + '\'' +
                ", valveCloseTime=" + valveCloseTime +
                ", valveOpenTime=" + valveOpenTime +
                ", workingorderId=" + workingorderId +
                ", orderName='" + orderName + '\'' +
                ", purchaserId=" + purchaserId +
                ", remarks='" + remarks + '\'' +
                ", operator='" + operator + '\'' +
                ", operatorTime='" + operatorTime + '\'' +
                ", status='" + status + '\'' +
                ", more='" + more + '\'' +
                '}';
    }
}
