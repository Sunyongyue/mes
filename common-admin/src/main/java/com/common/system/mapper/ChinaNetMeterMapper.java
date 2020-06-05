package com.common.system.mapper;

import com.common.system.entity.ChainNetMeter;

import com.common.system.entity.CivilProduct;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
@Mapper
public interface ChinaNetMeterMapper {
    List<ChainNetMeter> queryAllChinaNetMeter(@Param("productOrderNum") String productOrderNum, @Param("saleOrderNum") String saleOrderNum, @Param("telNum") String telNum, @Param("imei") String imei, @Param("startDate") String startDate, @Param("endDate") String endDate, @Param("meterStatus")  String meterStatus, @Param("operator") String operator, @Param("instructStatus") String instructStatus);
    int addChinaNetMeter(ChainNetMeter record);
    int deleteChinaNetMeter(@Param("array") String[] array);
    ChainNetMeter queryOne(@Param("id") String id);
}
