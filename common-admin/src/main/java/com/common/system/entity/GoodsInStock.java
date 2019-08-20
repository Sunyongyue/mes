package com.common.system.entity;

public class GoodsInStock {
    private int id;
    //所在地区
    private String local;
    //物料类别
    private String goodsType;
    //物料名称
    private String goodsName;
    //规格
    private String specifications;
    //生产日期
    private String goodsProduceDate;
    //状态
    private String status;
    //入库数量
    private int goodsNums;
    //供应商名称
    private String supplierName;
    //流水号
    private String pipelineNumber;
    //运营商
    private String operators;
    //卡号
    private String cardNums;
    private String IMSI;
    private String IMEI;
    private String ICCID;
    //备注
    private String remarks;
    //操作人
    private String operator;
    //操作时间
    private String operatorTime;
    public GoodsInStock(){}
    public GoodsInStock(int id, String local, String goodsType, String goodsName, String specifications, String goodsProduceDate, String status, int goodsNums, String supplierName, String pipelineNumber, String operators, String cardNums, String IMSI, String IMEI, String ICCID, String remarks, String operator, String operatorTime) {
        this.id = id;
        this.local = local;
        this.goodsType = goodsType;
        this.goodsName = goodsName;
        this.specifications = specifications;
        this.goodsProduceDate = goodsProduceDate;
        this.status = status;
        this.goodsNums = goodsNums;
        this.supplierName = supplierName;
        this.pipelineNumber = pipelineNumber;
        this.operators = operators;
        this.cardNums = cardNums;
        this.IMSI = IMSI;
        this.IMEI = IMEI;
        this.ICCID = ICCID;
        this.remarks = remarks;
        this.operator = operator;
        this.operatorTime = operatorTime;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLocal() {
        return local;
    }

    public void setLocal(String local) {
        this.local = local;
    }

    public String getGoodsType() {
        return goodsType;
    }

    public void setGoodsType(String goodsType) {
        this.goodsType = goodsType;
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

    public String getGoodsProduceDate() {
        return goodsProduceDate;
    }

    public void setGoodsProduceDate(String goodsProduceDate) {
        this.goodsProduceDate = goodsProduceDate.substring(0,11);
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getGoodsNums() {
        return goodsNums;
    }

    public void setGoodsNums(int goodsNums) {
        this.goodsNums = goodsNums;
    }

    public String getSupplierName() {
        return supplierName;
    }

    public void setSupplierName(String supplierName) {
        this.supplierName = supplierName;
    }

    public String getPipelineNumber() {
        return pipelineNumber;
    }

    public void setPipelineNumber(String pipelineNumber) {
        this.pipelineNumber = pipelineNumber;
    }

    public String getOperators() {
        return operators;
    }

    public void setOperators(String operators) {
        this.operators = operators;
    }

    public String getCardNums() {
        return cardNums;
    }

    public void setCardNums(String cardNums) {
        this.cardNums = cardNums;
    }

    public String getIMSI() {
        return IMSI;
    }

    public void setIMSI(String IMSI) {
        this.IMSI = IMSI;
    }

    public String getIMEI() {
        return IMEI;
    }

    public void setIMEI(String IMEI) {
        this.IMEI = IMEI;
    }

    public String getICCID() {
        return ICCID;
    }

    public void setICCID(String ICCID) {
        this.ICCID = ICCID;
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
        this.operatorTime = operatorTime.substring(0,19);
    }

    @Override
    public String toString() {
        return "GoodsInStock{" +
                "id=" + id +
                ", local='" + local + '\'' +
                ", goodsType='" + goodsType + '\'' +
                ", goodsName='" + goodsName + '\'' +
                ", specifications='" + specifications + '\'' +
                ", goodsProduceDate='" + goodsProduceDate + '\'' +
                ", status='" + status + '\'' +
                ", goodsNums=" + goodsNums +
                ", supplierName='" + supplierName + '\'' +
                ", pipelineNumber='" + pipelineNumber + '\'' +
                ", operators='" + operators + '\'' +
                ", cardNums='" + cardNums + '\'' +
                ", IMSI='" + IMSI + '\'' +
                ", IMEI='" + IMEI + '\'' +
                ", ICCID='" + ICCID + '\'' +
                ", remarks='" + remarks + '\'' +
                ", operator='" + operator + '\'' +
                ", operatorTime='" + operatorTime + '\'' +
                '}';
    }
}
