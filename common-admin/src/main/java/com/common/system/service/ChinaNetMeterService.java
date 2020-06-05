package com.common.system.service;

import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.ChainNetMeter;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ChinaNetMeterService {
    JSONObject queryAllChinaNetMeter(@Param("productOrderNum") String productOrderNum, @Param("saleOrderNum") String saleOrderNum, @Param("telNum") String telNum, @Param("imei") String imei, @Param("startDate") String startDate, @Param("endDate") String endDate, @Param("meterStatus")  String meterStatus, @Param("operator") String operator, @Param("instructStatus") String instructStatus,Integer page, Integer limit);
    int addChinaNetMeter(@Param("record") ChainNetMeter record);
    int deleteChinaNetMeter(@Param("array") String[] array);
    ChainNetMeter queryOne(@Param("id") String id);
}
