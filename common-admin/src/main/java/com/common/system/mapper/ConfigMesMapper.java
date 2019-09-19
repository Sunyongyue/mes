package com.common.system.mapper;

import com.common.system.entity.ConfigMes;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface ConfigMesMapper {
    List<ConfigMes> queryAllConfigMes();
    int  addConfigMes(@Param("productNum") String productNum,@Param("coName") String coName,@Param("coOwnArea") String coOwnArea,@Param("coIp") String coIp,@Param("coPort") int coPort,@Param("coAPN") String coAPN,@Param("coDomain") String coDomain,@Param("coRemarks") String coRemarks,@Param("confValveModel") String confValveModel,@Param("confPktSer") int confPktSer,@Param("confDeviceType") String confDeviceType,@Param("confCoNum") int confCoNum,@Param("confDeviceAddr") String confDeviceAddr,@Param("confUserAddr") String confUserAddr,@Param("confUpTime") String confUpTime,@Param("confUpCyc") int confUpCyc,@Param("confVolType") String confVolType,@Param("confPayType") String confPayType,@Param("confValveType") String confValveType,@Param("confAlarmVol") int confAlarmVol,@Param("confOverFlowCoef") int confOverFlowCoef,
                      @Param("confReserveVol") int confReserveVol,@Param("confRechargeLimit") int confRechargeLimit,@Param("confPulse") double confPulse,@Param("confReserveFlag") String confReserveFlag,@Param("confPayDay") int confPayDay,@Param("confPayCyc") String confPayCyc,@Param("confAllowVol") int confAllowVol,@Param("confOpenTime") double confOpenTime, @Param("confCloseTime") double confCloseTime,@Param("confSignalSrc") String confSignalSrc,@Param("confChan1") int confChan1,@Param("confPower1") int confPower1,@Param("confChan2") int confChan2,@Param("confPower2") int confPower2,@Param("ConfPayCycNum") int ConfPayCycNum,@Param("microleakageTime") int microleakageTime,@Param("noContactTime") int noContactTime,@Param("noUseGasDay") int noUseGasDay,@Param("flowmeter") String flowmeter,@Param("fourVersion") String fourVersion);
    int  updateConfigMes(@Param("id") int id);
    int  selectCount(@Param("confDeviceAddr") String confDeviceAddr);
    List<ConfigMes> serachConfigMes(@Param("confDeviceAddr") String confDeviceAddr,@Param("confValveModel") String confValveModel,@Param("startDate") String startDate,@Param("endDate") String endDate);
}
