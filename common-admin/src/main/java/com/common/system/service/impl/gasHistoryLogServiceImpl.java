package com.common.system.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.ChinaGasHistoryLog;
import com.common.system.mapper.gasHistoryLogMapper;
import com.common.system.service.GasHistoryLogService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class gasHistoryLogServiceImpl implements GasHistoryLogService {
    @Autowired
    gasHistoryLogMapper logMapper;
    @Override
    public JSONObject queryAllGasHistoryLog(Integer page, Integer limit) {
        List<com.common.system.entity.gasHistoryLog> gasHistoryLogs = logMapper.queryAllGasHistoryLog();
        int size = gasHistoryLogs.size();
        Page<Object> objects = PageHelper.startPage(page, limit);
        List<com.common.system.entity.gasHistoryLog> gasHistoryLog = logMapper.queryAllGasHistoryLog();
        String s = JSON.toJSONString(gasHistoryLog);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object =new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        return object;
    }

    @Override
    public JSONObject serchByTelNum(String device_addr,String report_type, String startDate, String endDate, Integer page, Integer limit) {
        List<com.common.system.entity.gasHistoryLog> gasHistoryLogs = logMapper.serchByTelNum(device_addr, report_type,startDate, endDate);
        int size = gasHistoryLogs.size();
        Page<Object> objects = PageHelper.startPage(page, limit);
        List<com.common.system.entity.gasHistoryLog> gasHistoryLog = logMapper.serchByTelNum(device_addr, report_type,startDate, endDate);
        String s = JSON.toJSONString(gasHistoryLog);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object =new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        return object;
    }

    @Override
    public int insert(ChinaGasHistoryLog gasHistoryLog) {

        return logMapper.insert(gasHistoryLog);
    }
}
