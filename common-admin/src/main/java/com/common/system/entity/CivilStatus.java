package com.common.system.entity;

public class CivilStatus {
    //状态
    private String code;
    //通讯号
    private String ConfDeviceAddr;
    //包序号（没意义）
    private String ConfPktSer;
    //配置类型
    private String ConfValveModel;
    public CivilStatus(){}
    public CivilStatus(String code, String confDeviceAddr, String confPktSer, String confValveModel) {
        this.code = code;
        ConfDeviceAddr = confDeviceAddr;
        ConfPktSer = confPktSer;
        ConfValveModel = confValveModel;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getConfDeviceAddr() {
        return ConfDeviceAddr;
    }

    public void setConfDeviceAddr(String confDeviceAddr) {
        ConfDeviceAddr = confDeviceAddr;
    }

    public String getConfPktSer() {
        return ConfPktSer;
    }

    public void setConfPktSer(String confPktSer) {
        ConfPktSer = confPktSer;
    }

    public String getConfValveModel() {
        return ConfValveModel;
    }

    public void setConfValveModel(String confValveModel) {
        ConfValveModel = confValveModel;
    }

    @Override
    public String toString() {
        return "CivilStatus{" +
                "code='" + code + '\'' +
                ", ConfDeviceAddr='" + ConfDeviceAddr + '\'' +
                ", ConfPktSer='" + ConfPktSer + '\'' +
                ", ConfValveModel='" + ConfValveModel + '\'' +
                '}';
    }
}
