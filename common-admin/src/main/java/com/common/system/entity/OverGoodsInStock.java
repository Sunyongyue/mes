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
    //pressure 使用压力
    private String pressure;
    //阀门厂商
    private String valveSupplier;
    //阀门名称
    private String valveName;
    //阀门规格
    private String valveSpecifications;
    //控制主板厂商
    private String controlMainboardSupplier;
    //控制主板名称
    private String controlMainboardName;
    //控制主板规格
    private String controlMainboardSpecifications;
    //程序版本
    private String version;
    //通讯主板厂商
    private String telMainBoardSupplier;
    //通讯主板名称
    private String telMainBoardName;
    private String telMainBoardSpecifications;
    private String telType;
    //485主板厂商
    private String fourSupplier;
    private String fourMainBoardName;
    private String fourSpecifications;
    private String telProtocol;

    public OverGoodsInStock(){}

    public OverGoodsInStock(int id, String productNum, String goodsName, String specifications, String intakeDirection, String testDate, int nums, String operator, String operatorTime, String testRemarks, String pressure, String valveSupplier, String valveName, String valveSpecifications, String controlMainboardSupplier, String controlMainboardName, String controlMainboardSpecifications, String version, String telMainBoardSupplier, String telMainBoardName, String telMainBoardSpecifications, String telType, String fourSupplier, String fourMainBoardName, String fourSpecifications, String telProtocol) {
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
        this.pressure = pressure;
        this.valveSupplier = valveSupplier;
        this.valveName = valveName;
        this.valveSpecifications = valveSpecifications;
        this.controlMainboardSupplier = controlMainboardSupplier;
        this.controlMainboardName = controlMainboardName;
        this.controlMainboardSpecifications = controlMainboardSpecifications;
        this.version = version;
        this.telMainBoardSupplier = telMainBoardSupplier;
        this.telMainBoardName = telMainBoardName;
        this.telMainBoardSpecifications = telMainBoardSpecifications;
        this.telType = telType;
        this.fourSupplier = fourSupplier;
        this.fourMainBoardName = fourMainBoardName;
        this.fourSpecifications = fourSpecifications;
        this.telProtocol = telProtocol;
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
        this.operatorTime = operatorTime;
    }

    public String getTestRemarks() {
        return testRemarks;
    }

    public void setTestRemarks(String testRemarks) {
        this.testRemarks = testRemarks;
    }

    public String getPressure() {
        return pressure;
    }

    public void setPressure(String pressure) {
        this.pressure = pressure;
    }

    public String getValveSupplier() {
        return valveSupplier;
    }

    public void setValveSupplier(String valveSupplier) {
        this.valveSupplier = valveSupplier;
    }

    public String getValveName() {
        return valveName;
    }

    public void setValveName(String valveName) {
        this.valveName = valveName;
    }

    public String getValveSpecifications() {
        return valveSpecifications;
    }

    public void setValveSpecifications(String valveSpecifications) {
        this.valveSpecifications = valveSpecifications;
    }

    public String getControlMainboardSupplier() {
        return controlMainboardSupplier;
    }

    public void setControlMainboardSupplier(String controlMainboardSupplier) {
        this.controlMainboardSupplier = controlMainboardSupplier;
    }

    public String getControlMainboardName() {
        return controlMainboardName;
    }

    public void setControlMainboardName(String controlMainboardName) {
        this.controlMainboardName = controlMainboardName;
    }

    public String getControlMainboardSpecifications() {
        return controlMainboardSpecifications;
    }

    public void setControlMainboardSpecifications(String controlMainboardSpecifications) {
        this.controlMainboardSpecifications = controlMainboardSpecifications;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public String getTelMainBoardSupplier() {
        return telMainBoardSupplier;
    }

    public void setTelMainBoardSupplier(String telMainBoardSupplier) {
        this.telMainBoardSupplier = telMainBoardSupplier;
    }

    public String getTelMainBoardName() {
        return telMainBoardName;
    }

    public void setTelMainBoardName(String telMainBoardName) {
        this.telMainBoardName = telMainBoardName;
    }

    public String getTelMainBoardSpecifications() {
        return telMainBoardSpecifications;
    }

    public void setTelMainBoardSpecifications(String telMainBoardSpecifications) {
        this.telMainBoardSpecifications = telMainBoardSpecifications;
    }

    public String getTelType() {
        return telType;
    }

    public void setTelType(String telType) {
        this.telType = telType;
    }

    public String getFourSupplier() {
        return fourSupplier;
    }

    public void setFourSupplier(String fourSupplier) {
        this.fourSupplier = fourSupplier;
    }

    public String getFourMainBoardName() {
        return fourMainBoardName;
    }

    public void setFourMainBoardName(String fourMainBoardName) {
        this.fourMainBoardName = fourMainBoardName;
    }

    public String getFourSpecifications() {
        return fourSpecifications;
    }

    public void setFourSpecifications(String fourSpecifications) {
        this.fourSpecifications = fourSpecifications;
    }

    public String getTelProtocol() {
        return telProtocol;
    }

    public void setTelProtocol(String telProtocol) {
        this.telProtocol = telProtocol;
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
                ", pressure='" + pressure + '\'' +
                ", valveSupplier='" + valveSupplier + '\'' +
                ", valveName='" + valveName + '\'' +
                ", valveSpecifications='" + valveSpecifications + '\'' +
                ", controlMainboardSupplier='" + controlMainboardSupplier + '\'' +
                ", controlMainboardName='" + controlMainboardName + '\'' +
                ", controlMainboardSpecifications='" + controlMainboardSpecifications + '\'' +
                ", version='" + version + '\'' +
                ", telMainBoardSupplier='" + telMainBoardSupplier + '\'' +
                ", telMainBoardName='" + telMainBoardName + '\'' +
                ", telMainBoardSpecifications='" + telMainBoardSpecifications + '\'' +
                ", telType='" + telType + '\'' +
                ", fourSupplier='" + fourSupplier + '\'' +
                ", fourMainBoardName='" + fourMainBoardName + '\'' +
                ", fourSpecifications='" + fourSpecifications + '\'' +
                ", telProtocol='" + telProtocol + '\'' +
                '}';
    }
}
