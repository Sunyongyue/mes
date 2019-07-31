package com.common.system.entity;

public class PubProduct {
    private int ids;
    private int id;
    //订单编号
    private String productNum;
    //报警方数
    private int alarmSquare;
    //计费方式
    private String charMethod;
    //控制主板名称
    private String controlMainboardName;
    //控制主板规格
    private String controlMainboardSpecifications;
    //控制主板供应商
    private String controlMainboardSupplier;
    //断线检测
    private String disconnectionCheck;
    //485主板名称
    private String fourMainBoardName;
    //485主板规格
    private String fourSpecifications;
    //485供应商
    private String fourSupplier;
    //窃气检测
    private String gasCheck;
    //产品名称
    private String goodsName;
    //进气方向
    private String intakeDirection;
    //低压检测
    private String lowPressureCheck;
    //微漏检测
    private String microleakageCheck;
    //失联检测
    private String noContactCheck;
    //数量
    private int nums;
    //过流检测
    private String overcurrentCheck;
    //透支气量
    private int overdrawAir;
    //使用压力
    private int pressure;
    //脉冲当量
    private String pulseEquivalent;
    //备注
    private String remarks;
    //预存气量
    private int reservedAir;
    //信号来源
    private String signalSource;
    //产品规格
    private String specifications;
    //停用检测
    private String stopUseCheck;
    //通讯主板名称
    private String telMainBoardName;
    //通讯主板规格
    private String telMainBoardSpecifications;
    //通讯主板供应商
    private String telMainBoardSupplier;
    //通信协议
    private String telProtocol;
    //通讯方式
    private String telType;
    //充值上限
    private int  upperLimitOfRecharge;
    //关阀时间
    private int valveCloseTime;
    //阀门名称
    private String valveName;
    //开阀时间
    private int valveOpenTime;
    //阀门规格
    private String valveSpecifications;
    //阀门供应商
    private String valveSupplier;
    //版本号
    private String version;
    //操作员
    private String operator;
    //操作时间
    private String operatorTime;
    //阀门编号
    private String valveNUms;
    //阀门生产日期
    private String vavleProductDate;
    //控制主板编号
    private String controlMainBoardNums;
    //控制主板生产日期
    private String controlMainBoardProductDate;
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
    //485
    private String fourMainBoardNums;
    private String fourMainBoardProductDate;
    //装配人
    private String assembler;
    //检测人
    private String tester;
    //装配日期
    private String productDate;
    //检测日期
    private String testDate;
    //备注
    private String testRemarks;
    public PubProduct(){}
    public PubProduct(int ids, int id, String productNum, int alarmSquare, String charMethod, String controlMainboardName, String controlMainboardSpecifications, String controlMainboardSupplier, String disconnectionCheck, String fourMainBoardName, String fourSpecifications, String fourSupplier, String gasCheck, String goodsName, String intakeDirection, String lowPressureCheck, String microleakageCheck, String noContactCheck, int nums, String overcurrentCheck, int overdrawAir, int pressure, String pulseEquivalent, String remarks, int reservedAir, String signalSource, String specifications, String stopUseCheck, String telMainBoardName, String telMainBoardSpecifications, String telMainBoardSupplier, String telProtocol, String telType, int upperLimitOfRecharge, int valveCloseTime, String valveName, int valveOpenTime, String valveSpecifications, String valveSupplier, String version, String operator, String operatorTime, String valveNUms, String vavleProductDate, String controlMainBoardNums, String controlMainBoardProductDate, String telMainBoardNums, String telMainBoardProductDate, String cardNum, String iMSI, String iMEI, String iCCID, String fourMainBoardNums, String fourMainBoardProductDate, String assembler, String tester, String productDate, String testDate, String testRemarks) {
        this.ids = ids;
        this.id = id;
        this.productNum = productNum;
        this.alarmSquare = alarmSquare;
        this.charMethod = charMethod;
        this.controlMainboardName = controlMainboardName;
        this.controlMainboardSpecifications = controlMainboardSpecifications;
        this.controlMainboardSupplier = controlMainboardSupplier;
        this.disconnectionCheck = disconnectionCheck;
        this.fourMainBoardName = fourMainBoardName;
        this.fourSpecifications = fourSpecifications;
        this.fourSupplier = fourSupplier;
        this.gasCheck = gasCheck;
        this.goodsName = goodsName;
        this.intakeDirection = intakeDirection;
        this.lowPressureCheck = lowPressureCheck;
        this.microleakageCheck = microleakageCheck;
        this.noContactCheck = noContactCheck;
        this.nums = nums;
        this.overcurrentCheck = overcurrentCheck;
        this.overdrawAir = overdrawAir;
        this.pressure = pressure;
        this.pulseEquivalent = pulseEquivalent;
        this.remarks = remarks;
        this.reservedAir = reservedAir;
        this.signalSource = signalSource;
        this.specifications = specifications;
        this.stopUseCheck = stopUseCheck;
        this.telMainBoardName = telMainBoardName;
        this.telMainBoardSpecifications = telMainBoardSpecifications;
        this.telMainBoardSupplier = telMainBoardSupplier;
        this.telProtocol = telProtocol;
        this.telType = telType;
        this.upperLimitOfRecharge = upperLimitOfRecharge;
        this.valveCloseTime = valveCloseTime;
        this.valveName = valveName;
        this.valveOpenTime = valveOpenTime;
        this.valveSpecifications = valveSpecifications;
        this.valveSupplier = valveSupplier;
        this.version = version;
        this.operator = operator;
        this.operatorTime = operatorTime;
        this.valveNUms = valveNUms;
        this.vavleProductDate = vavleProductDate;
        this.controlMainBoardNums = controlMainBoardNums;
        this.controlMainBoardProductDate = controlMainBoardProductDate;
        this.telMainBoardNums = telMainBoardNums;
        this.telMainBoardProductDate = telMainBoardProductDate;
        this.cardNum = cardNum;
        this.iMSI = iMSI;
        this.iMEI = iMEI;
        this.iCCID = iCCID;
        this.fourMainBoardNums = fourMainBoardNums;
        this.fourMainBoardProductDate = fourMainBoardProductDate;
        this.assembler = assembler;
        this.tester = tester;
        this.productDate = productDate;
        this.testDate = testDate;
        this.testRemarks = testRemarks;
    }

