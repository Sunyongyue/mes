package com.common.system.entity;

public class ReturnOrder {
    private int ids;
    //销售订单号
    private String returnNum;
    //客户名称
    private String customerName;
    //订单日期
    private String date;
    //工程名称
    private String projectName;
    //产品名称
    private String productNameOrder;
    //产品规格
    private String productSpecificationsOrder;
    //使用压力
    private String customerPressure;
    //备注
    private String remark;
    //操作人
    private String opera;
    //操作时间
    private String operaTime;
    //状态
    private String statu;
    //退货原因
    private String reason;
    //
    private String returnSel;
    private String productNum;
    private int sort;

    public ReturnOrder() {
    }

    public ReturnOrder(int ids, String returnNum, String customerName, String date, String projectName, String productNameOrder, String productSpecificationsOrder, String customerPressure, String remark, String opera, String operaTime, String statu, String reason, String returnSel, String productNum, int sort) {
        this.ids = ids;
        this.returnNum = returnNum;
        this.customerName = customerName;
        this.date = date;
        this.projectName = projectName;
        this.productNameOrder = productNameOrder;
        this.productSpecificationsOrder = productSpecificationsOrder;
        this.customerPressure = customerPressure;
        this.remark = remark;
        this.opera = opera;
        this.operaTime = operaTime;
        this.statu = statu;
        this.reason = reason;
        this.returnSel = returnSel;
        this.productNum = productNum;
        this.sort = sort;
    }

    public int getIds() {
        return ids;
    }

    public void setIds(int ids) {
        this.ids = ids;
    }

    public String getReturnNum() {
        return returnNum;
    }

    public void setReturnNum(String returnNum) {
        this.returnNum = returnNum;
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

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getOpera() {
        return opera;
    }

    public void setOpera(String opera) {
        this.opera = opera;
    }

    public String getOperaTime() {
        return operaTime;
    }

    public void setOperaTime(String operaTime) {
        this.operaTime = operaTime;
    }

    public String getStatu() {
        return statu;
    }

    public void setStatu(String statu) {
        this.statu = statu;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public String getReturnSel() {
        return returnSel;
    }

    public void setReturnSel(String returnSel) {
        this.returnSel = returnSel;
    }

    public String getProductNum() {
        return productNum;
    }

    public void setProductNum(String productNum) {
        this.productNum = productNum;
    }

    public int getSort() {
        return sort;
    }

    public void setSort(int sort) {
        this.sort = sort;
    }

    @Override
    public String toString() {
        return "ReturnOrder{" +
                "ids=" + ids +
                ", returnNum='" + returnNum + '\'' +
                ", customerName='" + customerName + '\'' +
                ", date='" + date + '\'' +
                ", projectName='" + projectName + '\'' +
                ", productNameOrder='" + productNameOrder + '\'' +
                ", productSpecificationsOrder='" + productSpecificationsOrder + '\'' +
                ", customerPressure='" + customerPressure + '\'' +
                ", remark='" + remark + '\'' +
                ", opera='" + opera + '\'' +
                ", operaTime='" + operaTime + '\'' +
                ", statu='" + statu + '\'' +
                ", reason='" + reason + '\'' +
                ", returnSel='" + returnSel + '\'' +
                ", productNum='" + productNum + '\'' +
                ", sort=" + sort +
                '}';
    }
}
