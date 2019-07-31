package com.common.system.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.GoodsRegStock;
import com.common.system.mapper.GoodsRegStockMapper;
import com.common.system.service.GoodSRegStockService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodSRegStockServiceImpl implements GoodSRegStockService {
    @Autowired
    GoodsRegStockMapper stockMapper;
    @Override
    public JSONObject queryGoodsRegStock(Integer page, Integer limit) {
        List<GoodsRegStock> goodsRegStocks = stockMapper.queryGoodsRegStock();
        int size = goodsRegStocks.size();
        Page<Object> objects = PageHelper.startPage(page, limit);
        List<GoodsRegStock> goodsRegStock = stockMapper.queryGoodsRegStock();
        String s = JSON.toJSONString(goodsRegStock);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object =new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        return object;
    }

    @Override
    public JSONObject addGoodsRegStock(String goodsType, String goodsName, String specifications, String status, String reason, String department, int nums, String supplierName, String remarks, String operator, String local) {
        int i = stockMapper.addGoodsRegStock(goodsType, goodsName, specifications, status, reason, department, nums, supplierName, remarks, operator, local);
        JSONObject object = new JSONObject();
        object.put("success",i);
        return object;
    }

    @Override
    public JSONObject updateGoodsRegStock(String goodsType, String goodsName, String specifications, String status, String reason, String department, int nums, String supplierName, String remarks, String operator, String local, int id) {
        int i = stockMapper.updateGoodsRegStock(goodsType, goodsName, specifications, status, reason, department, nums, supplierName, remarks, operator, local, id);
        JSONObject object = new JSONObject();
        object.put("success",i);
        return object;
    }

    @Override
    public JSONObject deleteGoodsRegStock(String[] deList) {
        int a =0;
        for (int x=1;x<deList.length-1;x++) {
            int i = Integer.parseInt(deList[x]);
            int i1 = stockMapper.deleteGoodsRegStock(i);
            a=a+i1;
        }
        JSONObject object = new JSONObject();
        if (a==(deList.length-2)){
            object.put("success",1);
        }else {
            object.put("success",-1);
        }
        return object;
    }

    @Override
    public JSONObject searchGoodsRegStock(Integer page, Integer limit, String local, String goodsType, String goodsName, String specifications, String startDate, String supplierName, String endDate) {
        List<GoodsRegStock> goodsRegStocks = stockMapper.searchGoodsRegStock(local, goodsType, goodsName, specifications, startDate, supplierName, endDate);
        int size = goodsRegStocks.size();
        Page<Object> objects = PageHelper.startPage(page, limit);
        List<GoodsRegStock> goodsRegStock = stockMapper.searchGoodsRegStock(local, goodsType, goodsName, specifications, startDate, supplierName, endDate);
        String s = JSON.toJSONString(goodsRegStock);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object =new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        return object;
    }
}
