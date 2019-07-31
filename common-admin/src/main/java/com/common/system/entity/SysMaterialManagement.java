package com.common.system.entity;

public class SysMaterialManagement {
    private int id;
    private int pid;
    //层级、物料编码
    private String title;
    //工厂
    private String factory;
    //类型
    private String materialtype;
    //名称
    private String materialName;
    //规格
    private String materialSpecification;
    //备注
    private String remarks;
    //操作人
    private String operator;
    //操作时间
    private String operatorTime;
    public SysMaterialManagement(){}
    public SysMaterialManagement(int id, int pid, String title, String factory, String materialtype, String materialName, String materialSpecification, String remarks, String operator, String operatorTime) {
        this.id = id;
        this.pid = pid;
        this.title = title;
        this.factory = factory;
        this.materialtype = materialtype;
        this.materialName = materialName;
        this.materialSpecification = materialSpecification;
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

    public String getFactory() {
        return factory;
    }

    public void setFactory(String factory) {
        this.factory = factory;
    }

    public String getMaterialtype() {
        return materialtype;
    }

    public void setMaterialtype(String materialtype) {
        this.materialtype = materialtype;
    }

    public String getMaterialName() {
        return materialName;
    }

    public void setMaterialName(String materialName) {
        this.materialName = materialName;
    }

    public String getMaterialSpecification() {
        return materialSpecification;
    }

    public void setMaterialSpecification(String materialSpecification) {
        this.materialSpecification = materialSpecification;
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
        this.operatorTime = operatorTime;
    }

    @Override
    public String toString() {
        return "SysMaterialManagement{" +
                "id=" + id +
                ", pid=" + pid +
                ", title='" + title + '\'' +
                ", factory='" + factory + '\'' +
                ", materialtype='" + materialtype + '\'' +
                ", materialName='" + materialName + '\'' +
                ", materialSpecification='" + materialSpecification + '\'' +
                ", remarks='" + remarks + '\'' +
                ", operator='" + operator + '\'' +
                ", operatorTime='" + operatorTime + '\'' +
                '}';
    }
}
