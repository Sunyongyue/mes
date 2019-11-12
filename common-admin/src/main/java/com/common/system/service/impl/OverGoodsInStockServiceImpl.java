package com.common.system.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.OverGoodsInStock;
import com.common.system.entity.OverGoodsStock;
import com.common.system.entity.ProductOrder;
import com.common.system.entity.PubProduct;
import com.common.system.mapper.OverGoodsInStockMapper;
import com.common.system.mapper.OverGoodsStockMapper;
import com.common.system.mapper.ProductOrderMapper;
import com.common.system.mapper.PubProductMapper;
import com.common.system.service.OverGoodsInStockService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OverGoodsInStockServiceImpl implements OverGoodsInStockService {
    @Autowired
    OverGoodsInStockMapper overGoodsInStockMapper;
    @Autowired
    PubProductMapper productMapper;
    @Autowired
    OverGoodsStockMapper goodsStockMapper;
    @Autowired
    ProductOrderMapper productOrderMapper;
    @Override
    public JSONObject queryOverGoodsInStock(Integer page, Integer limit) {
        List<OverGoodsInStock> overGoodsInStocks = overGoodsInStockMapper.queryOverGoodsInStock();
        int size = overGoodsInStocks.size();
        Page<Object> objects = PageHelper.startPage(page, limit);
        List<OverGoodsInStock> overGoodsInStock = overGoodsInStockMapper.queryOverGoodsInStock();
        String s = JSON.toJSONString(overGoodsInStock);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object =new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        return object;
    }

    @Override
    public JSONObject addOverGoodsInStock(String productNum, String operator, String testRemarks) {
        int stock=0;
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
       /* List<PubProduct> pubProducts = productMapper.searchPubProduct(productNum, "", "", "", "", "");
        String goodsName = pubProducts.get(0).getGoodsName();
        String specifications = pubProducts.get(0).getSpecifications();
        String intakeDirection = pubProducts.get(0).getIntakeDirection();
        String testDate = pubProducts.get(0).getTestDate();
        int nums = pubProducts.get(0).getNums();*/
        PubProduct pubProduct = productMapper.queryOneByproductNum(productNum);
        List<ProductOrder> productOrders = productOrderMapper.queryByProductNum(productNum);
        if (pubProduct!=null){
             goodsName = pubProduct.getGoodsName();
             specifications = pubProduct.getSpecifications();
             intakeDirection = pubProduct.getIntakeDirection();
             testDate = pubProduct.getTestDate();
             nums = pubProduct.getNums();
             pressure = pubProduct.getPressure();
             valveSupplier = pubProduct.getValveSupplier();
             valveName = pubProduct.getValveName();
             valveSpecifications = pubProduct.getValveSpecifications();
             controlMainboardSupplier = pubProduct.getControlMainboardSupplier();
             controlMainboardName = pubProduct.getControlMainboardName();
             controlMainboardSpecifications = pubProduct.getControlMainboardSpecifications();
             version = pubProduct.getVersion();
             telMainBoardSupplier = pubProduct.getTelMainBoardSupplier();
             telMainBoardName = pubProduct.getTelMainBoardName();
             telMainBoardSpecifications = pubProduct.getTelMainBoardSpecifications();
             telType = pubProduct.getTelType();
             fourSupplier = pubProduct.getFourSupplier();
             fourMainBoardName = pubProduct.getFourMainBoardName();
             fourSpecifications = pubProduct.getFourSpecifications();
             telProtocol = pubProduct.getTelProtocol();
        }else if (productOrders.size()==1){
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
        List<OverGoodsStock> overGoodsStocks = goodsStockMapper.queryExist(goodsName,specifications,intakeDirection,pressure,valveSupplier,valveName,valveSpecifications,controlMainboardSupplier,controlMainboardName,controlMainboardSpecifications,version,telMainBoardSupplier,telMainBoardName,telMainBoardSpecifications,telType,fourSupplier,fourMainBoardName,fourSpecifications,telProtocol);
        if (overGoodsStocks.isEmpty()){
            stock = goodsStockMapper.addOverGoodsStock(goodsName, specifications, intakeDirection, "成品库", nums, operator, testRemarks,pressure,valveSupplier,valveName,valveSpecifications,controlMainboardSupplier,controlMainboardName,controlMainboardSpecifications,version,telMainBoardSupplier,telMainBoardName,telMainBoardSpecifications,telType,fourSupplier,fourMainBoardName,fourSpecifications,telProtocol);
        }else {
            stock = goodsStockMapper.updateGoodsStock(goodsName, specifications, intakeDirection, nums, operator,pressure,valveSupplier,valveName,valveSpecifications,controlMainboardSupplier,controlMainboardName,controlMainboardSpecifications,version,telMainBoardSupplier,telMainBoardName,telMainBoardSpecifications,telType,fourSupplier,fourMainBoardName,fourSpecifications,telProtocol);
        }
        if (stock>0){
            int i = overGoodsInStockMapper.addOverGoodsInStock(productNum, goodsName, specifications, intakeDirection, testDate, nums, operator, testRemarks,pressure,valveSupplier,valveName,valveSpecifications,controlMainboardSupplier,controlMainboardName,controlMainboardSpecifications,version,telMainBoardSupplier,telMainBoardName,telMainBoardSpecifications,telType,fourSupplier,fourMainBoardName,fourSpecifications,telProtocol);
            JSONObject object = new JSONObject();
            object.put("success",i);
            return object;
        }else {
            JSONObject object = new JSONObject();
            object.put("success",0);
            return object;
        }

    }

    @Override
    public JSONObject deleteOverGoodsInStock(int[] array) {
        int i = overGoodsInStockMapper.deleteOverGoodsInStock(array);
        JSONObject object = new JSONObject();
        object.put("success",i);
        return object;
    }


    @Override
    public JSONObject searchOverGoodsInStock(String productNum, String goodsName, String specifications, String operator, String startDate, String endDate, Integer page, Integer limit) {
        List<OverGoodsInStock> overGoodsInStocks = overGoodsInStockMapper.searchOverGoodsInStock(productNum, goodsName, specifications, operator, startDate, endDate);
        int size = overGoodsInStocks.size();
        Page<Object> objects = PageHelper.startPage(page, limit);
        List<OverGoodsInStock> overGoodsInStock = overGoodsInStockMapper.searchOverGoodsInStock(productNum, goodsName, specifications, operator, startDate, endDate);

        String s = JSON.toJSONString(overGoodsInStock);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object =new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        object.put("civil",overGoodsInStock.get(0).getGoodsName());
        return object;
    }
}
