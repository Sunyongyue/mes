package com.common.system.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.OverGoodsStock;
import com.common.system.mapper.OverGoodsStockMapper;
import com.common.system.service.OverGoodsStockService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class OverGoodsStockServiceImpl implements OverGoodsStockService {
    @Autowired
    OverGoodsStockMapper mapper;
    @Override
    public JSONObject queryOverGoodsStock(Integer page,Integer limit) {
        List<OverGoodsStock> overGoodsStocks = mapper.queryOverGoodsStock();
        int size = overGoodsStocks.size();
        Page<Object> objects = PageHelper.startPage(page, limit);
        List<OverGoodsStock> overGoodsStock = mapper.queryOverGoodsStock();
        String s = JSON.toJSONString(overGoodsStock);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object = new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        return object;
    }

    @Override
    public int addOverGoodsStock(String goodsName, String specifications, String intakeDirection, String stockWarehouse, int nums, String operator, String remarks, String pressure, String valveSupplier, String valveName, String valveSpecifications, String controlMainboardSupplier, String controlMainboardName, String controlMainboardSpecifications, String version, String telMainBoardSupplier, String telMainBoardName, String telMainBoardSpecifications, String telType, String fourSupplier, String fourMainBoardName, String fourSpecifications, String telProtocol) {
        int i = mapper.addOverGoodsStock(goodsName, specifications, intakeDirection, stockWarehouse, nums, operator, remarks, pressure, valveSupplier, valveName, valveSpecifications, controlMainboardSupplier, controlMainboardName, controlMainboardSpecifications, version, telMainBoardSupplier, telMainBoardName, telMainBoardSpecifications, telType, fourSupplier, fourMainBoardName, fourSpecifications, telProtocol);
        return i;
    }


    @Override
    public JSONObject serchOverGoodsStock(String goodsName, String specifications, String intakeDirection, String operator, String startDate, String endDate,Integer page,Integer limit) {
        List<OverGoodsStock> overGoodsStocks = mapper.serchOverGoodsStock(goodsName, specifications, intakeDirection, operator, startDate, endDate);
        int size = overGoodsStocks.size();
        Page<Object> objects = PageHelper.startPage(page, limit);
        List<OverGoodsStock> overGoodsStock = mapper.serchOverGoodsStock(goodsName, specifications, intakeDirection, operator, startDate, endDate);
        String s = JSON.toJSONString(overGoodsStock);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object = new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        return object;
    }

    @Override
    public List<OverGoodsStock> queryExist(String goodsName, String specifications, String intakeDirection, String pressure, String valveSupplier, String valveName, String valveSpecifications, String controlMainboardSupplier, String controlMainboardName, String controlMainboardSpecifications, String version, String telMainBoardSupplier, String telMainBoardName, String telMainBoardSpecifications, String telType, String fourSupplier, String fourMainBoardName, String fourSpecifications, String telProtocol) {
        List<OverGoodsStock> overGoodsStocks = mapper.queryExist(goodsName, specifications, intakeDirection, pressure, valveSupplier, valveName, valveSpecifications, controlMainboardSupplier, controlMainboardName, controlMainboardSpecifications, version, telMainBoardSupplier, telMainBoardName, telMainBoardSpecifications, telType, fourSupplier, fourMainBoardName, fourSpecifications, telProtocol);
        return overGoodsStocks;
    }

    @Override
    public int deleteGoodsStock(String goodsName, String specifications, String intakeDirection, int nums, String operator, String pressure, String valveSupplier, String valveName, String valveSpecifications, String controlMainboardSupplier, String controlMainboardName, String controlMainboardSpecifications, String version, String telMainBoardSupplier, String telMainBoardName, String telMainBoardSpecifications, String telType, String fourSupplier, String fourMainBoardName, String fourSpecifications, String telProtocol) {
        int i = mapper.deleteGoodsStock(goodsName, specifications, intakeDirection, nums, operator, pressure, valveSupplier, valveName, valveSpecifications, controlMainboardSupplier, controlMainboardName, controlMainboardSpecifications, version, telMainBoardSupplier, telMainBoardName, telMainBoardSpecifications, telType, fourSupplier, fourMainBoardName, fourSpecifications, telProtocol);
        return i;
    }

    @Override
    public int updateGoodsStock(String goodsName, String specifications, String intakeDirection, int nums, String operator, String pressure, String valveSupplier, String valveName, String valveSpecifications, String controlMainboardSupplier, String controlMainboardName, String controlMainboardSpecifications, String version, String telMainBoardSupplier, String telMainBoardName, String telMainBoardSpecifications, String telType, String fourSupplier, String fourMainBoardName, String fourSpecifications, String telProtocol) {
        int i = mapper.updateGoodsStock(goodsName, specifications, intakeDirection, nums, operator, pressure, valveSupplier, valveName, valveSpecifications, controlMainboardSupplier, controlMainboardName, controlMainboardSpecifications, version, telMainBoardSupplier, telMainBoardName, telMainBoardSpecifications, telType, fourSupplier, fourMainBoardName, fourSpecifications, telProtocol);
        return i;
    }


}
