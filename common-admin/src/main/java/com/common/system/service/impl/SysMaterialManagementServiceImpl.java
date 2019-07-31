package com.common.system.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.SysMaterialManagement;
import com.common.system.mapper.SysMaterialManagementMapper;
import com.common.system.service.SysMaterialManagementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SysMaterialManagementServiceImpl implements SysMaterialManagementService {
    @Autowired
    SysMaterialManagementMapper managementMapper;
    @Override
    public JSONArray queryAll() {
        List<SysMaterialManagement> sysMaterialManagements = managementMapper.queryAll();
        String s = JSON.toJSONString(sysMaterialManagements);
        JSONArray array = JSONArray.parseArray(s);
        return array;
    }

    @Override
    public JSONObject addSysMaterial(int pid, String title, String factory, String materialtype, String materialName, String materialSpecification, String remarks, String operator) {
        int i = managementMapper.addSysMaterial(pid, title, factory, materialtype, materialName, materialSpecification, remarks, operator);
        JSONObject object =new JSONObject();
        object.put("success",i);
        return object;
    }

    @Override
    public JSONObject updateSysMaterial(int pid, String title, String factory, String materialtype, String materialName, String materialSpecification, String remarks, String operator, int id) {
        int i = managementMapper.updateSysMaterial(pid, title, factory, materialtype, materialName, materialSpecification, remarks, operator, id);
        JSONObject object =new JSONObject();
        object.put("success",i);
        return object;
    }

    @Override
    public JSONObject deleteSysMaterial(int id) {
        int i = managementMapper.deleteSysMaterial(id);
        JSONObject object =new JSONObject();
        object.put("success",i);
        return object;
    }

    @Override
    public JSONObject queryByPid(int pid) {
        List<SysMaterialManagement> sysMaterialManagements = managementMapper.queryByPid(pid);
        String s = JSON.toJSONString(sysMaterialManagements);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object =new JSONObject();
        object.put("date",array);
        object.put("success",1);
        return object;
    }

    @Override
    public JSONObject querygoodsType(String factory) {
        List<SysMaterialManagement> sysMaterialManagements = managementMapper.querygoodsType(factory);
        String s = JSON.toJSONString(sysMaterialManagements);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object =new JSONObject();
        object.put("date",array);
        object.put("success",1);
        return object;
    }
}
