package com.common.system.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.SysPurchaser;
import com.common.system.mapper.SysPurchaserMapper;
import com.common.system.service.SysPurchaserService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class SysPurchaserServiceImpl implements SysPurchaserService {
    @Autowired
    SysPurchaserMapper purchaserMapper;
    @Override
    public JSONObject queryAll(Integer page, Integer limit) {
        List<SysPurchaser> sysPurchasers = purchaserMapper.queryAll();
        int size = sysPurchasers.size();
        Page<Object> objects = PageHelper.startPage(page, limit);
        List<SysPurchaser> sysPurchaser =purchaserMapper.queryAll();
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
    public JSONObject addPurchaser(String local, String purchaserNums, String purchaserName, String gasGroup, String contacts, String tel, String ipAddress, String ipPort, String email, String localMore, String remarks, String operator) {
        int i = purchaserMapper.addPurchaser(local, purchaserNums, purchaserName, gasGroup, contacts, tel, ipAddress, ipPort, email, localMore, remarks, operator);
        JSONObject object = new JSONObject();
        object.put("success",i);
        return object;
    }

    @Override
    public JSONObject updatePurchaser(int id, String local, String purchaserNums, String purchaserName, String gasGroup, String contacts, String tel, String ipAddress, String ipPort, String email, String localMore, String remarks, String operator, String operatorTime) {
        int i = purchaserMapper.updatePurchaser(id, local, purchaserNums, purchaserName, gasGroup, contacts, tel, ipAddress, ipPort, email, localMore, remarks, operator,operatorTime);
        JSONObject object = new JSONObject();
        object.put("success",i);
        return object;
    }

    @Override
    public JSONObject deletePurchaser(String[] deList) {
        int a =0;
        for (int x=1;x<deList.length-1;x++) {
            int i = Integer.parseInt(deList[x]);
            int i1 = purchaserMapper.deletePurchaser(i);
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
    public JSONObject searchPurchaser(String purchaserNums, String local, String purchaserName,Integer page, Integer limit) {
        List<SysPurchaser> sysPurchasers = purchaserMapper.searchPurchaser(purchaserNums, local, purchaserName);
        Page<Object> objects = PageHelper.startPage(page, limit);
        List<SysPurchaser> sysPurchasers1 = purchaserMapper.searchPurchaser(purchaserNums, local, purchaserName);
        String s = JSON.toJSONString(sysPurchasers1);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object = new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",sysPurchasers.size());
        object.put("data",array);
        return object;
    }

    @Override
    public JSONObject local() {
        List<String> local = purchaserMapper.local();
        String s = JSON.toJSONString(local);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object =new JSONObject();
        object.put("date",array);
        object.put("success",1);
        return object;
    }

    @Override
    public JSONObject purchaserName() {
        List<String> purchaserName = purchaserMapper.purchaserName();
        String s = JSON.toJSONString(purchaserName);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object =new JSONObject();
        object.put("date",array);
        object.put("success",1);
        return object;
    }

    @Override
    public List<String> purchaserNameList() {
        List<String> purchaserName = purchaserMapper.purchaserName();
        return purchaserName;
    }

    @Override
    public SysPurchaser queryBypurchaserName(String purchaserName) {
        SysPurchaser sysPurchaser = purchaserMapper.queryBypurchaserName(purchaserName);
        return sysPurchaser;
    }

    @Override
    public int selectMax() {
        int i = purchaserMapper.selectMax();
        return i;
    }
}
