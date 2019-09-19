package com.common.system.service;

import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.DistributNumber;
import org.apache.ibatis.annotations.Param;


import java.util.List;

public interface DistributNumberService {
    JSONObject queryDistributNumber(Integer page, Integer limit);
    JSONObject addDistributNumberMapper( String telNum, String controlMainNum,  String telMainNum,  String fourMainNum,  String status,  String remarks,  String operator);
    JSONObject deleteDistributNumberMapper( int[] array);
    JSONObject distributNumberSearch( String telNum,  String mainBoardNum,  String startDate,  String endDate,Integer page, Integer limit);
    List<DistributNumber> queryByNumber( String number);
    int queryExistControl(@Param("controlMainNum") String controlMainNum);
    int queryExistTel(@Param("telMainNum") String telMainNum);
    int queryExistFour(@Param("fourMainNum") String fourMainNum);
    int queryExistTelNum(@Param("telNum") String telNum);
}
