package com.common.system.entity;

public class SysSupplier {
    private int id;
    //供应商地址
    private String local;
    //供应商编号
    private String supplierNums;
    //供应商名称
    private String supplierName;
    //联系人
    private String contacts;
    //联系电话
    private String tel;
    //邮箱
    private String email;
    //详细地址
    private String localMore;
    //备注
    private String remarks;
    //操作员
    private String operator;
    //操作时间
    private String operatorTime;
    public SysSupplier(){}
    public SysSupplier(int id, String local, String supplierNums, String supplierName, String contacts, String tel, String email, String localMore, String remarks, String operator, String operatorTime) {
        this.id = id;
        this.local = local;
        this.supplierNums = supplierNums;
        this.supplierName = supplierName;
        this.contacts = contacts;
        this.tel = tel;
        this.email = email;
        this.localMore = localMore;
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

    public String getLocal() {
        return local;
    }

    public void setLocal(String local) {
        this.local = local;
    }

    public String getSupplierNums() {
        return supplierNums;
    }

    public void setSupplierNums(String supplierNums) {
        this.supplierNums = supplierNums;
    }

    public String getSupplierName() {
        return supplierName;
    }

    public void setSupplierName(String supplierName) {
        this.supplierName = supplierName;
    }

    public String getContacts() {
        return contacts;
    }

    public void setContacts(String contacts) {
        this.contacts = contacts;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getLocalMore() {
        return localMore;
    }

    public void setLocalMore(String localMore) {
        this.localMore = localMore;
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
        return "SysSupplier{" +
                "id=" + id +
                ", local='" + local + '\'' +
                ", supplierNums='" + supplierNums + '\'' +
                ", supplierName='" + supplierName + '\'' +
                ", contacts='" + contacts + '\'' +
                ", tel='" + tel + '\'' +
                ", email='" + email + '\'' +
                ", localMore='" + localMore + '\'' +
                ", remarks='" + remarks + '\'' +
                ", operator='" + operator + '\'' +
                ", operatorTime='" + operatorTime + '\'' +
                '}';
    }
}
