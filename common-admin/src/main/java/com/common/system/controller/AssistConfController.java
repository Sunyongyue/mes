package com.common.system.controller;

import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.AssistConf;
import com.common.system.service.AssistConfService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/assist")
public class AssistConfController {
    @Autowired
    AssistConfService assistConfService;
    @RequestMapping("/queryAssist")
    @ResponseBody
    public String queryAssist(String valveSupplier, String valveName, String valveSpecifications, String ConfPulse){
        JSONObject object = new JSONObject();

        if (valveName.contains("角阀")){
            valveName="角阀";
        }else if (valveName.contains("慢关")){
           valveName=valveName.replaceAll("慢关", "");
       }else if (valveName.contains("快关")){
           valveName=valveName.replaceAll("快关", "");
       }
       /* System.out.println(valveSupplier+valveName+valveSpecifications+ConfPulse);*/
        List<AssistConf> assistConfs = assistConfService.queryByConfPulse(valveSupplier, valveName, valveSpecifications, ConfPulse);
        if (assistConfs.size()==1){
            object.put("success",1);
            object.put("openTime",assistConfs.get(0).getConfOpenTime());
            object.put("alarmVol",assistConfs.get(0).getConfAlarmVol());
            object.put("closeTime",assistConfs.get(0).getConfCloseTime());
            object.put("reserveVol",assistConfs.get(0).getConfReserveVol());
           /* System.out.println(assistConfs.get(0).getConfOpenTime()+"op"+assistConfs.get(0).getConfAlarmVol()+"al"+assistConfs.get(0).getConfCloseTime()+"cl"+assistConfs.get(0).getConfReserveVol());*/

        }else{
            object.put("success",0);
        }
        return object.toString();
    }
}
