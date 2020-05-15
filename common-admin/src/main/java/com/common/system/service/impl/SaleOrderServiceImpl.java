package com.common.system.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.SaleOrder;
import com.common.system.mapper.SaleOrderMapper;
import com.common.system.service.SaleOrderService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SaleOrderServiceImpl implements SaleOrderService {
    @Autowired
    SaleOrderMapper saleOrderMapper;
    @Override
    public JSONObject querySaleOrder(Integer page, Integer limit) {
        List<SaleOrder> saleOrders = saleOrderMapper.querySaleOrder();
        int size = saleOrders.size();
        Page<Object> objects = PageHelper.startPage(page, limit);
        List<SaleOrder> saleOrders1 = saleOrderMapper.querySaleOrder();
        String s = JSON.toJSONString(saleOrders1);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object = new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        return object;
    }

    @Override
    public JSONObject addSaleOrder(String saleNum, String customerName, String date, String projectName, String endDate, String productNameOrder, String productSpecificationsOrder, String customerPressure, int customerNums, String address, String receiver, String telPhone, String logisticsInformation, String remarks, String operator, String operatorTime,String kaiPiaoDate, String shouKuanDate) {
        int i = saleOrderMapper.addSaleOrder(saleNum, customerName, date, projectName, endDate, productNameOrder, productSpecificationsOrder, customerPressure, customerNums, address, receiver, telPhone, logisticsInformation, remarks, operator, operatorTime, kaiPiaoDate,  shouKuanDate);
        JSONObject object = new JSONObject();
        object.put("success",i);
        return object;

    }

    @Override
    public JSONObject deleteSaleOrder(int[] array) {
        int i = saleOrderMapper.deleteSaleOrder(array);
        JSONObject object = new JSONObject();
        object.put("success",i);
        return object;
    }

    @Override
    public int queryNum(String date) {
        int i = saleOrderMapper.queryNum(date);
        return i;
    }

    @Override
    public JSONObject searchSaleOrder(String saleNum, String customerName, String projectName, String productNameOrder, String productSpecificationsOrder, String operator, String startDate, String endDate,Integer page, Integer limit) {
        List<SaleOrder> saleOrders = saleOrderMapper.searchSaleOrder(saleNum, customerName, projectName, productNameOrder, productSpecificationsOrder, operator, startDate, endDate);
        int size = saleOrders.size();
        Page<Object> objects = PageHelper.startPage(page, limit);
        List<SaleOrder> saleOrders1 = saleOrderMapper.searchSaleOrder(saleNum, customerName, projectName, productNameOrder, productSpecificationsOrder, operator, startDate, endDate);
        String s = JSON.toJSONString(saleOrders1);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object = new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        return object;
    }

    @Override
    public SaleOrder queryOne(int id) {
        SaleOrder saleOrder = saleOrderMapper.queryOne(id);
        return saleOrder;
    }

    @Override
    public int modifyOrderEnd(Integer saleId, String kaiPiaoDate, String shouKuanDate, String remarks) {
        int i = saleOrderMapper.modifyOrderEnd(saleId, kaiPiaoDate, shouKuanDate, remarks);
        return i;
    }

    @Override
    public int updateStatusByNum(String saleNum, String status) {
        return saleOrderMapper.updateStatusByNum(saleNum, status);
    }
}
