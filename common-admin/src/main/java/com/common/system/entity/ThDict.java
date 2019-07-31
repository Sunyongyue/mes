package com.common.system.entity;

public class ThDict {
    //唯一id
    private int id;
    //父id
    private int pid;
    //产品编码
    private String title;
    //产品名称
    private String goodsName;
    //产品类型
    private String goodsType;
    //产品单位
    private String goodsUnit;
    //产品默认库
    private String goodsStock;
    public ThDict(){}

    public ThDict(int id, int pid, String title, String goodsName, String goodsType, String goodsUnit, String goodsStock) {
        this.id = id;
        this.pid = pid;
        this.title = title;
        this.goodsName = goodsName;
        this.goodsType = goodsType;
        this.goodsUnit = goodsUnit;
        this.goodsStock = goodsStock;
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

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public String getGoodsType() {
        return goodsType;
    }

    public void setGoodsType(String goodsType) {
        this.goodsType = goodsType;
    }

    public String getGoodsUnit() {
        return goodsUnit;
    }

    public void setGoodsUnit(String goodsUnit) {
        this.goodsUnit = goodsUnit;
    }

    public String getGoodsStock() {
        return goodsStock;
    }

    public void setGoodsStock(String goodsStock) {
        this.goodsStock = goodsStock;
    }

    @Override
    public String toString() {
        return "ThDict{" +
                "id=" + id +
                ", pid=" + pid +
                ", title='" + title + '\'' +
                ", goodsName='" + goodsName + '\'' +
                ", goodsType='" + goodsType + '\'' +
                ", goodsUnit='" + goodsUnit + '\'' +
                ", goodsStock='" + goodsStock + '\'' +
                '}';
    }
}
