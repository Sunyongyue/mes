package com.common.system.entity;

public class GoodsStock {
    private int id;
    private String goodsType;
    private String goodsName;
    private String specifications;
    private String goodsProduceDate;
    private String goodsStock;
    private int nums;
    private String supplierName;
    private String remarks;
    private String operator;
    private String operatorTime;
    private String local;
    public GoodsStock(){}
    public GoodsStock(int id, String goodsType, String goodsName, String specifications, String goodsProduceDate, String goodsStock, int nums, String supplierName, String remarks, String operator, String operatorTime, String local) {
        this.id = id;
        this.goodsType = goodsType;
        this.goodsName = goodsName;
        this.specifications = specifications;
        this.goodsProduceDate = goodsProduceDate;
        this.goodsStock = goodsStock;
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

    public String getGoodsStock() {
        return goodsStock;
    }

    public void setGoodsStock(String goodsStock) {
        this.goodsStock = goodsStock;
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
        return "GoodsStock{" +
                "id=" + id +
                ", goodsType='" + goodsType + '\'' +
                ", goodsName='" + goodsName + '\'' +
                ", specifications='" + specifications + '\'' +
                ", goodsProduceDate='" + goodsProduceDate + '\'' +
                ", goodsStock='" + goodsStock + '\'' +
                ", nums=" + nums +
                ", supplierName='" + supplierName + '\'' +
                ", remarks='" + remarks + '\'' +
                ", operator='" + operator + '\'' +
                ", operatorTime='" + operatorTime + '\'' +
                ", local='" + local + '\'' +
                '}';
    }
}
