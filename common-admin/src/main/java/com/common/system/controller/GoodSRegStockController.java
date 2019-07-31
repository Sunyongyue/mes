package com.common.system.controller;

import com.alibaba.fastjson.JSONObject;
import com.common.system.service.GoodSRegStockService;
import com.common.system.shiro.ShiroUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

@Controller
@RequestMapping("/goodSRegStock")
public class GoodSRegStockController {
    @Autowired
    GoodSRegStockService regStockService;
    @RequestMapping("/goodSRegStockData")
    @ResponseBody
    public String goodSRegStockData(Integer page, Integer limit){
        JSONObject object = regStockService.queryGoodsRegStock(page, limit);
        return object.toJSONString();
    }
    @RequestMapping("/addGoodsRegStock")
    @ResponseBody
    public String addGoodsRegStock(String goodsType, String goodsName, String specifications, String status, String reason, String department, int nums, String supplierName, String remarks, @SessionAttribute ShiroUser user, String local){
        JSONObject object = regStockService.addGoodsRegStock(goodsType, goodsName, specifications, status, reason, department, nums, supplierName, remarks, user.getUsername(), local);
        return object.toJSONString();
    }
    @RequestMapping("/updateGoodsRegStock")
    @ResponseBody
    public String updateGoodsRegStock(String goodsType, String goodsName, String specifications, String status, String reason, String department, int nums, String supplierName, String remarks,@SessionAttribute ShiroUser user, String local, int id){
        JSONObject object = regStockService.updateGoodsRegStock(goodsType, goodsName, specifications, status, reason, department, nums, supplierName, remarks, user.getUsername(), local, id);
        return object.toJSONString();
    }
    @RequestMapping("/deleteGoodsRegStock")
    @ResponseBody
    public String deleteGoodsRegStock(String[] deList){
        JSONObject object = regStockService.deleteGoodsRegStock(deList);
        return object.toJSONString();
    }
    @RequestMapping("/searchGoodsRegStock")
    @ResponseBody
    public String searchGoodsRegStock(Integer page, Integer limit, String local, String goodsType, String goodsName, String specifications, String startDate, String supplierName, String endDate){
        JSONObject object = regStockService.searchGoodsRegStock(page, limit, local, goodsType, goodsName, specifications, startDate, supplierName, endDate);
        return object.toJSONString();
    }
}
