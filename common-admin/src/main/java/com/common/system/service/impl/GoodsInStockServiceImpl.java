package com.common.system.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.GoodsInStock;
import com.common.system.mapper.GoodsInStockMapper;
import com.common.system.service.GoodsInStockService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodsInStockServiceImpl implements GoodsInStockService {
    @Autowired
    GoodsInStockMapper goodsInStockMapper;
    @Override
    public JSONObject queryGoodsInStock(Integer page, Integer limit) {
        List<GoodsInStock> goodsInStocks = goodsInStockMapper.queryGoodsInStock();
        int size = goodsInStocks.size();
        Page<Object> objects = PageHelper.startPage(page, limit);
        List<GoodsInStock> goodsInStocks1 =goodsInStockMapper.queryGoodsInStock();
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
    public JSONObject addGoodsInStock(String local, String goodsType, String goodsName, String specifications, String goodsProduceDate, String status, int goodsNums, String supplierName, String pipelineNumber, String operators, String cardNums, String IMSI, String IMEI, String ICCID, String remarks, String operator, String activeTime, String shutdownTime) {
        int i = goodsInStockMapper.addGoodsInStock(local, goodsType, goodsName, specifications, goodsProduceDate, status, goodsNums, supplierName, pipelineNumber, operators, cardNums, IMSI, IMEI, ICCID, remarks, operator,activeTime,shutdownTime);
        JSONObject object = new JSONObject();
        object.put("success",i);
        return object;
    }

    @Override
    public JSONObject deleteGoodsInStock(String[] deList) {
        int a =0;
        for (int x=1;x<deList.length-1;x++) {
            int i = Integer.parseInt(deList[x]);
            int i1 = goodsInStockMapper.deleteGoodsInStock(i);
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
    public JSONObject updateGoodsInStock(int id, String local, String goodsType, String goodsName, String specifications, String goodsProduceDate, String status, int goodsNums, String supplierName, String pipelineNumber, String operators, String cardNums, String IMSI, String IMEI, String ICCID, String remarks, String operator,String activeTime, String shutdownTime) {
        int i = goodsInStockMapper.updateGoodsInStock(id, local, goodsType, goodsName, specifications, goodsProduceDate, status, goodsNums, supplierName, pipelineNumber, operators, cardNums, IMSI, IMEI, ICCID, remarks, operator,activeTime,shutdownTime);
        JSONObject object = new JSONObject();
        object.put("success",i);
        return object;
    }

    @Override
    public JSONObject searchGoodsInStock(String local, String goodsType, String goodsName, String specifications, String startDate, String supplierName, String endDate, Integer page, Integer limit) {
        List<GoodsInStock> goodsInStocks = goodsInStockMapper.searchGoodsInStock(local, goodsType, goodsName, specifications, startDate, supplierName, endDate);
        int size = goodsInStocks.size();
        Page<Object> objects = PageHelper.startPage(page, limit);
        List<GoodsInStock> goodsInStocks2 = goodsInStockMapper.searchGoodsInStock(local, goodsType, goodsName, specifications, startDate, supplierName, endDate);
        String s = JSON.toJSONString(goodsInStocks2);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object =new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        return object;
    }

    @Override
    public List<GoodsInStock> queryBypipelineNumber(String pipelineNumber) {
        List<GoodsInStock> goodsInStocks = goodsInStockMapper.queryBypipelineNumber(pipelineNumber);
        return goodsInStocks;
    }
}
