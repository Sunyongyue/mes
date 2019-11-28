package com.common.system.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.CivilProduct;
import com.common.system.mapper.CivilProductMapper;
import com.common.system.service.CivilProductService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CivilProductServiceImpl implements CivilProductService {
    @Autowired
    CivilProductMapper civilProductMapper;


    @Override
    public JSONObject queryAllCivilProduct(Integer page, Integer limit) {
        List<CivilProduct> civilProducts = civilProductMapper.queryAllCivilProduct();
        int size = civilProducts.size();
        Page<Object> objects = PageHelper.startPage(page, limit);
        List<CivilProduct> civilProducts1 = civilProductMapper.queryAllCivilProduct();
        String s = JSON.toJSONString(civilProducts1);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object =new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        return object;
    }

    @Override
    public JSONObject serachCivilProduct(String telNum, String productNumId, String goodsName, String specifications, String workingorderId, String startDate, String endDate, Integer page, Integer limit) {
        List<CivilProduct> civilProducts = civilProductMapper.serachCivilProduct(telNum, productNumId, goodsName, specifications, workingorderId, startDate, endDate);
        int size = civilProducts.size();
        Page<Object> objects = PageHelper.startPage(page, limit);
        List<CivilProduct> civilProducts1 = civilProductMapper.serachCivilProduct(telNum, productNumId, goodsName, specifications, workingorderId, startDate, endDate);
        String s = JSON.toJSONString(civilProducts1);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object =new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        return object;
    }

    @Override
    public int addCivilProduct(List<CivilProduct> list) {
        int i = civilProductMapper.addCivilProduct(list);
        return i;
    }

    @Override
    public int deleteCivilProduct(int[] array) {
        int i = civilProductMapper.deleteCivilProduct(array);
        return i;
    }

    @Override
    public int queryByTel(String telNum) {
        int i = civilProductMapper.queryByTel(telNum);
        return i;
    }
}
