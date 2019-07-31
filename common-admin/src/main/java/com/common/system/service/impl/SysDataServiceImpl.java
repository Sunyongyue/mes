package com.common.system.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.Sysdata;
import com.common.system.mapper.SysdataMapper;
import com.common.system.service.SysDataService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.ArrayList;
import java.util.List;
@Service
public class SysDataServiceImpl implements SysDataService {
    @Autowired
    SysdataMapper sysdataMapper;

    @Override
    public JSONArray queryAll() {
        List<Sysdata> sysdata = sysdataMapper.queryAll();
        String s = JSON.toJSONString(sysdata);
        JSONArray array = JSONArray.parseArray(s);
        return array;
    }

    @Override
    public JSONObject addSysData(int pid, String title, String dataname, String operator) {
        int i = sysdataMapper.addSysData(pid, title, dataname,operator);
        JSONObject object =new JSONObject();
        object.put("success",i);
        return object;
    }

    @Override
    public JSONObject updateSysData(int pid, String title, String dataname,int id,String operator,String operatorTime) {
        int i = sysdataMapper.updateSysData(pid, title, dataname,id,operator,operatorTime);
        JSONObject object =new JSONObject();
        object.put("success",i);
        return object;
    }

    @Override
    public JSONObject deleteSysData(int id) {
        int i = sysdataMapper.deleteSysData(id);
        JSONObject object =new JSONObject();
        object.put("success",i);
        return object;
    }

    @Override
    public JSONObject queryLocal(int pid) {
        List<String> local = new ArrayList<>();
        List<Sysdata> sysdata = sysdataMapper.queryLocal(pid);
        for (Sysdata data:sysdata) {
            local.add(data.getDataname());
        }
        String s = JSON.toJSONString(local);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object =new JSONObject();
        object.put("date",array);
        object.put("success",1);
        return object;
    }
}
