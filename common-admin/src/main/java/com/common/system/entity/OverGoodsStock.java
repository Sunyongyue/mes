package com.common.system.entity;

public class OverGoodsStock {
    private int id;
    //产品名称
    private String goodsName;
    //产品规格
    private String specifications;
    //进气方向
    private String intakeDirection;
    //库存仓库
    private String stockWarehouse;
    //库存数量
    private int nums;
    //操作人
    private String operator;
    //操作时间
    private String operatorTime;
    //备注
    private String remarks;
    public OverGoodsStock(){}
    public OverGoodsStock(int id, String goodsName, String specifications, String intakeDirection, String stockWarehouse, int nums, String operator, String operatorTime, String remarks) {
        this.id = id;
        this.goodsName = goodsName;
        this.specifications = specifications;
        this.intakeDirection = intakeDirection;
        this.stockWarehouse = stockWarehouse;
        this.nums = nums;
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

    public String getIntakeDirection() {
        return intakeDirection;
    }

    public void setIntakeDirection(String intakeDirection) {
        this.intakeDirection = intakeDirection;
    }

    public String getStockWarehouse() {
        return stockWarehouse;
    }

    public void setStockWarehouse(String stockWarehouse) {
        this.stockWarehouse = stockWarehouse;
    }

    public int getNums() {
        return nums;
    }

    public void setNums(int nums) {
        this.nums = nums;
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

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    @Override
    public String toString() {
        return "OverGoodsStock{" +
                "id=" + id +
                ", goodsName='" + goodsName + '\'' +
                ", specifications='" + specifications + '\'' +
                ", intakeDirection='" + intakeDirection + '\'' +
                ", stockWarehouse='" + stockWarehouse + '\'' +
                ", nums=" + nums +
                ", operator='" + operator + '\'' +
                ", operatorTime='" + operatorTime + '\'' +
                ", remarks='" + remarks + '\'' +
                '}';
    }
}
