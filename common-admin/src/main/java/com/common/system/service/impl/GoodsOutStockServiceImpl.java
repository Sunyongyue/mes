package com.common.system.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.GoodsOutStock;
import com.common.system.mapper.GoodsOutStockMapper;
import com.common.system.service.GoodsOutStockService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodsOutStockServiceImpl implements GoodsOutStockService {
    @Autowired
    GoodsOutStockMapper outStockMapper;
    @Override
    public JSONObject queryGoodsOutStock(Integer page, Integer limit) {
        List<GoodsOutStock> goodsOutStocks = outStockMapper.queryGoodsOutStock();
        int size = goodsOutStocks.size();
        Page<Object> objects = PageHelper.startPage(page, limit);
        List<GoodsOutStock> goodsOutStock =outStockMapper.queryGoodsOutStock();
        String s = JSON.toJSONString(goodsOutStock);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object =new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        return object;
    }

    @Override
    public JSONObject addGoodsOutStock(String goodsType, String goodsName, String specifications, String status, String outStockType, int nums, String pipelineNumber, String supplierName, String remarks, String operator, String local) {
        int i = outStockMapper.addGoodsOutStock(goodsType, goodsName, specifications, status, outStockType, nums, pipelineNumber, supplierName, remarks, operator, local);
        JSONObject object = new JSONObject();
        object.put("success",i);
        return object;

    }

    @Override
    public JSONObject searchGoodsOutStock(String local, String goodsType, String goodsName, String specifications, String startDate, String supplierName, String endDate,Integer page, Integer limit) {
        List<GoodsOutStock> goodsOutStocks = outStockMapper.searchGoodsOutStock(local, goodsType, goodsName, specifications, startDate, supplierName, endDate);
        int size = goodsOutStocks.size();
        Page<Object> objects = PageHelper.startPage(page, limit);
        List<GoodsOutStock> goodsOutStock = outStockMapper.searchGoodsOutStock(local, goodsType, goodsName, specifications, startDate, supplierName, endDate);
        String s = JSON.toJSONString(goodsOutStock);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object =new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        return object;
    }
}
