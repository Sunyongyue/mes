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
        if(title.length()==2){
            materialtype="";
            materialName="";
            materialSpecification="";

        }else if (title.length()==4){
            factory="";
            materialName="";
            materialSpecification="";
        }else if (title.length()==6){
            factory="";
            materialtype="";
            materialSpecification="";
        }else if (title.length()==8){
            factory="";
            materialName="";
            materialtype="";
        }
        int i = managementService.selectCountSysMaterialManagement(pid);
        String s = intToString(i + 1);
        JSONObject object = managementService.addSysMaterial(pid, title+s, factory, materialtype, materialName, materialSpecification, remarks, user.getUsername());
        return object.toJSONString();
    }
    public String intToString(int i){
        if (i<10){
            return ("0"+i);
        }else if (i>=100){
            return (""+i);
        }else {
            return ""+i;
        }

    }
    @RequestMapping("/updateSysMaterial")
    @ResponseBody
    public String updateSysMaterial(int pid, String title, String factory, String materialtype, String materialName, String materialSpecification, String remarks,@SessionAttribute ShiroUser user,int id){
        if(title.length()==4){
            materialtype="";
            materialName="";
            materialSpecification="";

        }else if (title.length()==6){
            factory="";
            materialName="";
            materialSpecification="";
        }else if (title.length()==8){
            factory="";
            materialtype="";
            materialSpecification="";
        }else if (title.length()==10){
            factory="";
            materialName="";
            materialtype="";
        }
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
