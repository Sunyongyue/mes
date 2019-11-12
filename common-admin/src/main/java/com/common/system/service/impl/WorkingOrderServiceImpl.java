package com.common.system.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.WorkingOrder;
import com.common.system.mapper.WorkingOrderMapper;
import com.common.system.service.WorkingOrderService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class WorkingOrderServiceImpl implements WorkingOrderService {
    @Autowired
    WorkingOrderMapper workingOrderMapper;

    @Override
    public JSONObject queryWorkingOrder(Integer page, Integer limit) {
        List<WorkingOrder> workingOrders = workingOrderMapper.queryWorkingOrder();
        int size = workingOrders.size();
        PageHelper.startPage(page,limit);
        List<WorkingOrder> workingOrders1 = workingOrderMapper.queryWorkingOrder();
        String s = JSON.toJSONString(workingOrders1);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object =new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        return object;
    }

    @Override
    public JSONObject queryWorkingOrderByName(String orderName, Integer page, Integer limit) {
        List<WorkingOrder> workingOrders = workingOrderMapper.queryWorkingOrderByName(orderName);
        int size = workingOrders.size();
        Page<Object> objects = PageHelper.startPage(page, limit);
        List<WorkingOrder> workingOrders1 = workingOrderMapper.queryWorkingOrderByName(orderName);
        String s = JSON.toJSONString(workingOrders1);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object =new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        return object;
    }

    @Override
    public JSONObject deleteWorkingOrder(int[] array) {
        int i = workingOrderMapper.deleteWorkingOrder(array);
        JSONObject object = new JSONObject();
        object.put("success",i);
        return object;
    }

    @Override
    public JSONObject addWorkingOrder(String orderName, String adjustingWheel, String installationOfSample, String wiringHarness, String installOfBoard, String installOfSigns, String upperShell, String testing, String boxing, String remarks, String operator) {
        int i = workingOrderMapper.addWorkingOrder(orderName, adjustingWheel, installationOfSample, wiringHarness, installOfBoard, installOfSigns, upperShell, testing, boxing, remarks, operator);
        JSONObject object = new JSONObject();
        object.put("success",i);
        return object;
    }

    @Override
    public JSONObject updateWorkingOrder(String orderName, String adjustingWheel, String installationOfSample, String wiringHarness, String installOfBoard, String installOfSigns, String upperShell, String testing, String boxing, String remarks, String operator, Integer id) {
        int i = workingOrderMapper.updateWorkingOrder(orderName, adjustingWheel, installationOfSample, wiringHarness, installOfBoard, installOfSigns, upperShell, testing, boxing, remarks, operator, id);
        JSONObject object = new JSONObject();
        object.put("success",i);
        return object;
    }
}
