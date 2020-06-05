package com.common.system.service;

import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.ChinaGasHistoryLog;


public interface GasHistoryLogService {
    JSONObject queryAllGasHistoryLog(Integer page,Integer limit);
    JSONObject serchByTelNum(String device_addr,String report_type,String startDate, String endDate,Integer page,Integer limit);
    int insert(ChinaGasHistoryLog gasHistoryLog);
}
