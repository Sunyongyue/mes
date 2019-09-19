package com.common.system.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.ProductOrder;
import com.common.system.mapper.ProductOrderMapper;
import com.common.system.service.ProductOrderService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductOrderServiceImpl implements ProductOrderService {
    @Autowired
    ProductOrderMapper orderMapper;
    @Override
    public JSONObject queryProductOrder(Integer page, Integer limit) {
        List<ProductOrder> productOrders = orderMapper.queryProductOrder();
        int size = productOrders.size();
        Page<Object> objects = PageHelper.startPage(page, limit);
        List<ProductOrder> productOrders1 = orderMapper.queryProductOrder();
        String s = JSON.toJSONString(productOrders1);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object = new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        return object;
    }

    @Override
    public JSONObject addProductOrder(String productNum, int alarmSquare, String charMethod, String controlMainboardName, String controlMainboardSpecifications, String controlMainboardSupplier, String disconnectionCheck, String fourMainBoardName, String fourSpecifications, String fourSupplier, String gasCheck, String goodsName, String intakeDirection, String lowPressureCheck, String microleakageCheck, String noContactCheck, int nums, String overcurrentCheck, int overdrawAir, String pressure, String pulseEquivalent, String remarks, int reservedAir, String signalSource, String specifications, String stopUseCheck, String telMainBoardName, String telMainBoardSpecifications, String telMainBoardSupplier, String telProtocol, String telType, int upperLimitOfRecharge, int valveCloseTime, String valveName, int valveOpenTime, String valveSpecifications, String valveSupplier, String version, String operator) {
        int i = orderMapper.addProductOrder(productNum, alarmSquare, charMethod, controlMainboardName, controlMainboardSpecifications, controlMainboardSupplier, disconnectionCheck, fourMainBoardName, fourSpecifications, fourSupplier, gasCheck, goodsName, intakeDirection, lowPressureCheck, microleakageCheck, noContactCheck, nums, overcurrentCheck, overdrawAir, pressure, pulseEquivalent, remarks, reservedAir, signalSource, specifications, stopUseCheck, telMainBoardName, telMainBoardSpecifications, telMainBoardSupplier, telProtocol, telType, upperLimitOfRecharge, valveCloseTime, valveName, valveOpenTime, valveSpecifications, valveSupplier, version, operator);
        JSONObject object = new JSONObject();
        object.put("success",i);
        return object;
    }

    @Override
    public int queryNums(String date) {
        int i = orderMapper.queryNums(date);
        return i;
    }

    @Override
    public int updateStatus(String productNum) {
        int i = orderMapper.updateStatus(productNum);
        return i;
    }

    @Override
    public int updateOver(String productNum) {
        int i = orderMapper.updateOver(productNum);
        return i;
    }

    @Override
    public List<ProductOrder> queryByProductNum(String productNum) {
        List<ProductOrder> productOrders = orderMapper.queryByProductNum(productNum);
        return productOrders;
    }

    @Override
    public ProductOrder queryById(int id) {
        ProductOrder productOrder = orderMapper.queryById(id);
        return productOrder;
    }

    @Override
    public JSONObject delteProductOrder(int[] array) {
        int i = orderMapper.delteProductOrder(array);
        JSONObject object = new JSONObject();
        object.put("success",i);
        return object;
    }

    @Override
    public JSONObject searchProductOrder(String productNum, String goodsName, String specifications, String operator, String status,String startDate, String endDate, Integer page, Integer limit) {
        List<ProductOrder> productOrders = orderMapper.searchProductOrder(productNum, goodsName, specifications, operator, status,startDate, endDate);
        int size = productOrders.size();
        Page<Object> objects = PageHelper.startPage(page, limit);
        List<ProductOrder> productOrders1 = orderMapper.searchProductOrder(productNum, goodsName, specifications, operator,status, startDate,endDate);
        String s = JSON.toJSONString(productOrders1);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object = new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        return object;
    }
}
