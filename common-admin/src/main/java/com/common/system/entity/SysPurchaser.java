package com.common.system.entity;

public class SysPurchaser {
    private int id;
    //采购商地址
    private String local;
    //采购商编号
    private String purchaserNums;
    //采购商名称
    private String purchaserName;
    //燃气集团
    private String gasGroup;
    //联系人
    private String contacts;
    //联系电话
    private String tel;
    //IP地址
    private String ipAddress;
    //端口号
    private String ipPort;
    //邮箱
    private String email;
    //详细地址
    private String localMore;
    //备注
    private String remarks;
    //操作人
    private String operator;
    //操作时间
    private String operatorTime;
    public SysPurchaser(){}
    public SysPurchaser(int id, String local, String purchaserNums, String purchaserName, String gasGroup, String contacts, String tel, String ipAddress, String ipPort, String email, String localMore, String remarks, String operator, String operatorTime) {
        this.id = id;
        this.local = local;
        this.purchaserNums = purchaserNums;
        this.purchaserName = purchaserName;
        this.gasGroup = gasGroup;
        this.contacts = contacts;
        this.tel = tel;
        this.ipAddress = ipAddress;
        this.ipPort = ipPort;
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

    public String getPurchaserNums() {
        return purchaserNums;
    }

    public void setPurchaserNums(String purchaserNums) {
        this.purchaserNums = purchaserNums;
    }

    public String getPurchaserName() {
        return purchaserName;
    }

    public void setPurchaserName(String purchaserName) {
        this.purchaserName = purchaserName;
    }

    public String getGasGroup() {
        return gasGroup;
    }

    public void setGasGroup(String gasGroup) {
        this.gasGroup = gasGroup;
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

    public String getIpAddress() {
        return ipAddress;
    }

    public void setIpAddress(String ipAddress) {
        this.ipAddress = ipAddress;
    }

    public String getIpPort() {
        return ipPort;
    }

    public void setIpPort(String ipPort) {
        this.ipPort = ipPort;
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
        return "SysPurchaser{" +
                "id=" + id +
                ", local='" + local + '\'' +
                ", purchaserNums='" + purchaserNums + '\'' +
                ", purchaserName='" + purchaserName + '\'' +
                ", gasGroup='" + gasGroup + '\'' +
                ", contacts='" + contacts + '\'' +
                ", tel='" + tel + '\'' +
                ", ipAddress='" + ipAddress + '\'' +
                ", ipPort='" + ipPort + '\'' +
                ", email='" + email + '\'' +
                ", localMore='" + localMore + '\'' +
                ", remarks='" + remarks + '\'' +
                ", operator='" + operator + '\'' +
                ", operatorTime='" + operatorTime + '\'' +
                '}';
    }
}
