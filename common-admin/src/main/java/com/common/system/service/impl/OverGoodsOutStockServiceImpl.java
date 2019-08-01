package com.common.system.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.OverGoodsOutStock;
import com.common.system.entity.ProductOrder;
import com.common.system.entity.SaleOrder;
import com.common.system.mapper.OverGoodsOutStockMapper;
import com.common.system.mapper.OverGoodsStockMapper;
import com.common.system.mapper.ProductOrderMapper;
import com.common.system.mapper.SaleOrderMapper;
import com.common.system.service.OverGoodsOutStockService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OverGoodsOutStockServiceImpl implements OverGoodsOutStockService {
    @Autowired
    OverGoodsOutStockMapper outStockMapper;
    @Autowired
    OverGoodsStockMapper goodsStockMapper;
    @Autowired
    SaleOrderMapper saleOrderMapper;
    @Autowired
    ProductOrderMapper productOrderMapper;
    @Override
    public JSONObject queryOverGoodsOutStock(Integer page, Integer limit) {
        List<OverGoodsOutStock> overGoodsOutStocks = outStockMapper.queryOverGoodsOutStock();
        int size = overGoodsOutStocks.size();
        PageHelper.startPage(page,limit);
        List<OverGoodsOutStock> overGoodsOutStock = outStockMapper.queryOverGoodsOutStock();
        String s = JSON.toJSONString(overGoodsOutStock);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object = new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        return object;
    }

    @Override
    public JSONObject addOverGoodsOutStock(String productNum, String salenum, String outFactoryMan, String getOutFactoryTime, int outStockNums, String outStockType, String outStockremarks) {
        List<SaleOrder> saleOrders = saleOrderMapper.searchSaleOrder(salenum, "", "", "", "", "", "", "");
        List<ProductOrder> productOrders = productOrderMapper.searchProductOrder(productNum, "", "", "", "", "");
        int i1 = goodsStockMapper.deleteGoodsStock(saleOrders.get(0).getProductNameOrder(), saleOrders.get(0).getProductSpecificationsOrder(), productOrders.get(0).getIntakeDirection(), outStockNums,outFactoryMan);
        if (i1>0){
            int i = outStockMapper.addOverGoodsOutStock(productNum, salenum, outFactoryMan, getOutFactoryTime, outStockNums, outStockType, outStockremarks);
            JSONObject object = new JSONObject();
            object.put("success",i);
            return object;}else {
            JSONObject object = new JSONObject();
            object.put("success",0);
            return object;
        }

    }

    @Override
    public JSONObject searchOverGoodsOutStock(String salenum, String productNameOrder, String productSpecificationsOrder, String outFactoryMan, String startDate, String endDate,Integer page,Integer limit) {
        List<OverGoodsOutStock> overGoodsOutStocks = outStockMapper.searchOverGoodsOutStock(salenum, productNameOrder, productSpecificationsOrder, outFactoryMan, startDate, endDate);
        int size = overGoodsOutStocks.size();
        PageHelper.startPage(page,limit);
        List<OverGoodsOutStock> overGoodsOutStock = outStockMapper.searchOverGoodsOutStock(salenum, productNameOrder, productSpecificationsOrder, outFactoryMan, startDate, endDate);
        String s = JSON.toJSONString(overGoodsOutStock);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object = new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        return object;
    }
}
