package com.common.system.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.DistributNumber;
import com.common.system.entity.MainTel;
import com.common.system.mapper.MainTelMapper;
import com.common.system.service.MainTelSerice;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class MainTelServiceImpl implements MainTelSerice {
    @Autowired
    MainTelMapper mainTelMapper;
    @Override
    public JSONObject queryAllMainTel(Integer page, Integer limit) {
        List<MainTel> mainTels = mainTelMapper.queryAllMainTel();
        int size = mainTels.size();
        Page<Object> objects = PageHelper.startPage(page, limit);
        List<MainTel> mainTels1 = mainTelMapper.queryAllMainTel();
        String s = JSON.toJSONString(mainTels1);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object =new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        return object;
    }

    @Override
    public JSONObject searchMainTe(String main_DeviceAddr, String main_Iphone, String main_ImeiNum, String startDate, String endDate, Integer page, Integer limit) {
        List<MainTel> mainTels = mainTelMapper.searchMainTe(main_DeviceAddr, main_Iphone, main_ImeiNum, startDate, endDate);
        int size = mainTels.size();
        List<MainTel> mainTels1 = mainTelMapper.searchMainTe(main_DeviceAddr, main_Iphone, main_ImeiNum, startDate, endDate);
        String s = JSON.toJSONString(mainTels1);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object =new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        return object;
    }

    @Override
    public JSONObject addMainTel(List<MainTel> list) {
        int i = mainTelMapper.addMainTel(list);
        JSONObject object = new JSONObject();
        object.put("success",i);
        return object;
    }

    @Override
    public JSONObject deleteMainTel(int[] array) {
        int i = mainTelMapper.deleteMainTel(array);
        JSONObject object = new JSONObject();
        object.put("success",i);
        return object;

    }

    @Override
    public JSONObject updateMainTel(String main_DeviceAddr, String main_Iphone, String main_StartDate, String main_EndDate, String main_CreateTime, String main_Guid, String main_PrintNum, String main_ImeiNum, int id) {
        int i = mainTelMapper.updateMainTel(main_DeviceAddr, main_Iphone, main_StartDate, main_EndDate, main_CreateTime, main_Guid, main_PrintNum, main_ImeiNum, id);
        JSONObject object = new JSONObject();
        object.put("success",i);
        return object;
    }
}
