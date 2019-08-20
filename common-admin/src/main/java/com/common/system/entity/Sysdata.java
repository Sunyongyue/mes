package com.common.system.entity;

public class Sysdata {
    private int id;
    private int pid;
    private String title;
    private String dataname;
    private String operator;
    private String operatorTime;
    public Sysdata(){}
    public Sysdata(int id, int pid, String title, String dataname, String operator, String operatorTime) {
        this.id = id;
        this.pid = pid;
        this.title = title;
        this.dataname = dataname;
        this.operator = operator;
        this.operatorTime = operatorTime.substring(0,19);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDataname() {
        return dataname;
    }

    public void setDataname(String dataname) {
        this.dataname = dataname;
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
        return "Sysdata{" +
                "id=" + id +
                ", pid=" + pid +
                ", title='" + title + '\'' +
                ", dataname='" + dataname + '\'' +
                ", operator='" + operator + '\'' +
                ", operatorTime='" + operatorTime + '\'' +
                '}';
    }
}
