package com.common.system.controller;

import com.alibaba.fastjson.JSONObject;
import com.common.system.service.SysPurchaserService;
import com.common.system.shiro.ShiroUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PurchaserController {
    @Autowired
    SysPurchaserService purchaserService;
    @RequestMapping("/purchaser")
    public ModelAndView purchaser(){
        ModelAndView modelAndView = new ModelAndView("purchaser");
        return modelAndView;
    }
    @RequestMapping("/purchaserData")
    @ResponseBody
    public String purchaserData(Integer page,Integer limit){
        JSONObject object = purchaserService.queryAll(page, limit);
        return object.toJSONString();
    }
    @RequestMapping("/addPurchaser")
    @ResponseBody
    public String addPurchaser(String local, String purchaserNums, String purchaserName, String gasGroup, String contacts, String tel, String ipAddress, String ipPort, String localMore, String remarks, @SessionAttribute ShiroUser user){
        JSONObject object = purchaserService.addPurchaser(local, purchaserNums, purchaserName, gasGroup, contacts, tel, ipAddress, ipPort, "/", localMore, remarks, user.getUsername());
        return object.toJSONString();
    }
    @RequestMapping("/updatePurchaser")
    @ResponseBody
    public String updatePurchaser(int id, String local, String purchaserNums, String purchaserName, String gasGroup, String contacts, String tel, String ipAddress, String ipPort, String localMore, String remarks, @SessionAttribute ShiroUser user,String operatorTime){
        JSONObject object = purchaserService.updatePurchaser(id, local, purchaserNums, purchaserName, gasGroup, contacts, tel, ipAddress, ipPort, "/", localMore, remarks, user.getUsername(),operatorTime);
        return object.toJSONString();
    }
    @RequestMapping("/deletePurchaser")
    @ResponseBody
    public String deletePurchaser(String[] deList) {
        JSONObject object = purchaserService.deletePurchaser(deList);
        return object.toJSONString();
    }
    @RequestMapping("/search")
    @ResponseBody
    public String search(String purchaserNums,String local,String purchaserName){
        JSONObject object = purchaserService.searchPurchaser(purchaserNums, local, purchaserName);
        return object.toJSONString();
    }
    @RequestMapping("/local")
    @ResponseBody
    public String local(){
        JSONObject local = purchaserService.local();
        return local.toJSONString();
    }
}
