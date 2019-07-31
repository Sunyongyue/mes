package com.common.system.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.ThDict;
import com.common.system.mapper.ThDictMapper;
import com.common.system.service.ThDictService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ThDictServiceImpl implements ThDictService {
    @Autowired
    ThDictMapper thDictMapper;
    @Override
    public JSONArray queryAll() {
        List<ThDict> thDicts = thDictMapper.queryAll();
        String s = JSON.toJSONString(thDicts);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object =new JSONObject();
        object.put("code",0);
        object.put("count",1000);
        object.put("msg","ok");
        object.put("data",array);
        return array;
    }
    @Override
    public JSONObject addThDict(int pid, String title, String goodName, String goodsType,String goodsUnit, String goodsStock) {
        int i = thDictMapper.addThDict(pid, title, goodName, goodsType,goodsUnit, goodsStock);
        JSONObject object =new JSONObject();
        object.put("success",i);
        return object;
    }

    @Override
    public JSONObject updateThDict(int pid, String title, String goodsName, String goodsType, String goodsUnit, String goodsStock, int id) {
        int i = thDictMapper.updateThDict(pid, title, goodsName, goodsType, goodsUnit, goodsStock, id);
        JSONObject object =new JSONObject();
        object.put("success",i);
        return object;
    }

    @Override
    public JSONObject deleteThDict(int id, int pid) {
        int i = thDictMapper.deleteThDict(id, pid);
        JSONObject object =new JSONObject();
        object.put("success",i);
        return object;
    }
}
