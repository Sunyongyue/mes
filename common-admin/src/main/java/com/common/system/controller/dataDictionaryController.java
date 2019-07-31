package com.common.system.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.common.system.service.ThDictService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/tree")
public class dataDictionaryController {
    @Autowired
    ThDictService thDictService;
    @RequestMapping("/treeView")
    public ModelAndView treeView(){
        ModelAndView mav = new ModelAndView("tree");
        return mav;
    }
    @RequestMapping("/treeDate")
    @ResponseBody
    public JSONArray treeDate(){
        JSONArray array = thDictService.queryAll();
        return array;
    }
    @RequestMapping("/treeDateAdd")
    @ResponseBody
    public String treeDateAdd(int pid, String title, String goodsName, String goodsType,String goodsUnit,String goodsStock,int id){
        JSONObject object = thDictService.addThDict(id, title, goodsName, goodsType, goodsUnit,goodsStock);
        return object.toJSONString();
    }
    @RequestMapping("/updateDateAdd")
    @ResponseBody
    public String updateDateAdd(int pid, String title, String goodsName, String goodsType,String goodsUnit,String goodsStock,int id){
        JSONObject object = thDictService.updateThDict(pid, title, goodsName, goodsType, goodsUnit, goodsStock, id);
        return object.toJSONString();
    }
    @RequestMapping("/deleteDate")
    @ResponseBody
    public String deleteDate(int pid,int id){
        JSONObject object = thDictService.deleteThDict(id,pid);
        return object.toJSONString();
    }
}
