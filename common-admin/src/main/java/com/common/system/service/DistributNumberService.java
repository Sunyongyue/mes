package com.common.system.service;

import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.DistributNumber;


import java.util.List;

public interface DistributNumberService {
    JSONObject queryDistributNumber(Integer page, Integer limit);
    JSONObject addDistributNumberMapper( String telNum, String controlMainNum,  String telMainNum,  String fourMainNum,  String status,  String remarks,  String operator);
    JSONObject deleteDistributNumberMapper( int[] array);
    JSONObject distributNumberSearch( String telNum,  String mainBoardNum,  String startDate,  String endDate,Integer page, Integer limit);
    List<DistributNumber> queryByNumber( String number);
}
