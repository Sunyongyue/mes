package com.common.system.controller;

import com.alibaba.fastjson.JSONObject;
import com.common.system.service.OverGoodsInStockService;
import com.common.system.service.OverGoodsOutStockService;
import com.common.system.service.OverGoodsStockService;
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
    @Autowired
    OverGoodsStockService goodsStockService;
    @Autowired
    OverGoodsOutStockService outStockService;
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
    @RequestMapping("/queryOverGoodsOutStock")
    @ResponseBody
    public String queryOverGoodsOutStock(Integer page, Integer limit){
        JSONObject object = outStockService.queryOverGoodsOutStock(page, limit);
        return object.toString();
    }
    @RequestMapping("/addOverGoodsOutStock")
    @ResponseBody
    public String addOverGoodsOutStock(String productNum, String salenum, @SessionAttribute ShiroUser user, String getOutFactoryTime, int outStockNums, String outStockType, String outStockremarks){
        JSONObject object = outStockService.addOverGoodsOutStock(productNum, salenum, user.getUsername(), getOutFactoryTime, outStockNums, outStockType,outStockremarks);
        return object.toString();
    }
    @RequestMapping("/searchOverGoodsOutStock")
    @ResponseBody
    public String searchOverGoodsOutStock(String salenum, String productNameOrder, String productSpecificationsOrder, String outFactoryMan, String startDate, String endDate,Integer page,Integer limit){
        JSONObject object = outStockService.searchOverGoodsOutStock(salenum, productNameOrder, productSpecificationsOrder, outFactoryMan, startDate, endDate, page, limit);
        return object.toString();
    }
    @RequestMapping("/stock")
    public ModelAndView stock(){
        ModelAndView mav = new ModelAndView("overGoodsStock");
        return mav;
    }
    @RequestMapping("/queryOverGoodsStock")
    @ResponseBody
    public String queryOverGoodsStock(Integer page, Integer limit){
        JSONObject object = goodsStockService.queryOverGoodsStock(page, limit);
        return object.toString();
    }
    @RequestMapping("/serchOverGoodsStock")
    @ResponseBody
    public String serchOverGoodsStock(String goodsName, String specifications, String intakeDirection, String operator, String startDate, String endDate,Integer page,Integer limit){
        JSONObject object = goodsStockService.serchOverGoodsStock(goodsName, specifications, intakeDirection, operator, startDate, endDate, page, limit);
        return object.toString();
    }
}
