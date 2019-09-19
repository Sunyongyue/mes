package com.common.system.entity;

public class AssistConf {
    private String valveSupplier;
    private String valveName;
    private String valveSpecifications;
    private String ConfPulse;
    private int ConfAlarmVol;
    private int ConfOpenTime;
    private int ConfCloseTime;
    private int ConfReserveVol;
    public AssistConf(){}
    public AssistConf(String valveSupplier, String valveName, String valveSpecifications, String confPulse, int confAlarmVol, int confOpenTime, int confCloseTime, int confReserveVol) {
        this.valveSupplier = valveSupplier;
        this.valveName = valveName;
        this.valveSpecifications = valveSpecifications;
        ConfPulse = confPulse;
        ConfAlarmVol = confAlarmVol;
        ConfOpenTime = confOpenTime;
        ConfCloseTime = confCloseTime;
        ConfReserveVol = confReserveVol;
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

    public String getConfPulse() {
        return ConfPulse;
    }

    public void setConfPulse(String confPulse) {
        ConfPulse = confPulse;
    }

    public int getConfAlarmVol() {
        return ConfAlarmVol;
    }

    public void setConfAlarmVol(int confAlarmVol) {
        ConfAlarmVol = confAlarmVol;
    }

    public int getConfOpenTime() {
        return ConfOpenTime;
    }

    public void setConfOpenTime(int confOpenTime) {
        ConfOpenTime = confOpenTime;
    }

    public int getConfCloseTime() {
        return ConfCloseTime;
    }

    public void setConfCloseTime(int confCloseTime) {
        ConfCloseTime = confCloseTime;
    }

    public int getConfReserveVol() {
        return ConfReserveVol;
    }

    public void setConfReserveVol(int confReserveVol) {
        ConfReserveVol = confReserveVol;
    }

    @Override
    public String toString() {
        return "AssistConf{" +
                "valveSupplier='" + valveSupplier + '\'' +
                ", valveName='" + valveName + '\'' +
                ", valveSpecifications='" + valveSpecifications + '\'' +
                ", ConfPulse='" + ConfPulse + '\'' +
                ", ConfAlarmVol=" + ConfAlarmVol +
                ", ConfOpenTime=" + ConfOpenTime +
                ", ConfCloseTime=" + ConfCloseTime +
                ", ConfReserveVol=" + ConfReserveVol +
                '}';
    }
}
