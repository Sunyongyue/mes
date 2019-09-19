package com.common.system.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.ConfigMes;
import com.common.system.mapper.ConfigMesMapper;
import com.common.system.service.ConfigMesService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ConfigMesServiceImpl implements ConfigMesService {
    @Autowired
    ConfigMesMapper configMesMapper;
    @Override
    public JSONObject queryAllConfigMes(Integer page, Integer limit) {
        List<ConfigMes> configMes = configMesMapper.queryAllConfigMes();
        int size = configMes.size();
        Page<Object> objects = PageHelper.startPage(page, limit);
        List<ConfigMes> configMes1 = configMesMapper.queryAllConfigMes();
        String s = JSON.toJSONString(configMes1);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object =new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        return object;
    }

    @Override
    public int addConfigMes(String productNum, String coName, String coOwnArea, String coIp, int coPort, String coAPN, String coDomain, String coRemarks, String confValveModel, int confPktSer, String confDeviceType, int confCoNum, String confDeviceAddr, String confUserAddr, String confUpTime, int confUpCyc, String confVolType, String confPayType, String confValveType, int confAlarmVol, int confOverFlowCoef, int confReserveVol, int confRechargeLimit, double confPulse, String confReserveFlag, int confPayDay, String confPayCyc, int confAllowVol, double confOpenTime, double confCloseTime, String confSignalSrc, int confChan1, int confPower1, int confChan2, int confPower2,  int ConfPayCycNum, int microleakageTime, int noContactTime,  int noUseGasDay, String flowmeter,String fourVersion) {
        int i = configMesMapper.addConfigMes(productNum, coName, coOwnArea, coIp, coPort, coAPN, coDomain, coRemarks, confValveModel, confPktSer, confDeviceType, confCoNum, confDeviceAddr, confUserAddr, confUpTime, confUpCyc, confVolType, confPayType, confValveType, confAlarmVol, confOverFlowCoef, confReserveVol, confRechargeLimit, confPulse, confReserveFlag, confPayDay, confPayCyc, confAllowVol, confOpenTime, confCloseTime, confSignalSrc, confChan1, confPower1, confChan2, confPower2, ConfPayCycNum, microleakageTime, noContactTime, noUseGasDay, flowmeter, fourVersion);
        return i;
    }

    @Override
    public int updateConfigMes(int id) {
        int i = configMesMapper.updateConfigMes(id);
        return i;
    }

    @Override
    public int selectCount(String confDeviceAddr) {
        int i = configMesMapper.selectCount(confDeviceAddr);
        return i;
    }

    @Override
    public JSONObject serachConfigMes(String confDeviceAddr, String confValveModel,String startDate, String endDate, Integer page, Integer limit) {
        List<ConfigMes> configMes = configMesMapper.serachConfigMes(confDeviceAddr,confValveModel, startDate, endDate);
        int size = configMes.size();
        Page<Object> objects = PageHelper.startPage(page, limit);
        List<ConfigMes> configMes1 = configMesMapper.serachConfigMes(confDeviceAddr,confValveModel, startDate, endDate);
        String s = JSON.toJSONString(configMes1);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object = new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        return object;
    }
}
