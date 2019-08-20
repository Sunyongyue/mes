package com.common.system.entity;

public class GoodsRegStock {
    private int id;
    private String goodsType;
    private String goodsName;
    private String specifications;
    private String goodsProduceDate;
    private String status;
    private String reason;
    private String department;
    private int nums;
    private String supplierName;
    private String remarks;
    private String operator;
    private String operatorTime;
    private String local;
    public GoodsRegStock(){}
    public GoodsRegStock(int id, String goodsType, String goodsName, String specifications, String goodsProduceDate, String status, String reason, String department, int nums, String supplierName, String remarks, String operator, String operatorTime, String local) {
        this.id = id;
        this.goodsType = goodsType;
        this.goodsName = goodsName;
        this.specifications = specifications;
        this.goodsProduceDate = goodsProduceDate;
        this.status = status;
        this.reason = reason;
        this.department = department;
        this.nums = nums;
        this.supplierName = supplierName;
        this.remarks = remarks;
        this.operator = operator;
        this.operatorTime = operatorTime;
        this.local = local;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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
        this.goodsProduceDate = goodsProduceDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public int getNums() {
        return nums;
    }

    public void setNums(int nums) {
        this.nums = nums;
    }

    public String getSupplierName() {
        return supplierName;
    }

    public void setSupplierName(String supplierName) {
        this.supplierName = supplierName;
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

    public String getLocal() {
        return local;
    }

    public void setLocal(String local) {
        this.local = local;
    }

    @Override
    public String toString() {
        return "GoodsRegStock{" +
                "id=" + id +
                ", goodsType='" + goodsType + '\'' +
                ", goodsName='" + goodsName + '\'' +
                ", specifications='" + specifications + '\'' +
                ", goodsProduceDate='" + goodsProduceDate + '\'' +
                ", status='" + status + '\'' +
                ", reason='" + reason + '\'' +
                ", department='" + department + '\'' +
                ", nums=" + nums +
                ", supplierName='" + supplierName + '\'' +
                ", remarks='" + remarks + '\'' +
                ", operator='" + operator + '\'' +
                ", operatorTime='" + operatorTime + '\'' +
                ", local='" + local + '\'' +
                '}';
    }
}