    public int getIds() {
        return ids;
    }

    public void setIds(int ids) {
        this.ids = ids;
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

    public int getAlarmSquare() {
        return alarmSquare;
    }

    public void setAlarmSquare(int alarmSquare) {
        this.alarmSquare = alarmSquare;
    }

    public String getCharMethod() {
        return charMethod;
    }

    public void setCharMethod(String charMethod) {
        this.charMethod = charMethod;
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

    public String getDisconnectionCheck() {
        return disconnectionCheck;
    }

    public void setDisconnectionCheck(String disconnectionCheck) {
        this.disconnectionCheck = disconnectionCheck;
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

    public String getGasCheck() {
        return gasCheck;
    }

    public void setGasCheck(String gasCheck) {
        this.gasCheck = gasCheck;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public String getIntakeDirection() {
        return intakeDirection;
    }

    public void setIntakeDirection(String intakeDirection) {
        this.intakeDirection = intakeDirection;
    }

    public String getLowPressureCheck() {
        return lowPressureCheck;
    }

    public void setLowPressureCheck(String lowPressureCheck) {
        this.lowPressureCheck = lowPressureCheck;
    }

    public String getMicroleakageCheck() {
        return microleakageCheck;
    }

    public void setMicroleakageCheck(String microleakageCheck) {
        this.microleakageCheck = microleakageCheck;
    }

    public String getNoContactCheck() {
        return noContactCheck;
    }

    public void setNoContactCheck(String noContactCheck) {
        this.noContactCheck = noContactCheck;
    }

    public int getNums() {
        return nums;
    }

    public void setNums(int nums) {
        this.nums = nums;
    }

    public String getOvercurrentCheck() {
        return overcurrentCheck;
    }

    public void setOvercurrentCheck(String overcurrentCheck) {
        this.overcurrentCheck = overcurrentCheck;
    }

    public int getOverdrawAir() {
        return overdrawAir;
    }

    public void setOverdrawAir(int overdrawAir) {
        this.overdrawAir = overdrawAir;
    }

    public int getPressure() {
        return pressure;
    }

    public void setPressure(int pressure) {
        this.pressure = pressure;
    }

    public String getPulseEquivalent() {
        return pulseEquivalent;
    }

    public void setPulseEquivalent(String pulseEquivalent) {
        this.pulseEquivalent = pulseEquivalent;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public int getReservedAir() {
        return reservedAir;
    }

    public void setReservedAir(int reservedAir) {
        this.reservedAir = reservedAir;
    }

    public String getSignalSource() {
        return signalSource;
    }

    public void setSignalSource(String signalSource) {
        this.signalSource = signalSource;
    }

    public String getSpecifications() {
        return specifications;
    }

    public void setSpecifications(String specifications) {
        this.specifications = specifications;
    }

    public String getStopUseCheck() {
        return stopUseCheck;
    }

    public void setStopUseCheck(String stopUseCheck) {
        this.stopUseCheck = stopUseCheck;
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

    public String getTelProtocol() {
        return telProtocol;
    }

    public void setTelProtocol(String telProtocol) {
        this.telProtocol = telProtocol;
    }

    public String getTelType() {
        return telType;
    }

    public void setTelType(String telType) {
        this.telType = telType;
    }

    public int getUpperLimitOfRecharge() {
        return upperLimitOfRecharge;
    }

    public void setUpperLimitOfRecharge(int upperLimitOfRecharge) {
        this.upperLimitOfRecharge = upperLimitOfRecharge;
    }

    public int getValveCloseTime() {
        return valveCloseTime;
    }

    public void setValveCloseTime(int valveCloseTime) {
        this.valveCloseTime = valveCloseTime;
    }

    public String getValveName() {
        return valveName;
    }

    public void setValveName(String valveName) {
        this.valveName = valveName;
    }

    public int getValveOpenTime() {
        return valveOpenTime;
    }

    public void setValveOpenTime(int valveOpenTime) {
        this.valveOpenTime = valveOpenTime;
    }

    public String getValveSpecifications() {
        return valveSpecifications;
    }

    public void setValveSpecifications(String valveSpecifications) {
        this.valveSpecifications = valveSpecifications;
    }

    public String getValveSupplier() {
        return valveSupplier;
    }

    public void setValveSupplier(String valveSupplier) {
        this.valveSupplier = valveSupplier;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
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

    public String getValveNUms() {
        return valveNUms;
    }

    public void setValveNUms(String valveNUms) {
        this.valveNUms = valveNUms;
    }

    public String getVavleProductDate() {
        return vavleProductDate;
    }

    public void setVavleProductDate(String vavleProductDate) {
        this.vavleProductDate = vavleProductDate;
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

    public String getTestRemarks() {
        return testRemarks;
    }

    public void setTestRemarks(String testRemarks) {
        this.testRemarks = testRemarks;
    }

    @Override
    public String toString() {
        return "PubProduct{" +
                "ids=" + ids +
                ", id=" + id +
                ", productNum='" + productNum + '\'' +
                ", alarmSquare=" + alarmSquare +
                ", charMethod='" + charMethod + '\'' +
                ", controlMainboardName='" + controlMainboardName + '\'' +
                ", controlMainboardSpecifications='" + controlMainboardSpecifications + '\'' +
                ", controlMainboardSupplier='" + controlMainboardSupplier + '\'' +
                ", disconnectionCheck='" + disconnectionCheck + '\'' +
                ", fourMainBoardName='" + fourMainBoardName + '\'' +
                ", fourSpecifications='" + fourSpecifications + '\'' +
                ", fourSupplier='" + fourSupplier + '\'' +
                ", gasCheck='" + gasCheck + '\'' +
                ", goodsName='" + goodsName + '\'' +
                ", intakeDirection='" + intakeDirection + '\'' +
                ", lowPressureCheck='" + lowPressureCheck + '\'' +
                ", microleakageCheck='" + microleakageCheck + '\'' +
                ", noContactCheck='" + noContactCheck + '\'' +
                ", nums=" + nums +
                ", overcurrentCheck='" + overcurrentCheck + '\'' +
                ", overdrawAir=" + overdrawAir +
                ", pressure=" + pressure +
                ", pulseEquivalent='" + pulseEquivalent + '\'' +
                ", remarks='" + remarks + '\'' +
                ", reservedAir=" + reservedAir +
                ", signalSource='" + signalSource + '\'' +
                ", specifications='" + specifications + '\'' +
                ", stopUseCheck='" + stopUseCheck + '\'' +
                ", telMainBoardName='" + telMainBoardName + '\'' +
                ", telMainBoardSpecifications='" + telMainBoardSpecifications + '\'' +
                ", telMainBoardSupplier='" + telMainBoardSupplier + '\'' +
                ", telProtocol='" + telProtocol + '\'' +
                ", telType='" + telType + '\'' +
                ", upperLimitOfRecharge=" + upperLimitOfRecharge +
                ", valveCloseTime=" + valveCloseTime +
                ", valveName='" + valveName + '\'' +
                ", valveOpenTime=" + valveOpenTime +
                ", valveSpecifications='" + valveSpecifications + '\'' +
                ", valveSupplier='" + valveSupplier + '\'' +
                ", version='" + version + '\'' +
                ", operator='" + operator + '\'' +
                ", operatorTime='" + operatorTime + '\'' +
                ", valveNUms='" + valveNUms + '\'' +
                ", vavleProductDate='" + vavleProductDate + '\'' +
                ", controlMainBoardNums='" + controlMainBoardNums + '\'' +
                ", controlMainBoardProductDate='" + controlMainBoardProductDate + '\'' +
                ", telMainBoardNums='" + telMainBoardNums + '\'' +
                ", telMainBoardProductDate='" + telMainBoardProductDate + '\'' +
                ", cardNum='" + cardNum + '\'' +
                ", iMSI='" + iMSI + '\'' +
                ", iMEI='" + iMEI + '\'' +
                ", iCCID='" + iCCID + '\'' +
                ", fourMainBoardNums='" + fourMainBoardNums + '\'' +
                ", fourMainBoardProductDate='" + fourMainBoardProductDate + '\'' +
                ", assembler='" + assembler + '\'' +
                ", tester='" + tester + '\'' +
                ", productDate='" + productDate + '\'' +
                ", testDate='" + testDate + '\'' +
                ", testRemarks='" + testRemarks + '\'' +
                '}';
    }
}
