package com.common.system.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.common.system.service.GoodsOutStockService;
import com.common.system.service.GoodsStockService;
import com.common.system.shiro.ShiroUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/goodsOut")
public class GoodsOutOfStockController {
    @Autowired
    GoodsOutStockService goodsOutStockService;
    @Autowired
    GoodsStockService goodsStockService;
    @RequestMapping("/goodsOutFrom")
    public ModelAndView goodsOutFrom(){
        ModelAndView mav = new ModelAndView("outOfStockFrom");
        return mav;
    }
    @RequestMapping("/goodsOutData")
    @ResponseBody
    public String queryGoodsOutStock(Integer page,Integer limit){
        JSONObject object = goodsOutStockService.queryGoodsOutStock(page, limit);
        return object.toJSONString();
    }
    @RequestMapping("/addGoodsOutStock")
    @ResponseBody
    public String addGoodsOutStock(String tabledata, @SessionAttribute ShiroUser user){
        List<String> date = new ArrayList<>();
        JSONArray array = JSONArray.parseArray(tabledata);
        for (int i =0;i<array.size()-1;i++) {
            if (!(array.getJSONObject(i).getString("local").isEmpty())){
                String local =array.getJSONObject(i).getString("local");
                String supplierName =array.getJSONObject(i).getString("supplierName");
                String goodsType = array.getJSONObject(i).getString("goodsType");
                String goodsName = array.getJSONObject(i).getString("goodsName");
                String specifications = array.getJSONObject(i).getString("specifications");
                int nums = Integer.parseInt(array.getJSONObject(i).getString("nums"));
                String outStockType = array.getJSONObject(i).getString("outStockType");
                String remarks = array.getJSONObject(i).getString("remarks");
                int i1 = goodsStockService.deleteGoodsStock(local, supplierName, goodsName, goodsType, specifications,nums,user.getUsername());
                if (i1>0){
                    date.add(local+" "+supplierName+" "+goodsType+""+goodsName+""+specifications+" 数量："+nums+"出库成功");
                    goodsOutStockService.addGoodsOutStock(goodsName,goodsType,specifications,"正常",outStockType,nums,"10086",supplierName,remarks,user.getUsername(),local);
                }else{
                    date.add(local+" "+supplierName+" "+goodsType+""+goodsName+""+specifications+" 数量："+nums+"出库失败，请检查库存");
                }
            }
        }
        JSONObject object =new JSONObject();
        object.put("success",1);
        object.put("date",date);
        return object.toString();
    }
    @RequestMapping("/searchGoodsOutStock")
    @ResponseBody
    public String searchGoodsOutStock(String local, String goodsType, String goodsName, String specifications, String startDate, String supplierName, String endDate,Integer page, Integer limit){
        JSONObject object = goodsOutStockService.searchGoodsOutStock(local, goodsType, goodsName, specifications, startDate, supplierName, endDate, page, limit);
        return object.toJSONString();
    }

}
