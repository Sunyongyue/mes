package com.common.system.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.DistributNumber;
import com.common.system.entity.GoodsInStock;
import com.common.system.mapper.DistributNumberMapper;
import com.common.system.service.DistributNumberService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DistributNumberServiceImpl implements DistributNumberService {
    @Autowired
    DistributNumberMapper distributNumberMapper;
    @Override
    public JSONObject queryDistributNumber(Integer page, Integer limit) {
        List<DistributNumber> distributNumbers = distributNumberMapper.queryDistributNumber();
        int size = distributNumbers.size();
        Page<Object> objects = PageHelper.startPage(page, limit);
        List<DistributNumber> distributNumbers1 =distributNumberMapper.queryDistributNumber();
        String s = JSON.toJSONString(distributNumbers1);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object =new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        return object;
    }

    @Override
    public JSONObject addDistributNumberMapper(String telNum, String controlMainNum, String telMainNum, String fourMainNum, String status, String remarks, String operator) {
        int i = distributNumberMapper.addDistributNumberMapper(telNum, controlMainNum, telMainNum, fourMainNum, status, remarks, operator);
        JSONObject object = new JSONObject();
        object.put("success",i);
        return object;
    }

    @Override
    public JSONObject deleteDistributNumberMapper(int[] array) {
        int i = distributNumberMapper.deleteDistributNumberMapper(array);
        JSONObject object = new JSONObject();
        object.put("success",i);
        return object;
    }

    @Override
    public JSONObject distributNumberSearch(String telNum, String mainBoardNum, String startDate, String endDate, Integer page, Integer limit) {
        List<DistributNumber> distributNumbers = distributNumberMapper.distributNumberSearch(telNum, mainBoardNum, startDate, endDate);
        int size = distributNumbers.size();
        Page<Object> objects = PageHelper.startPage(page, limit);
        List<DistributNumber> distributNumbers1 = distributNumberMapper.distributNumberSearch(telNum, mainBoardNum, startDate, endDate);
        String s = JSON.toJSONString(distributNumbers1);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object =new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        return object;

    }

    @Override
    public List<DistributNumber> queryByNumber(String number) {
        List<DistributNumber> distributNumbers = distributNumberMapper.queryByNumber(number);
        return distributNumbers;
    }

    @Override
    public int queryExistControl(String controlMainNum) {
        int i = distributNumberMapper.queryExistControl(controlMainNum);
        return i;
    }

    @Override
    public int queryExistTel(String telMainNum) {
        int i = distributNumberMapper.queryExistTel(telMainNum);
        return i;
    }

    @Override
    public int queryExistFour(String fourMainNum) {
        int i = distributNumberMapper.queryExistFour(fourMainNum);
        return i;
    }

    @Override
    public int queryExistTelNum(String telNum) {
        int i = distributNumberMapper.queryExistTelNum(telNum);
        return i;
    }
}
