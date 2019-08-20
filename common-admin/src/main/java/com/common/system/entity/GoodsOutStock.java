package com.common.system.entity;

public class GoodsOutStock {
    private int id;
    private String goodsType;
    private String goodsName;
    private String specifications;
    private String goodsProduceDate;
    private String status;
    private String outStockType;
    private int nums;
    private String supplierName;
    private String pipelineNumber;
    private String remarks;
    private String operator;
    private String operatorTime;
    private String local;
    public GoodsOutStock(){}
    public GoodsOutStock(int id, String goodsType, String goodsName, String specifications, String goodsProduceDate, String status, String outStockType, int nums, String supplierName, String pipelineNumber, String remarks, String operator, String operatorTime, String local) {
        this.id = id;
        this.goodsType = goodsType;
        this.goodsName = goodsName;
        this.specifications = specifications;
        this.goodsProduceDate = goodsProduceDate;
        this.status = status;
        this.outStockType = outStockType;
        this.nums = nums;
        this.supplierName = supplierName;
        this.pipelineNumber = pipelineNumber;
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

    public String getOutStockType() {
        return outStockType;
    }

    public void setOutStockType(String outStockType) {
        this.outStockType = outStockType;
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

    public String getPipelineNumber() {
        return pipelineNumber;
    }

    public void setPipelineNumber(String pipelineNumber) {
        this.pipelineNumber = pipelineNumber;
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
        return "GoodsOutStock{" +
                "id=" + id +
                ", goodsType='" + goodsType + '\'' +
                ", goodsName='" + goodsName + '\'' +
                ", specifications='" + specifications + '\'' +
                ", goodsProduceDate='" + goodsProduceDate + '\'' +
                ", status='" + status + '\'' +
                ", outStockType='" + outStockType + '\'' +
                ", nums=" + nums +
                ", supplierName='" + supplierName + '\'' +
                ", pipelineNumber='" + pipelineNumber + '\'' +
                ", remarks='" + remarks + '\'' +
                ", operator='" + operator + '\'' +
                ", operatorTime='" + operatorTime + '\'' +
                ", local='" + local + '\'' +
                '}';
    }
}
