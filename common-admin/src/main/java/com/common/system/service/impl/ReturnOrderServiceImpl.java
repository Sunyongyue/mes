package com.common.system.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.GoodsInStock;
import com.common.system.entity.ReturnOrder;
import com.common.system.mapper.ReturnOrderMapper;
import com.common.system.service.ReturnOrderService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReturnOrderServiceImpl implements ReturnOrderService {
    @Autowired
    ReturnOrderMapper orderMapper;
    @Override
    public JSONObject allView(Integer page, Integer limit) {
        List<ReturnOrder> goodsInStocks = orderMapper.allView();
        int size = goodsInStocks.size();
        Page<Object> objects = PageHelper.startPage(page, limit);
        List<ReturnOrder> goodsInStocks1 = orderMapper.allView();
        String s = JSON.toJSONString(goodsInStocks1);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object =new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        return object;
    }

    @Override
    public int add(String returnNum, String reason, String remark, String returnSel, String opera) {
        int i = orderMapper.add(returnNum, reason, remark, returnSel, opera);

        return i;
    }

    @Override
    public int delete(int[] array) {
        int delete = orderMapper.delete(array);
        return delete;
    }

    @Override
    public JSONObject findSome(String saleNum, String operator, String startDate, String endDate,Integer page, Integer limit) {
        List<ReturnOrder> goodsInStocks = orderMapper.findSome(saleNum, operator, startDate, endDate);
        int size = goodsInStocks.size();
        Page<Object> objects = PageHelper.startPage(page, limit);
        List<ReturnOrder> goodsInStocks1 = orderMapper.findSome(saleNum, operator, startDate, endDate);
        String s = JSON.toJSONString(goodsInStocks1);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object =new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        return object;

    }
}
