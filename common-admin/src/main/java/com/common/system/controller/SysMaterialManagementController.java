package com.common.system.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.common.system.service.SysMaterialManagementService;
import com.common.system.shiro.ShiroUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/sysMaterialManagement")
public class SysMaterialManagementController {
    @Autowired
    SysMaterialManagementService managementService;
    @RequestMapping("/view")
    public ModelAndView sysMaterialManagementView(){
        ModelAndView mav = new ModelAndView("sysMaterialManagement");
        return mav;
    }
    @RequestMapping("/sysMaterialManagementDate")
    @ResponseBody
    public JSONArray sysMaterialManagementDate(){
        JSONArray array = managementService.queryAll();
        return array;
    }
    @RequestMapping("/addSysMaterial")
    @ResponseBody
    public String addSysMaterial(int pid, String title, String factory, String materialtype, String materialName, String materialSpecification, String remarks,@SessionAttribute ShiroUser user){
        JSONObject object = managementService.addSysMaterial(pid, title, factory, materialtype, materialName, materialSpecification, remarks, user.getUsername());
        return object.toJSONString();
    }
    @RequestMapping("/updateSysMaterial")
    @ResponseBody
    public String updateSysMaterial(int pid, String title, String factory, String materialtype, String materialName, String materialSpecification, String remarks,@SessionAttribute ShiroUser user,int id){
        JSONObject object = managementService.updateSysMaterial(pid, title, factory, materialtype, materialName, materialSpecification, remarks, user.getUsername(), id);
        return object.toJSONString();
    }
    @RequestMapping("/deleteSysMaterial")
    @ResponseBody
    public String deleteSysMaterial(int id){
        JSONObject object = managementService.deleteSysMaterial(id);
        return object.toJSONString();
    }
    @RequestMapping("/queryByPid")
    @ResponseBody
    public String queryByPid(int pid){
        JSONObject object = managementService.queryByPid(pid);
        return object.toJSONString();
    }
    @RequestMapping("/querygoodsType")
    @ResponseBody
    public String queryByPid(String factory){
        if (factory.isEmpty()){
            JSONObject object =new JSONObject();
            object.put("success",0);
            return object.toJSONString();
        }else{
            JSONObject object = managementService.querygoodsType(factory);
            return object.toJSONString();
        }

    }
}
