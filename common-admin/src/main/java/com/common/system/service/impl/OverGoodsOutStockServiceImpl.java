package com.common.system.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.OverGoodsOutStock;
import com.common.system.entity.ProductOrder;
import com.common.system.entity.SaleOrder;
import com.common.system.mapper.OverGoodsOutStockMapper;
import com.common.system.mapper.OverGoodsStockMapper;
import com.common.system.mapper.ProductOrderMapper;
import com.common.system.mapper.SaleOrderMapper;
import com.common.system.service.OverGoodsOutStockService;
import com.github.pagehelper.PageHelper;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OverGoodsOutStockServiceImpl implements OverGoodsOutStockService {
    @Autowired
    OverGoodsOutStockMapper outStockMapper;
    @Autowired
    OverGoodsStockMapper goodsStockMapper;
    @Autowired
    SaleOrderMapper saleOrderMapper;
    @Autowired
    ProductOrderMapper productOrderMapper;
    @Override
    public JSONObject queryOverGoodsOutStock(Integer page, Integer limit) {
        List<OverGoodsOutStock> overGoodsOutStocks = outStockMapper.queryOverGoodsOutStock();
        int size = overGoodsOutStocks.size();
        PageHelper.startPage(page,limit);
        List<OverGoodsOutStock> overGoodsOutStock = outStockMapper.queryOverGoodsOutStock();
        String s = JSON.toJSONString(overGoodsOutStock);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object = new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        return object;
    }

    @Override
    public JSONObject addOverGoodsOutStock(String outStockNumbers, String productNum, String salenum, String outFactoryMan, String getOutFactoryTime, int outStockNums, String outStockType, String outStockremarks,String logisticsInformation) {
        String goodsName="";
        String specifications="";
        String intakeDirection="";
        String testDate="";
        int nums=1;
        String pressure = "";
        String valveSupplier =  "";
        String valveName = "";
        String valveSpecifications =  "";
        String controlMainboardSupplier =  "";
        String controlMainboardName =  "";
        String controlMainboardSpecifications =  "";
        String version =  "";
        String telMainBoardSupplier = "";
        String telMainBoardName =  "";
        String telMainBoardSpecifications =  "";
        String telType =  "";
        String fourSupplier =  "";
        String fourMainBoardName = "";
        String fourSpecifications =  "";
        String telProtocol =  "";
        List<SaleOrder> saleOrders = saleOrderMapper.searchSaleOrder(salenum, "", "", "", "", "", "", "");
/*        List<ProductOrder> productOrders = productOrderMapper.searchProductOrder(productNum, "", "", "", "", "","");*/
        List<ProductOrder> productOrders = productOrderMapper.queryByProductNum(productNum);
        if (productOrders.size()==1){
            goodsName = productOrders.get(0).getGoodsName();
            specifications = productOrders.get(0).getSpecifications();
            intakeDirection = productOrders.get(0).getIntakeDirection();
            nums = productOrders.get(0).getNums();
            pressure = productOrders.get(0).getPressure();
            valveSupplier = productOrders.get(0).getValveSupplier();
            valveName = productOrders.get(0).getValveName();
            valveSpecifications = productOrders.get(0).getValveSpecifications();
            controlMainboardSupplier = productOrders.get(0).getControlMainboardSupplier();
            controlMainboardName = productOrders.get(0).getControlMainboardName();
            controlMainboardSpecifications = productOrders.get(0).getControlMainboardSpecifications();
            version = productOrders.get(0).getVersion();
            telMainBoardSupplier = productOrders.get(0).getTelMainBoardSupplier();
            telMainBoardName = productOrders.get(0).getTelMainBoardName();
            telMainBoardSpecifications = productOrders.get(0).getTelMainBoardSpecifications();
            telType = productOrders.get(0).getTelType();
            fourSupplier = productOrders.get(0).getFourSupplier();
            fourMainBoardName = productOrders.get(0).getFourMainBoardName();
            fourSpecifications = productOrders.get(0).getFourSpecifications();
            telProtocol = productOrders.get(0).getTelProtocol();

        }
        int i1 = goodsStockMapper.deleteGoodsStock(goodsName, specifications, intakeDirection, outStockNums,outFactoryMan,pressure,valveSupplier,valveName,valveSpecifications,controlMainboardSupplier,controlMainboardName,controlMainboardSpecifications,version,telMainBoardSupplier,telMainBoardName,telMainBoardSpecifications,telType,fourSupplier,fourMainBoardName,fourSpecifications,telProtocol);
        if (i1>0){
            int i = outStockMapper.addOverGoodsOutStock(outStockNumbers,productNum, salenum, outFactoryMan, getOutFactoryTime, outStockNums, outStockType, outStockremarks,logisticsInformation);
            JSONObject object = new JSONObject();
            object.put("success",i);
            return object;}else {
            JSONObject object = new JSONObject();
            object.put("success",0);
            return object;
        }

    }

    @Override
    public JSONObject searchOverGoodsOutStock(String outStockNumbers,String salenum, String productNameOrder, String productSpecificationsOrder, String outFactoryMan, String startDate, String endDate,Integer page,Integer limit) {
        List<OverGoodsOutStock> overGoodsOutStocks = outStockMapper.searchOverGoodsOutStock(outStockNumbers,salenum, productNameOrder, productSpecificationsOrder, outFactoryMan, startDate, endDate);
        int size = overGoodsOutStocks.size();
        PageHelper.startPage(page,limit);
        List<OverGoodsOutStock> overGoodsOutStock = outStockMapper.searchOverGoodsOutStock(outStockNumbers,salenum, productNameOrder, productSpecificationsOrder, outFactoryMan, startDate, endDate);
        String s = JSON.toJSONString(overGoodsOutStock);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object = new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        return object;
    }

    @Override
    public int outStockPeople(int id, String outStockTestPeople) {
        int i = outStockMapper.outStockPeople(id, outStockTestPeople);
        return i;
    }

    @Override
    public int sendGoods(int id, String sendGoodsPeople) {
        int i = outStockMapper.sendGoods(id, sendGoodsPeople);
        return i;
    }

    @Override
    public int deleteOverGoodsOutStock(int[] array) {
        int i = outStockMapper.deleteOverGoodsOutStock(array);
        return i;
    }


}
