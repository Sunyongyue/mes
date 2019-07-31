package com.common.system.entity;

public class DistributNumber {
    private int id;
    private String telNum;
    private String controlMainNum;
    private String telMainNum;
    private String fourMainNum;
    private String status;
    private String operator;
    private String operatorTime;
    private String remarks;
    public DistributNumber(){}
    public DistributNumber(int id, String telNum, String controlMainNum, String telMainNum, String fourMainNum, String status, String operator, String operatorTime, String remarks) {
        this.id = id;
        this.telNum = telNum;
        this.controlMainNum = controlMainNum;
        this.telMainNum = telMainNum;
        this.fourMainNum = fourMainNum;
        this.status = status;
        this.operator = operator;
        this.operatorTime = operatorTime;
        this.remarks = remarks;
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

    public String getControlMainNum() {
        return controlMainNum;
    }

    public void setControlMainNum(String controlMainNum) {
        this.controlMainNum = controlMainNum;
    }

    public String getTelMainNum() {
        return telMainNum;
    }

    public void setTelMainNum(String telMainNum) {
        this.telMainNum = telMainNum;
    }

    public String getFourMainNum() {
        return fourMainNum;
    }

    public void setFourMainNum(String fourMainNum) {
        this.fourMainNum = fourMainNum;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
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
        this.operatorTime =  operatorTime.substring(0,19);

    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    @Override
    public String toString() {
        return "DistributNumber{" +
                "id=" + id +
                ", telNum='" + telNum + '\'' +
                ", controlMainNum='" + controlMainNum + '\'' +
                ", telMainNum='" + telMainNum + '\'' +
                ", fourMainNum='" + fourMainNum + '\'' +
                ", status='" + status + '\'' +
                ", operator='" + operator + '\'' +
                ", operatorTime='" + operatorTime + '\'' +
                ", remarks='" + remarks + '\'' +
                '}';
    }
}
