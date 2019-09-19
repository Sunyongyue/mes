package com.common.system.controller;

import com.alibaba.fastjson.JSONObject;
import com.common.system.service.ConfigMesService;
import com.common.system.service.GasHistoryLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
@Controller
@RequestMapping("/messsage")
public class MessageController {
    @Autowired
    ConfigMesService mesService;
    @Autowired
    GasHistoryLogService logService;
    @RequestMapping("/configMes")
    public ModelAndView configMesDate(){
        ModelAndView mav = new ModelAndView("configMes");
        return mav;
    }
    @RequestMapping("/gasLog")
    public ModelAndView gasLog(){
        ModelAndView mav = new ModelAndView("gasLog");
        return mav;
    }
    @RequestMapping("/queryAllConfigMes")
    @ResponseBody
    public String queryAllConfigMes(int page,int limit){
        JSONObject object = mesService.queryAllConfigMes(page, limit);
        return object.toString();
    }
    @RequestMapping("/serachConfigMes")
    @ResponseBody
    public String serachConfigMes(String conDeviceAddr,String confValveModel,String startDate,String endDate,int page,int limit){
        JSONObject object = mesService.serachConfigMes(conDeviceAddr,confValveModel, startDate, endDate, page, limit);
        return object.toString();
    }
    @RequestMapping("/queryAllGasHistoryLog")
    @ResponseBody
    public String queryAllGasHistoryLog(int page,int limit){
        JSONObject object = logService.queryAllGasHistoryLog(page, limit);
        return object.toString();
    }
    @RequestMapping("/search")
    @ResponseBody
    public String search(String conDeviceAddr,String report_type,String startDate,String endDate,int page,int limit){
        JSONObject object = logService.serchByTelNum(conDeviceAddr,report_type, startDate, endDate, page, limit);
        return object.toString();
    }
}
