package com.common.system.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.common.system.service.DistributNumberService;
import com.common.system.service.PubProductService;
import com.common.system.shiro.ShiroUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/production")
public class ProductionController {
    @Autowired
    DistributNumberService numberService;
    @Autowired
    PubProductService pubProductService;
    @RequestMapping("/distributNumber")
    public ModelAndView distributNumber(){
        ModelAndView mav = new ModelAndView("distributNumber");
        return mav;
    }
    @RequestMapping("/pubProduct")
    public ModelAndView pubProduct(){
        ModelAndView mav = new ModelAndView("pubProduct");
        return mav;
    }
    @RequestMapping("/queryDistributNumber")
    @ResponseBody
    public String queryDistributNumber(Integer page, Integer limit){
        JSONObject object = numberService.queryDistributNumber(page, limit);
        return object.toString();
    }
    @RequestMapping("/addDistributNumberMapper")
    @ResponseBody
    public String addDistributNumberMapper(String telNum, String controlMainNum, String telMainNum, String fourMainNum, String status, String remarks, @SessionAttribute ShiroUser user){
        JSONObject object = numberService.addDistributNumberMapper(telNum, controlMainNum, telMainNum, fourMainNum, "正常", remarks, user.getUsername());
        return object.toString();
    }
    @RequestMapping("/deleteDistributNumberMapper")
    @ResponseBody
    public String deleteDistributNumberMapper(String[] deList){
       int[] array = new int[deList.length-2];
     for (int i=1;i<deList.length-1;i++){
            array[i-1]= Integer.parseInt(deList[i]);
     }

        JSONObject object = numberService.deleteDistributNumberMapper(array);
        return object.toString();
    }
    @RequestMapping("/distributNumberSearch")
    @ResponseBody
    public String distributNumberSearch(String telNum, String mainBoardNum, String startDate, String endDate, Integer page, Integer limit){
        JSONObject object = numberService.distributNumberSearch(telNum, mainBoardNum, startDate, endDate, page, limit);
        return object.toString();
    }
    @RequestMapping("/pubProductDate")
    @ResponseBody
    public String queryPubProduct(Integer page, Integer limit){
        JSONObject object = pubProductService.queryPubProduct(page, limit);
        return object.toString();
    }
    @RequestMapping("/addPubProduct")
    @ResponseBody
    public String addPubProduct(String productNum, String valveNUms, String controlMainBoardNums, @SessionAttribute ShiroUser user, String tester, String testRemarks){
        JSONObject object = pubProductService.addPubProduct(productNum, valveNUms, controlMainBoardNums, user.getUsername(), "", testRemarks);
        return object.toString();
    }
    @RequestMapping("/updatePubProduct")
    @ResponseBody
    public String updatePubProduct(int ids,@SessionAttribute ShiroUser user){
        JSONObject object = pubProductService.updatePubProduct(ids, user.getUsername());
        return object.toString();
    }
    @RequestMapping("/dtletePubProduct")
    @ResponseBody
    public String dtletePubProduct(String[] deList){
        int[] array = new int[deList.length-2];
        for (int i=1;i<deList.length-1;i++){
            array[i-1]= Integer.parseInt(deList[i]);
        }
        JSONObject object = pubProductService.dtletePubProduct(array);
        return object.toString();
    }
    @RequestMapping("/searchPubProduct")
    @ResponseBody
    public String searchPubProduct(String productNum, String goodsName, String specifications, String operator, String startDate, String endDate, Integer page, Integer limit){
        JSONObject object = pubProductService.searchPubProduct(productNum, goodsName, specifications, operator, startDate, endDate, page, limit);
        return object.toString();
    }
}
