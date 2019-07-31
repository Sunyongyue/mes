package com.common.system.controller;

import com.alibaba.fastjson.JSONObject;
import com.common.system.service.OverGoodsInStockService;
import com.common.system.shiro.ShiroUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/overGoods")
public class OverGoodsController {
    @Autowired
    OverGoodsInStockService goodsInStockService;
    @RequestMapping("/inStock")
    public ModelAndView instock(){
        ModelAndView mav = new ModelAndView("overGoodsInstock");
        return mav;
    }
    @RequestMapping("/queryOverGoodsInStock")
    @ResponseBody
    public String queryOverGoodsInStock(Integer page, Integer limit){
        JSONObject object = goodsInStockService.queryOverGoodsInStock(page, limit);
        return object.toString();
    }
    @RequestMapping("/addOverGoodsInStock")
    @ResponseBody
    public String addOverGoodsInStock(String productNum, @SessionAttribute ShiroUser user, String testRemarks){
        JSONObject object = goodsInStockService.addOverGoodsInStock(productNum, user.getUsername(), testRemarks);
        return object.toString();
    }
    @RequestMapping("/deleteOverGoodsInStock")
    @ResponseBody
    public String deleteOverGoodsInStock(String[] deList){
        int[] array = new int[deList.length-2];
        for (int i=1;i<deList.length-1;i++){
            array[i-1]= Integer.parseInt(deList[i]);
        }
        JSONObject object = goodsInStockService.deleteOverGoodsInStock(array);
        return object.toString();
    }
    @RequestMapping("/searchOverGoodsInStock")
    @ResponseBody
    public String searchOverGoodsInStock(String productNum, String goodsName, String specifications, String operator, String startDate, String endDate, Integer page, Integer limit){
        JSONObject object = goodsInStockService.searchOverGoodsInStock(productNum, goodsName, specifications, operator, startDate, endDate, page, limit);
        return object.toString();
    }
    @RequestMapping("/outStock")
    public ModelAndView outStock(){
        ModelAndView mav = new ModelAndView("overGoodsOutstock");
        return mav;
    }
    @RequestMapping("/stock")
    public ModelAndView stock(){
        ModelAndView mav = new ModelAndView("overGoodsStock");
        return mav;
    }
}
