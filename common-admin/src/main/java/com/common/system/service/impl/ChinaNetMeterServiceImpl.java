package com.common.system.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.ChainNetMeter;
import com.common.system.mapper.ChinaNetMeterMapper;
import com.common.system.service.ChinaNetMeterService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ChinaNetMeterServiceImpl implements ChinaNetMeterService {
    @Autowired
    ChinaNetMeterMapper netMeterMapper;
    @Override
    public JSONObject queryAllChinaNetMeter(String productOrderNum, String saleOrderNum, String telNum, String imei, String startDate, String endDate, String meterStatus, String operator, String instructStatus,Integer page, Integer limit) {
        List<ChainNetMeter> civilProducts = netMeterMapper.queryAllChinaNetMeter(productOrderNum, saleOrderNum, telNum, imei, startDate, endDate, meterStatus, operator, instructStatus);
        int size = civilProducts.size();
        Page<Object> objects = PageHelper.startPage(page, limit);
        List<ChainNetMeter> civilProduct = netMeterMapper.queryAllChinaNetMeter(productOrderNum, saleOrderNum, telNum, imei, startDate, endDate, meterStatus, operator, instructStatus);
        String s = JSON.toJSONString(civilProduct);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object =new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        return object;
    }

    @Override
    public int addChinaNetMeter(ChainNetMeter record) {
        int i = netMeterMapper.addChinaNetMeter(record);
        return i;
    }

    @Override
    public int deleteChinaNetMeter(String[] array) {
        int i = netMeterMapper.deleteChinaNetMeter(array);
        return i;
    }

    @Override
    public ChainNetMeter queryOne(String id) {

        return netMeterMapper.queryOne(id);
    }
}
