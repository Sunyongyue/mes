package com.common.system.entity;

public class ConfigMes {
    private int id;
    //公司代码
    private String productNum;
    private String CoName;
    //域名
    private String CoOwnArea;
    private String CoIp;

    private int CoPort;
    //APN
    private String CoAPN;

    private String CoDomain;
    //备注
    private String CoRemarks;
    //阀门模型
    private String ConfValveModel;
    //包序号
    private int ConfPktSer;
    //设备类型
    private String ConfDeviceType;
    //公司代码
    private int ConfCoNum;
    //设备地址
    private String ConfDeviceAddr;
    //用户地址
    private String ConfUserAddr;
    //上线时间
    private String ConfUpTime;
    //上线间隔
    private int ConfUpCyc;
    //计量方式
    private String ConfVolType;
    //计费方式
    private String ConfPayType;
    //阀门类型
    private String ConfValveType;
    //报警方数
    private int ConfAlarmVol;
    //时间系数、过流
    private int ConfOverFlowCoef;
    //预留气量
    private int ConfReserveVol;
    //充值上限
    private int ConfRechargeLimit;
    //脉冲当量
    private double ConfPulse;
    //预留保留
    private String ConfReserveFlag;
    //结算日期
    private int ConfPayDay;
    //结算周期
    private String ConfPayCyc;
    //透支气量
    private int ConfAllowVol;
    //开阀时间
    private double ConfOpenTime;
    //关阀时间
    private double ConfCloseTime;
    //信号源
    private String ConfSignalSrc;
    //抄表信道1
    private int ConfChan1;
    //抄表功率1
    private int ConfPower1;
    //抄表信道2
    private int ConfChan2;
    //抄表功率2
    private int ConfPower2;
    //状态1 待下发，状态2 已下发,状态3 接收成功,状态4 重复,状态5 执行成功,状态6 执行失败//数据迁移7 有线写入 8远程写入
    private  int status;
    //计费周期时长
    private int ConfPayCycNum;
    //微漏时间阀值
    private int microleakageTime;
    //失联时间
    private int noContactTime;
    //不用气时间阀值
    private int noUseGasDay;
    //流量计厂家
    private String flowmeter;
    //485协议版本
    private String fourVersion;
    private String creat_date;
    private String return_date;
    private String code;
    public ConfigMes(){}

