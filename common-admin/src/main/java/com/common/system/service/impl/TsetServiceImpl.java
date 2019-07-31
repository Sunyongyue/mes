package com.common.system.service.impl;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.Test;
import com.common.system.mapper.TestMapper;
import com.common.system.service.TsetService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class TsetServiceImpl implements TsetService {
    @Autowired
    TestMapper userma;
    @Override
    public JSONObject queryall(Integer page, Integer limit) {
        List<Test> queryall = userma.queryall();
        int size = queryall.size();
        Page<Object> objects = PageHelper.startPage(page, limit);
        List<Test> queryall1 = userma.queryall();
        String s = JSON.toJSONString(queryall1);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object =new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        return object;
    }

    @Override
    public JSONObject queryone(int id) {
        List<Test> queryone = userma.queryone(id);
        String s = JSON.toJSONString(queryone);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object =new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",1);
        object.put("data",array);
        return object;
    }
}
