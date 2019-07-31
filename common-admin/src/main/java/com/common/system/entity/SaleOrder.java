package com.common.system.entity;

public class SaleOrder {
    private int id;
    //销售订单号
    private String saleNum;
    //客户名称
    private String customerName;
    //订单日期
    private String date;
    //工程名称
    private String projectName;
    //需求日期
    private String endDate;
    //产品名称
    private String productNameOrder;
    //产品规格
    private String productSpecificationsOrder;
    //使用压力
    private String customerPressure;
    //数量
    private int customerNums;
    //地址
    private String address;
    //收货人
    private String receiver;
    //联系电话
    private String telPhone;
    //物流信息
    private String logisticsInformation;
    //备注
    private String remarks;
    //操作人
    private String operator;
    //操作时间
    private String operatorTime;
    public SaleOrder(){}
    public SaleOrder(int id, String saleNum, String customerName, String date, String projectName, String endDate, String productNameOrder, String productSpecificationsOrder, String customerPressure, int customerNums, String address, String receiver, String telPhone, String logisticsInformation, String remarks, String operator, String operatorTime) {
        this.id = id;
        this.saleNum = saleNum;
        this.customerName = customerName;
        this.date = date;
        this.projectName = projectName;
        this.endDate = endDate;
        this.productNameOrder = productNameOrder;
        this.productSpecificationsOrder = productSpecificationsOrder;
        this.customerPressure = customerPressure;
        this.customerNums = customerNums;
        this.address = address;
        this.receiver = receiver;
        this.telPhone = telPhone;
        this.logisticsInformation = logisticsInformation;
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

    public String getSaleNum() {
        return saleNum;
    }

    public void setSaleNum(String saleNum) {
        this.saleNum = saleNum;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public String getProductNameOrder() {
        return productNameOrder;
    }

    public void setProductNameOrder(String productNameOrder) {
        this.productNameOrder = productNameOrder;
    }

    public String getProductSpecificationsOrder() {
        return productSpecificationsOrder;
    }

    public void setProductSpecificationsOrder(String productSpecificationsOrder) {
        this.productSpecificationsOrder = productSpecificationsOrder;
    }

    public String getCustomerPressure() {
        return customerPressure;
    }

    public void setCustomerPressure(String customerPressure) {
        this.customerPressure = customerPressure;
    }

    public int getCustomerNums() {
        return customerNums;
    }

    public void setCustomerNums(int customerNums) {
        this.customerNums = customerNums;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getReceiver() {
        return receiver;
    }

    public void setReceiver(String receiver) {
        this.receiver = receiver;
    }

    public String getTelPhone() {
        return telPhone;
    }

    public void setTelPhone(String telPhone) {
        this.telPhone = telPhone;
    }

    public String getLogisticsInformation() {
        return logisticsInformation;
    }

    public void setLogisticsInformation(String logisticsInformation) {
        this.logisticsInformation = logisticsInformation;
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
        return "SaleOrder{" +
                "id=" + id +
                ", saleNum='" + saleNum + '\'' +
                ", customerName='" + customerName + '\'' +
                ", date='" + date + '\'' +
                ", projectName='" + projectName + '\'' +
                ", endDate='" + endDate + '\'' +
                ", productNameOrder='" + productNameOrder + '\'' +
                ", productSpecificationsOrder='" + productSpecificationsOrder + '\'' +
                ", customerPressure='" + customerPressure + '\'' +
                ", customerNums=" + customerNums +
                ", address='" + address + '\'' +
                ", receiver='" + receiver + '\'' +
                ", telPhone='" + telPhone + '\'' +
                ", logisticsInformation='" + logisticsInformation + '\'' +
                ", remarks='" + remarks + '\'' +
                ", operator='" + operator + '\'' +
                ", operatorTime='" + operatorTime + '\'' +
                '}';
    }
}
