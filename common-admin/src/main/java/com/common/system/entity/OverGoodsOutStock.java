package com.common.system.entity;

public class OverGoodsOutStock {
    private int id;
    //出厂编号
    private String outStockNumbers;
    //销售订单号
    private String saleNum;
    //客户名称
    private String customerName;
    //订单日期
    private String date;
    //工程名称
    private String projectName;
    //需求日期
    private String endDate;
    //产品名称
    private String productNameOrder;
    //产品规格
    private String productSpecificationsOrder;
    //使用压力
    private String customerPressure;
    //数量
    private int customerNums;
    //阀门供应商
    private String valveSupplier;
    //阀门编号
    private String valveNUms;
    //阀门名称
    private String valveName;
    //阀门规格
    private String valveSpecifications;
    //进气方向
    private String intakeDirection;
    //阀门生产日期
    private String vavleProductDate;
    //控制主板名称
    private String controlMainboardName;
    //控制主板规格
    private String controlMainboardSpecifications;
    //控制主板供应商
    private String controlMainboardSupplier;
    //控制主板编号
    private String controlMainBoardNums;
    //控制主板生产日期
    private String controlMainBoardProductDate;
    //通讯主板名称
    private String telMainBoardName;
    //通讯主板规格
    private String telMainBoardSpecifications;
    //通讯主板供应商
    private String telMainBoardSupplier;
    //通讯主板编号
    private String telMainBoardNums;
    //通讯主板生产日期
    private String telMainBoardProductDate;
    //通讯主板卡号
    private String cardNum;
    //通讯主板IMSi
    private String iMSI;
    private String iMEI;
    private String iCCID;
    //通讯方式
    private String telType;
    //485主板名称
    private String fourMainBoardName;
    //485主板规格
    private String fourSpecifications;
    //485供应商
    private String fourSupplier;
    //485
    private String fourMainBoardNums;
    private String fourMainBoardProductDate;
    //通信协议
    private String telProtocol;
    //生产订单编号
    private String productNum;
    //装配人
    private String assembler;
    //检测人
    private String tester;
    //装配日期
    private String productDate;
    //检测日期
    private String testDate;
    //出厂检测人
    private String outFactoryMan;
    //出厂检测时间
    private String getOutFactoryTime;
    //出库数量
    private int outStockNums;
    //出库分类
    private String outStockType;
    //备注
    private String outStockremarks;
    //出库检测员
    private String outStockTestPeople;
    //出库检测时间
    private String outStockTestTime;
    //发货人
    private String sendGoodsPeople;
    //发货时间
    private String sendGoodsTime;
    //记录状态
    private String recordStatus;
    //停机时间
    private String shutdownTime;
    //激活时间
    private String activeTime;
    //物流信息
    private String logisticsInformation;
    //指令状态
    private String code;
    //配置信息
    private String ConfValveModel;
    public OverGoodsOutStock(){}

