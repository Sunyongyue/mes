package com.common.system.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.GoodsInStock;
import com.common.system.service.GoodsInStockService;
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
    @Autowired
    GoodsInStockService goodsInStockService;
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
    @RequestMapping("/saoMaChuKu")
    @ResponseBody
    public String saoMaChuKu(String pipelineNumber){
        JSONObject object = new JSONObject();
        List<GoodsInStock> goodsInStocks = goodsInStockService.queryBypipelineNumber(pipelineNumber);
        if (goodsInStocks.size()==1){
            String goodsType = goodsInStocks.get(0).getGoodsType();
            String goodsName = goodsInStocks.get(0).getGoodsName();
            String specifications = goodsInStocks.get(0).getSpecifications();
            String supplierName = goodsInStocks.get(0).getSupplierName();
            String local = goodsInStocks.get(0).getLocal();
            object.put("success",1);
            object.put("goodsType",goodsType);
            object.put("goodsName",goodsName);
            object.put("specifications",specifications);
            object.put("supplierName",supplierName);
            object.put("local",local);
            /*goodsOutStockService.addGoodsOutStock(goodsType,goodsName,specifications,"正常","生产",1,pipelineNumber,supplierName,"remarks");*/
        }else{
            object.put("success",0);
        }
        return object.toString();
    }
    @RequestMapping("/confirmOut")
    @ResponseBody
    public String confirmOut(String supplierName,String goodsType,String goodsName,String specifications,String outStockType,String remarks,String pipelineNumber,String local,@SessionAttribute ShiroUser user){
        JSONObject object = new JSONObject();
        int i = goodsStockService.deleteGoodsStock(local, supplierName, goodsType, goodsName, specifications,1, user.getUsername());
        if (i>0){
             goodsOutStockService.addGoodsOutStock(goodsType, goodsName, specifications, "正常", outStockType,1, pipelineNumber, supplierName, remarks, user.getUsername(), local);
            object.put("sc",1);
        }else {
            object.put("sc",0);
        }
        return object.toString();
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
                    goodsOutStockService.addGoodsOutStock(goodsName,goodsType,specifications,"正常",outStockType,nums,"/",supplierName,remarks,user.getUsername(),local);
                }else{
                    date.add(local+" "+supplierName+" "+goodsType+""+goodsName+""+specifications+" 数量："+nums+"出库失败，请检查库存");
                }
            }
        }
        goodsStockService.deleteOne();
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
