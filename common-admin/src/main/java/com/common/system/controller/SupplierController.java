package com.common.system.controller;

import com.alibaba.fastjson.JSONObject;
import com.common.system.service.SysSupplierService;
import com.common.system.shiro.ShiroUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SupplierController {
    @Autowired
    SysSupplierService supplierService;
    @RequestMapping("/supplier")
    public ModelAndView supplier(){
        ModelAndView modelAndView = new ModelAndView("supplier");
        return modelAndView;
    }
    @RequestMapping("/supplierDate")
    @ResponseBody
    public String supplierDate(Integer page,Integer limit){
        JSONObject object = supplierService.queryAll(page, limit);
        return object.toJSONString();
    }

    @RequestMapping("/addSupplier")
    @ResponseBody
    public String addSupplier(String local, String supplierNums, String supplierName, String contacts, String tel, String email, String localMore, String remarks, @SessionAttribute ShiroUser user){
        JSONObject object = supplierService.addSupplier(local, supplierNums, supplierName, contacts, tel, "/", localMore, remarks, user.getUsername());
        return object.toJSONString();
    }
    @RequestMapping("/updateSupplier")
    @ResponseBody
    public String updateSupplier(int id, String local, String supplierNums, String supplierName, String contacts, String tel, String email, String localMore, String remarks,  @SessionAttribute ShiroUser user,String operatorTime){
        JSONObject object = supplierService.updateSupplier(id, local, supplierNums, supplierName, contacts, tel, "/", localMore, remarks, user.getUsername(), operatorTime);
        return object.toJSONString();
    }
    @RequestMapping("/deleteSupplier")
    @ResponseBody
    public String deleteSupplier(String[] deList){
        JSONObject object = supplierService.deleteSupplier(deList);
        return object.toJSONString();
    }
    @RequestMapping("/searchSupplier")
    @ResponseBody
    public String searchSupplier(String supplierNums,String local,String supplierName,int page,int limit){
        JSONObject object = supplierService.searchSupplier(supplierNums, local, supplierName, page, limit);
        return object.toJSONString();
    }
    @RequestMapping("/querySupplierLocal")
    @ResponseBody
    public String querySupplierLocal(){
        JSONObject local = supplierService.local();
        return local.toJSONString();
    }
    @RequestMapping("/querySupplierName")
    @ResponseBody
    public String querySupplierName(String local){
        JSONObject object = supplierService.supplierNameSearch(local);
        return object.toJSONString();
    }
}
