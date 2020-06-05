package com.common.system.entity;

public class ChainNetMeter {
    private String id;
    private String productOrderNum;
    private String saleOrderNum;
    private String telNum;
    private String imei;
    private String creatTime;
    private String remarks;
    private String workingOrder;
    private String meterStatus;
    private String operator;
    private String instructStatus;
    public ChainNetMeter() {
    }

    public ChainNetMeter(String id, String productOrderNum, String saleOrderNum, String telNum, String imei, String creatTime, String remarks, String workingOrder, String meterStatus, String operator, String instructStatus) {
        this.id = id;
        this.productOrderNum = productOrderNum;
        this.saleOrderNum = saleOrderNum;
        this.telNum = telNum;
        this.imei = imei;
        this.creatTime = creatTime;
        this.remarks = remarks;
        this.workingOrder = workingOrder;
        this.meterStatus = meterStatus;
        this.operator = operator;
        this.instructStatus = instructStatus;
    }

    public String getInstructStatus() {
        return instructStatus;
    }

    public void setInstructStatus(String instructStatus) {
        this.instructStatus = instructStatus;
    }

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getProductOrderNum() {
        return productOrderNum;
    }

    public void setProductOrderNum(String productOrderNum) {
        this.productOrderNum = productOrderNum;
    }

    public String getSaleOrderNum() {
        return saleOrderNum;
    }

    public void setSaleOrderNum(String saleOrderNum) {
        this.saleOrderNum = saleOrderNum;
    }

    public String getTelNum() {
        return telNum;
    }

    public void setTelNum(String telNum) {
        this.telNum = telNum;
    }

    public String getImei() {
        return imei;
    }

    public void setImei(String imei) {
        this.imei = imei;
    }

    public String getCreatTime() {
        return creatTime;
    }

    public void setCreatTime(String creatTime) {
        this.creatTime = creatTime;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public String getWorkingOrder() {
        return workingOrder;
    }

    public void setWorkingOrder(String workingOrder) {
        this.workingOrder = workingOrder;
    }

    public String getMeterStatus() {
        return meterStatus;
    }

    public void setMeterStatus(String meterStatus) {
        this.meterStatus = meterStatus;
    }

    @Override
    public String toString() {
        return "ChainNetMeter{" +
                "id='" + id + '\'' +
                ", productOrderNum='" + productOrderNum + '\'' +
                ", saleOrderNum='" + saleOrderNum + '\'' +
                ", telNum='" + telNum + '\'' +
                ", imei='" + imei + '\'' +
                ", creatTime='" + creatTime + '\'' +
                ", remarks='" + remarks + '\'' +
                ", workingOrder='" + workingOrder + '\'' +
                ", meterStatus='" + meterStatus + '\'' +
                '}';
    }
}
