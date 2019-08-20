package com.common.system.service.impl;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.SysPurchaser;
import com.common.system.entity.SysSupplier;
import com.common.system.mapper.SysSupplierMapper;
import com.common.system.service.SysSupplierService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class SysSupplierServiceImpl implements SysSupplierService {
    @Autowired
    SysSupplierMapper supplierMapper;
    @Override
    public JSONObject queryAll(Integer page, Integer limit) {
        List<SysSupplier> sysSuppliers = supplierMapper.queryAll();
        int size = sysSuppliers.size();
        Page<Object> objects = PageHelper.startPage(page, limit);
        List<SysSupplier> sysPurchaser =supplierMapper.queryAll();
        String s = JSON.toJSONString(sysPurchaser);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object =new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        return object;
    }

    @Override
    public JSONObject addSupplier(String local, String supplierNums, String supplierName, String contacts, String tel, String email, String localMore, String remarks, String operator) {
        int i = supplierMapper.addSupplier(local, supplierNums, supplierName, contacts, tel, email, localMore, remarks, operator);
        JSONObject object = new JSONObject();
        object.put("success",i);
        return object;
    }

    @Override
    public JSONObject updateSupplier(int id, String local, String supplierNums, String supplierName, String contacts, String tel, String email, String localMore, String remarks, String operator,String operatorTime) {
        int i = supplierMapper.updateSupplier(id, local, supplierNums, supplierName, contacts, tel, email, localMore, remarks, operator,operatorTime);
        JSONObject object = new JSONObject();
        object.put("success",i);
        return object;
    }

    @Override
    public JSONObject deleteSupplier(String[] deList) {
        int a =0;
        for (int x=1;x<deList.length-1;x++) {
            int i = Integer.parseInt(deList[x]);
            int i1 = supplierMapper.deleteSupplier(i);
            a=a+i1;
        }
        JSONObject object = new JSONObject();
        if (a==(deList.length-2)){
            object.put("success",1);
        }else {
            object.put("success",-1);
        }
        return object;
    }

    @Override
    public JSONObject searchSupplier(String supplierNums, String local, String supplierName, int page, int limit) {
        List<SysPurchaser> sysPurchasers = supplierMapper.searchSupplier(supplierNums, local, supplierName);
        int size = sysPurchasers.size();
        Page<Object> objects = PageHelper.startPage(page, limit);
        List<SysPurchaser> sysPurchasers2=supplierMapper.searchSupplier(supplierNums, local, supplierName);
        String s = JSON.toJSONString(sysPurchasers2);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object =new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        return object;
    }

    @Override
    public JSONObject local() {
        List<String> local = supplierMapper.local();
        String s = JSON.toJSONString(local);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object =new JSONObject();
        object.put("date",array);
        object.put("success",1);
        return object;
    }

    @Override
    public JSONObject supplierNameSearch(String local) {
        List<String> supplierName = supplierMapper.supplierNameSearch(local);
        String s = JSON.toJSONString(supplierName);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object =new JSONObject();
        object.put("date",array);
        object.put("success",1);
        return object;
    }

    @Override
    public JSONObject supplierNameOrder() {
        List<String> strings = supplierMapper.supplierNameOrder();
        String s = JSON.toJSONString(strings);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object =new JSONObject();
        object.put("date",array);
        object.put("success",1);
        return object;
    }
}
