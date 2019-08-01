package com.common.system.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.OverGoodsInStock;
import com.common.system.entity.OverGoodsStock;
import com.common.system.entity.PubProduct;
import com.common.system.mapper.OverGoodsInStockMapper;
import com.common.system.mapper.OverGoodsStockMapper;
import com.common.system.mapper.PubProductMapper;
import com.common.system.service.OverGoodsInStockService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OverGoodsInStockServiceImpl implements OverGoodsInStockService {
    @Autowired
    OverGoodsInStockMapper overGoodsInStockMapper;
    @Autowired
    PubProductMapper productMapper;
    @Autowired
    OverGoodsStockMapper goodsStockMapper;
    @Override
    public JSONObject queryOverGoodsInStock(Integer page, Integer limit) {
        List<OverGoodsInStock> overGoodsInStocks = overGoodsInStockMapper.queryOverGoodsInStock();
        int size = overGoodsInStocks.size();
        Page<Object> objects = PageHelper.startPage(page, limit);
        List<OverGoodsInStock> overGoodsInStock = overGoodsInStockMapper.queryOverGoodsInStock();
        String s = JSON.toJSONString(overGoodsInStock);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object =new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        return object;
    }

    @Override
    public JSONObject addOverGoodsInStock(String productNum, String operator, String testRemarks) {
        int stock=0;
        List<PubProduct> pubProducts = productMapper.searchPubProduct(productNum, "", "", "", "", "");
        String goodsName = pubProducts.get(0).getGoodsName();
        String specifications = pubProducts.get(0).getSpecifications();
        String intakeDirection = pubProducts.get(0).getIntakeDirection();
        String testDate = pubProducts.get(0).getTestDate();
        List<OverGoodsStock> overGoodsStocks = goodsStockMapper.queryExist(goodsName, specifications, intakeDirection);
        int nums = pubProducts.get(0).getNums();
        if (overGoodsStocks.isEmpty()){
            stock = goodsStockMapper.addOverGoodsStock(goodsName, specifications, intakeDirection, "成品库", nums, operator, testRemarks);
        }else {
            stock = goodsStockMapper.updateGoodsStock(goodsName, specifications, intakeDirection, nums, operator);
        }
        if (stock>0){
            int i = overGoodsInStockMapper.addOverGoodsInStock(productNum, goodsName, specifications, intakeDirection, testDate, nums, operator, testRemarks);
            JSONObject object = new JSONObject();
            object.put("success",i);
            return object;
        }else {
            JSONObject object = new JSONObject();
            object.put("success",0);
            return object;
        }

    }

    @Override
    public JSONObject deleteOverGoodsInStock(int[] array) {
        int i = overGoodsInStockMapper.deleteOverGoodsInStock(array);
        JSONObject object = new JSONObject();
        object.put("success",i);
        return object;
    }


    @Override
    public JSONObject searchOverGoodsInStock(String productNum, String goodsName, String specifications, String operator, String startDate, String endDate, Integer page, Integer limit) {
        List<OverGoodsInStock> overGoodsInStocks = overGoodsInStockMapper.searchOverGoodsInStock(productNum, goodsName, specifications, operator, startDate, endDate);
        int size = overGoodsInStocks.size();
        Page<Object> objects = PageHelper.startPage(page, limit);
        List<OverGoodsInStock> overGoodsInStock = overGoodsInStockMapper.searchOverGoodsInStock(productNum, goodsName, specifications, operator, startDate, endDate);
        String s = JSON.toJSONString(overGoodsInStock);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object =new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        return object;
    }
}
