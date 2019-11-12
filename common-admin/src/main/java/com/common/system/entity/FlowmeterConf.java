package com.common.system.entity;

public class FlowmeterConf {
    private int id;
    //流量计厂家
    private String flowmeterFac;
    //通讯协议版本
    private String telProtocolVersion;
    //波特率
    private String baudRate;
    //通信数据位
    private String dataBits;
    //通信停止位
    private String stopBits;
    //奇偶校验
    private String parityCheck;
    public FlowmeterConf(){}
    public FlowmeterConf(int id, String flowmeterFac, String telProtocolVersion, String baudRate, String dataBits, String stopBits, String parityCheck) {
        this.id = id;
        this.flowmeterFac = flowmeterFac;
        this.telProtocolVersion = telProtocolVersion;
        this.baudRate = baudRate;
        this.dataBits = dataBits;
        this.stopBits = stopBits;
        this.parityCheck = parityCheck;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFlowmeterFac() {
        return flowmeterFac;
    }

    public void setFlowmeterFac(String flowmeterFac) {
        this.flowmeterFac = flowmeterFac;
    }

    public String getTelProtocolVersion() {
        return telProtocolVersion;
    }

    public void setTelProtocolVersion(String telProtocolVersion) {
        this.telProtocolVersion = telProtocolVersion;
    }

    public String getBaudRate() {
        return baudRate;
    }

    public void setBaudRate(String baudRate) {
        this.baudRate = baudRate;
    }

    public String getDataBits() {
        return dataBits;
    }

    public void setDataBits(String dataBits) {
        this.dataBits = dataBits;
    }

    public String getStopBits() {
        return stopBits;
    }

    public void setStopBits(String stopBits) {
        this.stopBits = stopBits;
    }

    public String getParityCheck() {
        return parityCheck;
    }

    public void setParityCheck(String parityCheck) {
        this.parityCheck = parityCheck;
    }

    @Override
    public String toString() {
        return "FlowmeterConf{" +
                "id=" + id +
                ", flowmeterFac='" + flowmeterFac + '\'' +
                ", telProtocolVersion='" + telProtocolVersion + '\'' +
                ", baudRate='" + baudRate + '\'' +
                ", dataBits='" + dataBits + '\'' +
                ", stopBits='" + stopBits + '\'' +
                ", parityCheck='" + parityCheck + '\'' +
                '}';
    }
}