    public ConfigMes(int id, String productNum, String coName, String coOwnArea, String coIp, int coPort, String coAPN, String coDomain, String coRemarks, String confValveModel, int confPktSer, String confDeviceType, int confCoNum, String confDeviceAddr, String confUserAddr, String confUpTime, int confUpCyc, String confVolType, String confPayType, String confValveType, int confAlarmVol, int confOverFlowCoef, int confReserveVol, int confRechargeLimit, double confPulse, String confReserveFlag, int confPayDay, String confPayCyc, int confAllowVol, double confOpenTime, double confCloseTime, String confSignalSrc, int confChan1, int confPower1, int confChan2, int confPower2, int status, int confPayCycNum, int microleakageTime, int noContactTime, int noUseGasDay, String flowmeter, String fourVersion, String creat_date,String return_date,String code) {
        this.id = id;
        this.productNum = productNum;
        CoName = coName;
        CoOwnArea = coOwnArea;
        CoIp = coIp;
        CoPort = coPort;
        CoAPN = coAPN;
        CoDomain = coDomain;
        CoRemarks = coRemarks;
        ConfValveModel = confValveModel;
        ConfPktSer = confPktSer;
        ConfDeviceType = confDeviceType;
        ConfCoNum = confCoNum;
        ConfDeviceAddr = confDeviceAddr;
        ConfUserAddr = confUserAddr;
        ConfUpTime = confUpTime;
        ConfUpCyc = confUpCyc;
        ConfVolType = confVolType;
        ConfPayType = confPayType;
        ConfValveType = confValveType;
        ConfAlarmVol = confAlarmVol;
        ConfOverFlowCoef = confOverFlowCoef;
        ConfReserveVol = confReserveVol;
        ConfRechargeLimit = confRechargeLimit;
        ConfPulse = confPulse;
        ConfReserveFlag = confReserveFlag;
        ConfPayDay = confPayDay;
        ConfPayCyc = confPayCyc;
        ConfAllowVol = confAllowVol;
        ConfOpenTime = confOpenTime;
        ConfCloseTime = confCloseTime;
        ConfSignalSrc = confSignalSrc;
        ConfChan1 = confChan1;
        ConfPower1 = confPower1;
        ConfChan2 = confChan2;
        ConfPower2 = confPower2;
        this.status = status;
        ConfPayCycNum = confPayCycNum;
        this.microleakageTime = microleakageTime;
        this.noContactTime = noContactTime;
        this.noUseGasDay = noUseGasDay;
        this.flowmeter = flowmeter;
        this.fourVersion = fourVersion;
        this.creat_date = creat_date;
        this.return_date=return_date;
        this.code=code;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProductNum() {
        return productNum;
    }

    public void setProductNum(String productNum) {
        this.productNum = productNum;
    }

    public String getCoName() {
        return CoName;
    }

    public void setCoName(String coName) {
        CoName = coName;
    }

    public String getCoOwnArea() {
        return CoOwnArea;
    }

    public void setCoOwnArea(String coOwnArea) {
        CoOwnArea = coOwnArea;
    }

    public String getCoIp() {
        return CoIp;
    }

    public void setCoIp(String coIp) {
        CoIp = coIp;
    }

    public int getCoPort() {
        return CoPort;
    }

    public void setCoPort(int coPort) {
        CoPort = coPort;
    }

    public String getCoAPN() {
        return CoAPN;
    }

    public void setCoAPN(String coAPN) {
        CoAPN = coAPN;
    }

    public String getCoDomain() {
        return CoDomain;
    }

    public void setCoDomain(String coDomain) {
        CoDomain = coDomain;
    }

    public String getCoRemarks() {
        return CoRemarks;
    }

    public void setCoRemarks(String coRemarks) {
        CoRemarks = coRemarks;
    }

    public String getConfValveModel() {
        return ConfValveModel;
    }

    public void setConfValveModel(String confValveModel) {
        ConfValveModel = confValveModel;
    }

    public int getConfPktSer() {
        return ConfPktSer;
    }

    public void setConfPktSer(int confPktSer) {
        ConfPktSer = confPktSer;
    }

    public String getConfDeviceType() {
        return ConfDeviceType;
    }

    public void setConfDeviceType(String confDeviceType) {
        ConfDeviceType = confDeviceType;
    }

    public int getConfCoNum() {
        return ConfCoNum;
    }

    public void setConfCoNum(int confCoNum) {
        ConfCoNum = confCoNum;
    }

    public String getConfDeviceAddr() {
        return ConfDeviceAddr;
    }

    public void setConfDeviceAddr(String confDeviceAddr) {
        ConfDeviceAddr = confDeviceAddr;
    }

    public String getConfUserAddr() {
        return ConfUserAddr;
    }

    public void setConfUserAddr(String confUserAddr) {
        ConfUserAddr = confUserAddr;
    }

    public String getConfUpTime() {
        return ConfUpTime;
    }

    public void setConfUpTime(String confUpTime) {
        ConfUpTime = confUpTime;
    }

    public int getConfUpCyc() {
        return ConfUpCyc;
    }

    public void setConfUpCyc(int confUpCyc) {
        ConfUpCyc = confUpCyc;
    }

    public String getConfVolType() {
        return ConfVolType;
    }

    public void setConfVolType(String confVolType) {
        ConfVolType = confVolType;
    }

    public String getConfPayType() {
        return ConfPayType;
    }

    public void setConfPayType(String confPayType) {
        ConfPayType = confPayType;
    }

    public String getConfValveType() {
        return ConfValveType;
    }

    public void setConfValveType(String confValveType) {
        ConfValveType = confValveType;
    }

    public int getConfAlarmVol() {
        return ConfAlarmVol;
    }

    public void setConfAlarmVol(int confAlarmVol) {
        ConfAlarmVol = confAlarmVol;
    }

    public int getConfOverFlowCoef() {
        return ConfOverFlowCoef;
    }

    public void setConfOverFlowCoef(int confOverFlowCoef) {
        ConfOverFlowCoef = confOverFlowCoef;
    }

    public int getConfReserveVol() {
        return ConfReserveVol;
    }

    public void setConfReserveVol(int confReserveVol) {
        ConfReserveVol = confReserveVol;
    }

    public int getConfRechargeLimit() {
        return ConfRechargeLimit;
    }

    public void setConfRechargeLimit(int confRechargeLimit) {
        ConfRechargeLimit = confRechargeLimit;
    }

    public double getConfPulse() {
        return ConfPulse;
    }

    public void setConfPulse(double confPulse) {
        ConfPulse = confPulse;
    }

    public String getConfReserveFlag() {
        return ConfReserveFlag;
    }

    public void setConfReserveFlag(String confReserveFlag) {
        ConfReserveFlag = confReserveFlag;
    }

    public int getConfPayDay() {
        return ConfPayDay;
    }

    public void setConfPayDay(int confPayDay) {
        ConfPayDay = confPayDay;
    }

    public String getConfPayCyc() {
        return ConfPayCyc;
    }

    public void setConfPayCyc(String confPayCyc) {
        ConfPayCyc = confPayCyc;
    }

    public int getConfAllowVol() {
        return ConfAllowVol;
    }

    public void setConfAllowVol(int confAllowVol) {
        ConfAllowVol = confAllowVol;
    }

    public double getConfOpenTime() {
        return ConfOpenTime;
    }

    public void setConfOpenTime(double confOpenTime) {
        ConfOpenTime = confOpenTime;
    }

    public double getConfCloseTime() {
        return ConfCloseTime;
    }

    public void setConfCloseTime(double confCloseTime) {
        ConfCloseTime = confCloseTime;
    }

    public String getConfSignalSrc() {
        return ConfSignalSrc;
    }

    public void setConfSignalSrc(String confSignalSrc) {
        ConfSignalSrc = confSignalSrc;
    }

    public int getConfChan1() {
        return ConfChan1;
    }

    public void setConfChan1(int confChan1) {
        ConfChan1 = confChan1;
    }

    public int getConfPower1() {
        return ConfPower1;
    }

    public void setConfPower1(int confPower1) {
        ConfPower1 = confPower1;
    }

    public int getConfChan2() {
        return ConfChan2;
    }

    public void setConfChan2(int confChan2) {
        ConfChan2 = confChan2;
    }

    public int getConfPower2() {
        return ConfPower2;
    }

    public void setConfPower2(int confPower2) {
        ConfPower2 = confPower2;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getConfPayCycNum() {
        return ConfPayCycNum;
    }

    public void setConfPayCycNum(int confPayCycNum) {
        ConfPayCycNum = confPayCycNum;
    }

    public int getMicroleakageTime() {
        return microleakageTime;
    }

    public void setMicroleakageTime(int microleakageTime) {
        this.microleakageTime = microleakageTime;
    }

    public int getNoContactTime() {
        return noContactTime;
    }

    public void setNoContactTime(int noContactTime) {
        this.noContactTime = noContactTime;
    }

    public int getNoUseGasDay() {
        return noUseGasDay;
    }

    public void setNoUseGasDay(int noUseGasDay) {
        this.noUseGasDay = noUseGasDay;
    }

    public String getFlowmeter() {
        return flowmeter;
    }

    public void setFlowmeter(String flowmeter) {
        this.flowmeter = flowmeter;
    }

    public String getFourVersion() {
        return fourVersion;
    }

    public void setFourVersion(String fourVersion) {
        this.fourVersion = fourVersion;
    }

    public String getCreat_date() {
        return creat_date;
    }

    public void setCreat_date(String creat_date) {
        this.creat_date = creat_date.substring(0,19);
    }
    public String getReturn_date(){return return_date;}
    public void setReturn_date(String return_date){
        this.return_date=return_date;
    }
    public String getCode(){
        return code;
    }
    public void setCode(String code){
        this.code=code;
    }
    @Override
    public String toString() {
        return "ConfigMes{" +
                "id=" + id +
                ", productNum='" + productNum + '\'' +
                ", CoName='" + CoName + '\'' +
                ", CoOwnArea='" + CoOwnArea + '\'' +
                ", CoIp='" + CoIp + '\'' +
                ", CoPort=" + CoPort +
                ", CoAPN='" + CoAPN + '\'' +
                ", CoDomain='" + CoDomain + '\'' +
                ", CoRemarks='" + CoRemarks + '\'' +
                ", ConfValveModel='" + ConfValveModel + '\'' +
                ", ConfPktSer=" + ConfPktSer +
                ", ConfDeviceType='" + ConfDeviceType + '\'' +
                ", ConfCoNum=" + ConfCoNum +
                ", ConfDeviceAddr='" + ConfDeviceAddr + '\'' +
                ", ConfUserAddr='" + ConfUserAddr + '\'' +
                ", ConfUpTime='" + ConfUpTime + '\'' +
                ", ConfUpCyc=" + ConfUpCyc +
                ", ConfVolType='" + ConfVolType + '\'' +
                ", ConfPayType='" + ConfPayType + '\'' +
                ", ConfValveType='" + ConfValveType + '\'' +
                ", ConfAlarmVol=" + ConfAlarmVol +
                ", ConfOverFlowCoef=" + ConfOverFlowCoef +
                ", ConfReserveVol=" + ConfReserveVol +
                ", ConfRechargeLimit=" + ConfRechargeLimit +
                ", ConfPulse=" + ConfPulse +
                ", ConfReserveFlag='" + ConfReserveFlag + '\'' +
                ", ConfPayDay=" + ConfPayDay +
                ", ConfPayCyc='" + ConfPayCyc + '\'' +
                ", ConfAllowVol=" + ConfAllowVol +
                ", ConfOpenTime=" + ConfOpenTime +
                ", ConfCloseTime=" + ConfCloseTime +
                ", ConfSignalSrc='" + ConfSignalSrc + '\'' +
                ", ConfChan1=" + ConfChan1 +
                ", ConfPower1=" + ConfPower1 +
                ", ConfChan2=" + ConfChan2 +
                ", ConfPower2=" + ConfPower2 +
                ", status=" + status +
                ", ConfPayCycNum=" + ConfPayCycNum +
                ", microleakageTime=" + microleakageTime +
                ", noContactTime=" + noContactTime +
                ", noUseGasDay=" + noUseGasDay +
                ", flowmeter='" + flowmeter + '\'' +
                ", fourVersion='" + fourVersion + '\'' +
                ", return_date='" + return_date + '\'' +
                '}';
    }
}