    public OverGoodsOutStock(int id, String outStockNumbers, String saleNum, String customerName, String date, String projectName, String endDate, String productNameOrder, String productSpecificationsOrder, String customerPressure, int customerNums, String valveSupplier, String valveNUms, String valveName, String valveSpecifications, String intakeDirection, String vavleProductDate, String controlMainboardName, String controlMainboardSpecifications, String controlMainboardSupplier, String controlMainBoardNums, String controlMainBoardProductDate, String telMainBoardName, String telMainBoardSpecifications, String telMainBoardSupplier, String telMainBoardNums, String telMainBoardProductDate, String cardNum, String iMSI, String iMEI, String iCCID, String telType, String fourMainBoardName, String fourSpecifications, String fourSupplier, String fourMainBoardNums, String fourMainBoardProductDate, String telProtocol, String productNum, String assembler, String tester, String productDate, String testDate, String outFactoryMan, String getOutFactoryTime, int outStockNums, String outStockType, String outStockremarks, String outStockTestPeople, String outStockTestTime, String sendGoodsPeople, String sendGoodsTime, String recordStatus, String shutdownTime, String activeTime, String logisticsInformation) {
        this.id = id;
        this.outStockNumbers = outStockNumbers;
        this.saleNum = saleNum;
        this.customerName = customerName;
        this.date = date;
        this.projectName = projectName;
        this.endDate = endDate;
        this.productNameOrder = productNameOrder;
        this.productSpecificationsOrder = productSpecificationsOrder;
        this.customerPressure = customerPressure;
        this.customerNums = customerNums;
        this.valveSupplier = valveSupplier;
        this.valveNUms = valveNUms;
        this.valveName = valveName;
        this.valveSpecifications = valveSpecifications;
        this.intakeDirection = intakeDirection;
        this.vavleProductDate = vavleProductDate;
        this.controlMainboardName = controlMainboardName;
        this.controlMainboardSpecifications = controlMainboardSpecifications;
        this.controlMainboardSupplier = controlMainboardSupplier;
        this.controlMainBoardNums = controlMainBoardNums;
        this.controlMainBoardProductDate = controlMainBoardProductDate;
        this.telMainBoardName = telMainBoardName;
        this.telMainBoardSpecifications = telMainBoardSpecifications;
        this.telMainBoardSupplier = telMainBoardSupplier;
        this.telMainBoardNums = telMainBoardNums;
        this.telMainBoardProductDate = telMainBoardProductDate;
        this.cardNum = cardNum;
        this.iMSI = iMSI;
        this.iMEI = iMEI;
        this.iCCID = iCCID;
        this.telType = telType;
        this.fourMainBoardName = fourMainBoardName;
        this.fourSpecifications = fourSpecifications;
        this.fourSupplier = fourSupplier;
        this.fourMainBoardNums = fourMainBoardNums;
        this.fourMainBoardProductDate = fourMainBoardProductDate;
        this.telProtocol = telProtocol;
        this.productNum = productNum;
        this.assembler = assembler;
        this.tester = tester;
        this.productDate = productDate;
        this.testDate = testDate;
        this.outFactoryMan = outFactoryMan;
        this.getOutFactoryTime = getOutFactoryTime;
        this.outStockNums = outStockNums;
        this.outStockType = outStockType;
        this.outStockremarks = outStockremarks;
        this.outStockTestPeople = outStockTestPeople;
        this.outStockTestTime = outStockTestTime;
        this.sendGoodsPeople = sendGoodsPeople;
        this.sendGoodsTime = sendGoodsTime;
        this.recordStatus = recordStatus;
        this.shutdownTime = shutdownTime;
        this.activeTime = activeTime;
        this.logisticsInformation = logisticsInformation;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getConfValveModel() {
        return ConfValveModel;
    }

    public void setConfValveModel(String confValveModel) {
        ConfValveModel = confValveModel;
    }

    public String getOutStockTestPeople() {
        return outStockTestPeople;
    }

    public String getShutdownTime() {
        return shutdownTime;
    }

    public void setShutdownTime(String shutdownTime) {
        this.shutdownTime = shutdownTime;
    }

    public String getActiveTime() {
        return activeTime;
    }

    public void setActiveTime(String activeTime) {
        this.activeTime = activeTime;
    }

    public void setOutStockTestPeople(String outStockTestPeople) {
        this.outStockTestPeople = outStockTestPeople;
    }

    public String getOutStockTestTime() {
        return outStockTestTime;
    }

    public void setOutStockTestTime(String outStockTestTime) {
        this.outStockTestTime = outStockTestTime;
    }

    public String getSendGoodsPeople() {
        return sendGoodsPeople;
    }

    public void setSendGoodsPeople(String sendGoodsPeople) {
        this.sendGoodsPeople = sendGoodsPeople;
    }

    public String getSendGoodsTime() {
        return sendGoodsTime;
    }

    public void setSendGoodsTime(String sendGoodsTime) {
        this.sendGoodsTime = sendGoodsTime;
    }

    public String getRecordStatus() {
        return recordStatus;
    }

    public void setRecordStatus(String recordStatus) {
        this.recordStatus = recordStatus;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getOutStockNumbers() {
        return outStockNumbers;
    }

    public void setOutStockNumbers(String outStockNumbers) {
        this.outStockNumbers = outStockNumbers;
    }

    public String getSaleNum() {
        return saleNum;
    }

    public void setSaleNum(String saleNum) {
        this.saleNum = saleNum;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public String getProductNameOrder() {
        return productNameOrder;
    }

    public void setProductNameOrder(String productNameOrder) {
        this.productNameOrder = productNameOrder;
    }

    public String getProductSpecificationsOrder() {
        return productSpecificationsOrder;
    }

    public void setProductSpecificationsOrder(String productSpecificationsOrder) {
        this.productSpecificationsOrder = productSpecificationsOrder;
    }

    public String getCustomerPressure() {
        return customerPressure;
    }

    public void setCustomerPressure(String customerPressure) {
        this.customerPressure = customerPressure;
    }

    public int getCustomerNums() {
        return customerNums;
    }

    public void setCustomerNums(int customerNums) {
        this.customerNums = customerNums;
    }

    public String getValveSupplier() {
        return valveSupplier;
    }

    public void setValveSupplier(String valveSupplier) {
        this.valveSupplier = valveSupplier;
    }

    public String getValveNUms() {
        return valveNUms;
    }

    public void setValveNUms(String valveNUms) {
        this.valveNUms = valveNUms;
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

    public String getIntakeDirection() {
        return intakeDirection;
    }

    public void setIntakeDirection(String intakeDirection) {
        this.intakeDirection = intakeDirection;
    }

    public String getVavleProductDate() {
        return vavleProductDate;
    }

    public void setVavleProductDate(String vavleProductDate) {
        this.vavleProductDate = vavleProductDate;
    }

    public String getControlMainboardName() {
        return controlMainboardName;
    }

    public void setControlMainboardName(String controlMainboardName) {
        this.controlMainboardName = controlMainboardName;
    }

    public String getControlMainboardSpecifications() {
        return controlMainboardSpecifications;
    }

    public void setControlMainboardSpecifications(String controlMainboardSpecifications) {
        this.controlMainboardSpecifications = controlMainboardSpecifications;
    }

    public String getControlMainboardSupplier() {
        return controlMainboardSupplier;
    }

    public void setControlMainboardSupplier(String controlMainboardSupplier) {
        this.controlMainboardSupplier = controlMainboardSupplier;
    }

    public String getControlMainBoardNums() {
        return controlMainBoardNums;
    }

    public void setControlMainBoardNums(String controlMainBoardNums) {
        this.controlMainBoardNums = controlMainBoardNums;
    }

    public String getControlMainBoardProductDate() {
        return controlMainBoardProductDate;
    }

    public void setControlMainBoardProductDate(String controlMainBoardProductDate) {
        this.controlMainBoardProductDate = controlMainBoardProductDate;
    }

    public String getTelMainBoardName() {
        return telMainBoardName;
    }

    public void setTelMainBoardName(String telMainBoardName) {
        this.telMainBoardName = telMainBoardName;
    }

    public String getTelMainBoardSpecifications() {
        return telMainBoardSpecifications;
    }

    public void setTelMainBoardSpecifications(String telMainBoardSpecifications) {
        this.telMainBoardSpecifications = telMainBoardSpecifications;
    }

    public String getTelMainBoardSupplier() {
        return telMainBoardSupplier;
    }

    public void setTelMainBoardSupplier(String telMainBoardSupplier) {
        this.telMainBoardSupplier = telMainBoardSupplier;
    }

    public String getTelMainBoardNums() {
        return telMainBoardNums;
    }

    public void setTelMainBoardNums(String telMainBoardNums) {
        this.telMainBoardNums = telMainBoardNums;
    }

    public String getTelMainBoardProductDate() {
        return telMainBoardProductDate;
    }

    public void setTelMainBoardProductDate(String telMainBoardProductDate) {
        this.telMainBoardProductDate = telMainBoardProductDate;
    }

    public String getCardNum() {
        return cardNum;
    }

    public void setCardNum(String cardNum) {
        this.cardNum = cardNum;
    }

    public String getiMSI() {
        return iMSI;
    }

    public void setiMSI(String iMSI) {
        this.iMSI = iMSI;
    }

    public String getiMEI() {
        return iMEI;
    }

    public void setiMEI(String iMEI) {
        this.iMEI = iMEI;
    }

    public String getiCCID() {
        return iCCID;
    }

    public void setiCCID(String iCCID) {
        this.iCCID = iCCID;
    }

    public String getTelType() {
        return telType;
    }

    public void setTelType(String telType) {
        this.telType = telType;
    }

    public String getFourMainBoardName() {
        return fourMainBoardName;
    }

    public void setFourMainBoardName(String fourMainBoardName) {
        this.fourMainBoardName = fourMainBoardName;
    }

    public String getFourSpecifications() {
        return fourSpecifications;
    }

    public void setFourSpecifications(String fourSpecifications) {
        this.fourSpecifications = fourSpecifications;
    }

    public String getFourSupplier() {
        return fourSupplier;
    }

    public void setFourSupplier(String fourSupplier) {
        this.fourSupplier = fourSupplier;
    }

    public String getFourMainBoardNums() {
        return fourMainBoardNums;
    }

    public void setFourMainBoardNums(String fourMainBoardNums) {
        this.fourMainBoardNums = fourMainBoardNums;
    }

    public String getFourMainBoardProductDate() {
        return fourMainBoardProductDate;
    }

    public void setFourMainBoardProductDate(String fourMainBoardProductDate) {
        this.fourMainBoardProductDate = fourMainBoardProductDate;
    }

    public String getTelProtocol() {
        return telProtocol;
    }

    public void setTelProtocol(String telProtocol) {
        this.telProtocol = telProtocol;
    }

    public String getProductNum() {
        return productNum;
    }

    public void setProductNum(String productNum) {
        this.productNum = productNum;
    }

    public String getAssembler() {
        return assembler;
    }

    public void setAssembler(String assembler) {
        this.assembler = assembler;
    }

    public String getTester() {
        return tester;
    }

    public void setTester(String tester) {
        this.tester = tester;
    }

    public String getProductDate() {
        return productDate;
    }

    public void setProductDate(String productDate) {
        this.productDate = productDate;
    }

    public String getTestDate() {
        return testDate;
    }

    public void setTestDate(String testDate) {
        this.testDate = testDate;
    }

    public String getOutFactoryMan() {
        return outFactoryMan;
    }

    public void setOutFactoryMan(String outFactoryMan) {
        this.outFactoryMan = outFactoryMan;
    }

    public String getGetOutFactoryTime() {
        return getOutFactoryTime;
    }

    public void setGetOutFactoryTime(String getOutFactoryTime) {
        this.getOutFactoryTime = getOutFactoryTime;
    }

    public int getOutStockNums() {
        return outStockNums;
    }

    public void setOutStockNums(int outStockNums) {
        this.outStockNums = outStockNums;
    }

    public String getOutStockType() {
        return outStockType;
    }

    public void setOutStockType(String outStockType) {
        this.outStockType = outStockType;
    }

    public String getOutStockremarks() {
        return outStockremarks;
    }

    public void setOutStockremarks(String outStockremarks) {
        this.outStockremarks = outStockremarks;
    }

    public String getLogisticsInformation() {
        return logisticsInformation;
    }

    public void setLogisticsInformation(String logisticsInformation) {
        this.logisticsInformation = logisticsInformation;
    }

    @Override
    public String toString() {
        return "OverGoodsOutStock{" +
                "id=" + id +
                ", outStockNumbers='" + outStockNumbers + '\'' +
                ", saleNum='" + saleNum + '\'' +
                ", customerName='" + customerName + '\'' +
                ", date='" + date + '\'' +
                ", projectName='" + projectName + '\'' +
                ", endDate='" + endDate + '\'' +
                ", productNameOrder='" + productNameOrder + '\'' +
                ", productSpecificationsOrder='" + productSpecificationsOrder + '\'' +
                ", customerPressure='" + customerPressure + '\'' +
                ", customerNums=" + customerNums +
                ", valveSupplier='" + valveSupplier + '\'' +
                ", valveNUms='" + valveNUms + '\'' +
                ", valveName='" + valveName + '\'' +
                ", valveSpecifications='" + valveSpecifications + '\'' +
                ", intakeDirection='" + intakeDirection + '\'' +
                ", vavleProductDate='" + vavleProductDate + '\'' +
                ", controlMainboardName='" + controlMainboardName + '\'' +
                ", controlMainboardSpecifications='" + controlMainboardSpecifications + '\'' +
                ", controlMainboardSupplier='" + controlMainboardSupplier + '\'' +
                ", controlMainBoardNums='" + controlMainBoardNums + '\'' +
                ", controlMainBoardProductDate='" + controlMainBoardProductDate + '\'' +
                ", telMainBoardName='" + telMainBoardName + '\'' +
                ", telMainBoardSpecifications='" + telMainBoardSpecifications + '\'' +
                ", telMainBoardSupplier='" + telMainBoardSupplier + '\'' +
                ", telMainBoardNums='" + telMainBoardNums + '\'' +
                ", telMainBoardProductDate='" + telMainBoardProductDate + '\'' +
                ", cardNum='" + cardNum + '\'' +
                ", iMSI='" + iMSI + '\'' +
                ", iMEI='" + iMEI + '\'' +
                ", iCCID='" + iCCID + '\'' +
                ", telType='" + telType + '\'' +
                ", fourMainBoardName='" + fourMainBoardName + '\'' +
                ", fourSpecifications='" + fourSpecifications + '\'' +
                ", fourSupplier='" + fourSupplier + '\'' +
                ", fourMainBoardNums='" + fourMainBoardNums + '\'' +
                ", fourMainBoardProductDate='" + fourMainBoardProductDate + '\'' +
                ", telProtocol='" + telProtocol + '\'' +
                ", productNum='" + productNum + '\'' +
                ", assembler='" + assembler + '\'' +
                ", tester='" + tester + '\'' +
                ", productDate='" + productDate + '\'' +
                ", testDate='" + testDate + '\'' +
                ", outFactoryMan='" + outFactoryMan + '\'' +
                ", getOutFactoryTime='" + getOutFactoryTime + '\'' +
                ", outStockNums=" + outStockNums +
                ", outStockType='" + outStockType + '\'' +
                ", outStockremarks='" + outStockremarks + '\'' +
                ", outStockTestPeople='" + outStockTestPeople + '\'' +
                ", outStockTestTime='" + outStockTestTime + '\'' +
                ", sendGoodsPeople='" + sendGoodsPeople + '\'' +
                ", sendGoodsTime='" + sendGoodsTime + '\'' +
                ", recordStatus='" + recordStatus + '\'' +
                ", shutdownTime='" + shutdownTime + '\'' +
                ", activeTime='" + activeTime + '\'' +
                ", logisticsInformation='" + logisticsInformation + '\'' +
                '}';
    }
}
