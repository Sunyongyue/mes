package com.common.system.entity;

public class OverGoodsInStock {
    private int id;
    private String productNum;
    //产品名称
    private String goodsName;
    //产品规格
    private String specifications;
    //进气方向
    private String intakeDirection;
    //检测日期
    private String testDate;
    //数量
    private int nums;
    //操作员
    private String operator;
    //操作时间
    private String operatorTime;
    //备注
    private String testRemarks;
    public OverGoodsInStock(){}
    public OverGoodsInStock(int id, String productNum, String goodsName, String specifications, String intakeDirection, String testDate, int nums, String operator, String operatorTime, String testRemarks) {
        this.id = id;
        this.productNum = productNum;
        this.goodsName = goodsName;
        this.specifications = specifications;
        this.intakeDirection = intakeDirection;
        this.testDate = testDate;
        this.nums = nums;
        this.operator = operator;
        this.operatorTime = operatorTime;
        this.testRemarks = testRemarks;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getIntakeDirection() {
        return intakeDirection;
    }

    public void setIntakeDirection(String intakeDirection) {
        this.intakeDirection = intakeDirection;
    }

    public String getTestDate() {
        return testDate;
    }

    public void setTestDate(String testDate) {
        this.testDate = testDate;
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

    public String getTestRemarks() {
        return testRemarks;
    }

    public void setTestRemarks(String testRemarks) {
        this.testRemarks = testRemarks;
    }

    @Override
    public String toString() {
        return "OverGoodsInStock{" +
                "id=" + id +
                ", productNum='" + productNum + '\'' +
                ", goodsName='" + goodsName + '\'' +
                ", specifications='" + specifications + '\'' +
                ", intakeDirection='" + intakeDirection + '\'' +
                ", testDate='" + testDate + '\'' +
                ", nums=" + nums +
                ", operator='" + operator + '\'' +
                ", operatorTime='" + operatorTime + '\'' +
                ", testRemarks='" + testRemarks + '\'' +
                '}';
    }
}
