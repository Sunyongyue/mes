package com.common.system.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.GoodsStock;
import com.common.system.mapper.GoodsStockMapper;
import com.common.system.service.GoodsStockService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodsStockServiceImpl implements GoodsStockService {
    @Autowired
    GoodsStockMapper goodsStockMapper;
    @Override
    public JSONObject queryGoodsStock(Integer page, Integer limit) {
        List<GoodsStock> goodsStocks = goodsStockMapper.queryGoodsStock();
        int size = goodsStocks.size();
        Page<Object> objects = PageHelper.startPage(page, limit);
        List<GoodsStock> goodsStock = goodsStockMapper.queryGoodsStock();
        String s = JSON.toJSONString(goodsStock);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object =new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        return object;
    }

    @Override
    public JSONObject searchGoodsStock(String local, String goodsType, String goodsName, String specifications, String startDate, String supplierName, String endDate, Integer page, Integer limit) {
        List<GoodsStock> goodsStocks = goodsStockMapper.searchGoodsStock(local, goodsType, goodsName, specifications, startDate, supplierName, endDate);
        int size = goodsStocks.size();
        Page<Object> objects = PageHelper.startPage(page, limit);
        List<GoodsStock> goodsStock = goodsStockMapper.searchGoodsStock(local, goodsType, goodsName, specifications, startDate, supplierName, endDate);
        String s = JSON.toJSONString(goodsStock);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object =new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        return object;
    }

    @Override
    public int addGoodsStock(String local, String supplierName, String goodsType, String goodsName, String specifications, String goodsProduceDate, String goodsStock, int nums, String remarks, String operator) {
        int i = goodsStockMapper.addGoodsStock(local, supplierName, goodsType, goodsName, specifications, goodsProduceDate, goodsStock, nums, remarks, operator);
        return i;
    }

    @Override
    public int deleteGoodsStock(String local, String supplierName, String goodsType, String goodsName, String specifications, int nums, String operator) {
        int i = goodsStockMapper.deleteGoodsStock(local, supplierName, goodsType, goodsName, specifications, nums, operator);
        return i;
    }

    @Override
    public int updateGoodsStock(String local, String supplierName, String goodsType, String goodsName, String specifications, int nums, String operator) {
        int i = goodsStockMapper.updateGoodsStock(local, supplierName, goodsType, goodsName, specifications, nums, operator);
        return i;

    }

    @Override
    public int deleteOne() {
        int i = goodsStockMapper.deleteOne();
        return i;
    }

    @Override
    public List<GoodsStock> queryExist(String local, String supplierName, String goodsType, String goodsName, String specifications) {
        List<GoodsStock> goodsStocks = goodsStockMapper.queryExist(local, supplierName, goodsType, goodsName, specifications);
        return goodsStocks;
    }

    @Override
    public JSONObject locals() {
        List<String> locals = goodsStockMapper.locals();
        String s = JSON.toJSONString(locals);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object = new JSONObject();
        object.put("date",array);
        object.put("success",1);
        return object;
    }

    @Override
    public JSONObject supplierNames() {
        List<String> supplierNames = goodsStockMapper.supplierNames();
        String s = JSON.toJSONString(supplierNames);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object = new JSONObject();
        object.put("date",array);
        object.put("success",1);
        return object;
    }

    @Override
    public JSONObject goodsTypes() {
        List<String> goodsTypes = goodsStockMapper.goodsTypes();
        String s = JSON.toJSONString(goodsTypes);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object = new JSONObject();
        object.put("date",array);
        object.put("success",1);
        return object;
    }

    @Override
    public JSONObject goodsNames() {
        List<String> goodsNames = goodsStockMapper.goodsNames();
        String s = JSON.toJSONString(goodsNames);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object = new JSONObject();
        object.put("date",array);
        object.put("success",1);
        return object;
    }

    @Override
    public JSONObject specificationss() {
        List<String> specificationss = goodsStockMapper.specificationss();
        String s = JSON.toJSONString(specificationss);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object = new JSONObject();
        object.put("date",array);
        object.put("success",1);
        return object;
    }
}
