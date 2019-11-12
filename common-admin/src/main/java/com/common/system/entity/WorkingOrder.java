package com.common.system.entity;

public class WorkingOrder {
    private int id;
    //工序名称
    private String orderName;
    //调字轮
    private String adjustingWheel;
    //安装取样片/计数器
    private String installationOfSample;
    //安装线束
    private String wiringHarness;
    //安装底壳及线路板
    private String installOfBoard;
    //安装标牌及条形码
    private String installOfSigns;
    //安装上壳
    private String upperShell;
    //检测
    private String testing;
    //装箱
    private String boxing;
    //备注
    private String remarks;
    private int status;
    private String operator;
    private String operatorTime;
    public WorkingOrder(){}

    public WorkingOrder(int id, String orderName, String adjustingWheel, String installationOfSample, String wiringHarness, String installOfBoard, String installOfSigns, String upperShell, String testing, String boxing, String remarks, int status, String operator, String operatorTime) {
        this.id = id;
        this.orderName = orderName;
        this.adjustingWheel = adjustingWheel;
        this.installationOfSample = installationOfSample;
        this.wiringHarness = wiringHarness;
        this.installOfBoard = installOfBoard;
        this.installOfSigns = installOfSigns;
        this.upperShell = upperShell;
        this.testing = testing;
        this.boxing = boxing;
        this.remarks = remarks;
        this.status = status;
        this.operator = operator;
        this.operatorTime = operatorTime;
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

    public String getOrderName() {
        return orderName;
    }

    public void setOrderName(String orderName) {
        this.orderName = orderName;
    }

    public String getAdjustingWheel() {
        return adjustingWheel;
    }

    public void setAdjustingWheel(String adjustingWheel) {
        this.adjustingWheel = adjustingWheel;
    }

    public String getInstallationOfSample() {
        return installationOfSample;
    }

    public void setInstallationOfSample(String installationOfSample) {
        this.installationOfSample = installationOfSample;
    }

    public String getWiringHarness() {
        return wiringHarness;
    }

    public void setWiringHarness(String wiringHarness) {
        this.wiringHarness = wiringHarness;
    }

    public String getInstallOfBoard() {
        return installOfBoard;
    }

    public void setInstallOfBoard(String installOfBoard) {
        this.installOfBoard = installOfBoard;
    }

    public String getInstallOfSigns() {
        return installOfSigns;
    }

    public void setInstallOfSigns(String installOfSigns) {
        this.installOfSigns = installOfSigns;
    }

    public String getUpperShell() {
        return upperShell;
    }

    public void setUpperShell(String upperShell) {
        this.upperShell = upperShell;
    }

    public String getTesting() {
        return testing;
    }

    public void setTesting(String testing) {
        this.testing = testing;
    }

    public String getBoxing() {
        return boxing;
    }

    public void setBoxing(String boxing) {
        this.boxing = boxing;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "WorkingOrder{" +
                "id=" + id +
                ", orderName='" + orderName + '\'' +
                ", adjustingWheel='" + adjustingWheel + '\'' +
                ", installationOfSample='" + installationOfSample + '\'' +
                ", wiringHarness='" + wiringHarness + '\'' +
                ", installOfBoard='" + installOfBoard + '\'' +
                ", installOfSigns='" + installOfSigns + '\'' +
                ", upperShell='" + upperShell + '\'' +
                ", testing='" + testing + '\'' +
                ", boxing='" + boxing + '\'' +
                ", remarks='" + remarks + '\'' +
                ", status=" + status +
                ", operator='" + operator + '\'' +
                ", operatorTime='" + operatorTime + '\'' +
                '}';
    }
}
