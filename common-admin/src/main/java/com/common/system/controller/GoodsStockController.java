package com.common.system.controller;

import com.alibaba.fastjson.JSONObject;
import com.common.system.service.GoodsStockService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/goodStock")
public class GoodsStockController {
    @Autowired
    GoodsStockService goodsStockService;
    @RequestMapping("/goodStockData")
    @ResponseBody
    public String goodStockData(Integer page, Integer limit){
        JSONObject object = goodsStockService.queryGoodsStock(page, limit);
        return object.toJSONString();
    }
    @RequestMapping("/searchGoodsStock")
    @ResponseBody
    public String searchGoodsStock(String local, String goodsType, String goodsName, String specifications, String startDate, String supplierName, String endDate, Integer page, Integer limit){
        JSONObject object = goodsStockService.searchGoodsStock(local, goodsType, goodsName, specifications, startDate, supplierName, endDate, page, limit);
        return object.toJSONString();
    }
    @RequestMapping("/locals")
    @ResponseBody
    public String locals(){
        JSONObject locals = goodsStockService.locals();
        return locals.toJSONString();
    }
    @RequestMapping("/supplierNames")
    @ResponseBody
    public String supplierNames(){
        JSONObject locals = goodsStockService.supplierNames();
        return locals.toJSONString();
    }
    @RequestMapping("/goodsTypes")
    @ResponseBody
    public String goodsTypes(){
        JSONObject locals = goodsStockService.goodsTypes();
        return locals.toJSONString();
    }
    @RequestMapping("/goodsNames")
    @ResponseBody
    public String goodsNames(){
        JSONObject locals = goodsStockService.goodsNames();
        return locals.toJSONString();
    }
    @RequestMapping("/specificationss")
    @ResponseBody
    public String specificationss(){
        JSONObject locals = goodsStockService.specificationss();
        return locals.toJSONString();
    }
}
