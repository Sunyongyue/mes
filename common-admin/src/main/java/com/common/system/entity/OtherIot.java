package com.common.system.entity;

public class OtherIot {
    private Integer autoObserver=1;
    private String imsi="";
    private String pskValue="";

    public OtherIot() {
    }

    public OtherIot(Integer autoObserver, String imsi, String pskValue) {
        this.autoObserver = autoObserver;
        this.imsi = imsi;
        this.pskValue = pskValue;
    }

    public Integer getAutoObserver() {
        return autoObserver;
    }

    public void setAutoObserver(Integer autoObserver) {
        this.autoObserver = autoObserver;
    }

    public String getImsi() {
        return imsi;
    }

    public void setImsi(String imsi) {
        this.imsi = imsi;
    }

    public String getPskValue() {
        return pskValue;
    }

    public void setPskValue(String pskValue) {
        this.pskValue = pskValue;
    }

    @Override
    public String toString() {
        return "OtherIot{" +
                "autoObserver=" + autoObserver +
                ", imsi='" + imsi + '\'' +
                ", pskValue='" + pskValue + '\'' +
                '}';
    }
}
