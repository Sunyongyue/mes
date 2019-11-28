package com.common.system.entity;

public class MainTel {
    private int id;
    private String main_DeviceAddr;
    private String main_Iphone;
    private String main_Guid;
    private String main_StartDate;
    private String main_EndDate;
    private String main_CreateTime;
    private String falg;
    private String main_PrintNum;
    private String main_ImeiNum;
    public MainTel(){}

    public MainTel(int id, String main_DeviceAddr, String main_Iphone, String main_Guid, String main_StartDate, String main_EndDate, String main_CreateTime, String falg, String main_PrintNum, String main_ImeiNum) {
        this.id = id;
        this.main_DeviceAddr = main_DeviceAddr;
        this.main_Iphone = main_Iphone;
        this.main_Guid = main_Guid;
        this.main_StartDate = main_StartDate;
        this.main_EndDate = main_EndDate;
        this.main_CreateTime = main_CreateTime;
        this.falg = falg;
        this.main_PrintNum = main_PrintNum;
        this.main_ImeiNum = main_ImeiNum;
    }

    public String getMain_PrintNum() {
        return main_PrintNum;
    }

    public void setMain_PrintNum(String main_PrintNum) {
        this.main_PrintNum = main_PrintNum;
    }

    public String getMain_ImeiNum() {
        return main_ImeiNum;
    }

    public void setMain_ImeiNum(String main_ImeiNum) {
        this.main_ImeiNum = main_ImeiNum;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMain_DeviceAddr() {
        return main_DeviceAddr;
    }

    public void setMain_DeviceAddr(String main_DeviceAddr) {
        this.main_DeviceAddr = main_DeviceAddr;
    }

    public String getMain_Iphone() {
        return main_Iphone;
    }

    public void setMain_Iphone(String main_Iphone) {
        this.main_Iphone = main_Iphone;
    }

    public String getMain_Guid() {
        return main_Guid;
    }

    public void setMain_Guid(String main_Guid) {
        this.main_Guid = main_Guid;
    }

    public String getMain_StartDate() {
        return main_StartDate;
    }

    public void setMain_StartDate(String main_StartDate) {
        this.main_StartDate = main_StartDate;
    }

    public String getMain_EndDate() {
        return main_EndDate;
    }

    public void setMain_EndDate(String main_EndDate) {
        this.main_EndDate = main_EndDate;
    }

    public String getMain_CreateTime() {
        return main_CreateTime;
    }

    public void setMain_CreateTime(String main_CreateTime) {
        this.main_CreateTime = main_CreateTime;
    }

    public String getFalg() {
        return falg;
    }

    public void setFalg(String falg) {
        this.falg = falg;
    }

    @Override
    public String toString() {
        return "MainTel{" +
                "id=" + id +
                ", main_DeviceAddr='" + main_DeviceAddr + '\'' +
                ", main_Iphone='" + main_Iphone + '\'' +
                ", main_Guid='" + main_Guid + '\'' +
                ", main_StartDate='" + main_StartDate + '\'' +
                ", main_EndDate='" + main_EndDate + '\'' +
                ", main_CreateTime='" + main_CreateTime + '\'' +
                ", falg='" + falg + '\'' +
                ", main_PrintNum='" + main_PrintNum + '\'' +
                ", main_ImeiNum='" + main_ImeiNum + '\'' +
                '}';
    }
}
