package com.common.system.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.common.system.service.SysDataService;
import com.common.system.shiro.ShiroUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DataController {
    @Autowired
    SysDataService sysDataService;
    @RequestMapping("/data")
    public ModelAndView supplier(){
        ModelAndView modelAndView = new ModelAndView("data");
        return modelAndView;
    }
    @RequestMapping("/dataList")
    @ResponseBody
    public JSONArray treeDate(){
        JSONArray array = sysDataService.queryAll();
        return array;
    }
    @RequestMapping("/treeDateAdd")
    @ResponseBody
    public String treeDateAdd(int pid, String title, String dataname,@SessionAttribute ShiroUser user){
        JSONObject object = sysDataService.addSysData(pid, title, dataname,user.getUsername());
        return object.toJSONString();
    }
    @RequestMapping("/updateDateAdd")
    @ResponseBody
    public String updateDateAdd(int pid, String title, String dataname,int id,@SessionAttribute ShiroUser user,String operatorTime){
        JSONObject object = sysDataService.updateSysData(pid, title, dataname,id,user.getUsername(),operatorTime);
        return object.toJSONString();
    }
    @RequestMapping("/deleteDate")
    @ResponseBody
    public String deleteDate(int id){
        JSONObject object = sysDataService.deleteSysData(id);
        return object.toJSONString();
    }
    @RequestMapping("/queryLocal")
    @ResponseBody
    public String queryLocal(int pid){
        System.out.println("进入地址查询");
        JSONObject object = sysDataService.queryLocal(pid);
        return object.toJSONString();
    }
}
