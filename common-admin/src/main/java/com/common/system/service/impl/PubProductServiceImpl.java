package com.common.system.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.DistributNumber;
import com.common.system.entity.GoodsInStock;
import com.common.system.entity.PubProduct;
import com.common.system.mapper.DistributNumberMapper;
import com.common.system.mapper.GoodsInStockMapper;
import com.common.system.mapper.PubProductMapper;
import com.common.system.service.PubProductService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class PubProductServiceImpl implements PubProductService {
    @Autowired
    PubProductMapper pubProductMapper;
    @Autowired
    DistributNumberMapper numberMapper;
    @Autowired
    GoodsInStockMapper inStockMapper;
    @Override
    public JSONObject queryPubProduct(Integer page, Integer limit) {
        List<PubProduct> pubProducts = pubProductMapper.queryPubProduct();
        int size = pubProducts.size();
        Page<Object> objects = PageHelper.startPage(page, limit);
        List<PubProduct> pubProduct = pubProductMapper.queryPubProduct();
        String s = JSON.toJSONString(pubProduct);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object = new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        return object;
    }

    @Override
    public PubProduct queryOneByids(int ids) {
        PubProduct pubProduct = pubProductMapper.queryOneByids(ids);
        return pubProduct;
    }

    @Override
    public PubProduct queryOneByproductNum(String productNum) {
        PubProduct pubProduct = pubProductMapper.queryOneByproductNum(productNum);
        return pubProduct;
    }

    @Override
    public JSONObject addPubProduct(String productNum, String valveNUms, String controlMainBoardNums, String assembler, String tester, String testRemarks) {
        List<GoodsInStock> goodsInStocks = inStockMapper.queryBypipelineNumber(valveNUms);
        String valveProduceDate="";
        if (!(goodsInStocks.isEmpty())){
            valveProduceDate = goodsInStocks.get(0).getGoodsProduceDate();
        }
        List<DistributNumber> distributNumbers = numberMapper.queryByNumber(controlMainBoardNums);
        String telMainNum="";
        String fourMainNum="";
        if (!(distributNumbers.isEmpty())){
            telMainNum = distributNumbers.get(0).getTelMainNum();
            fourMainNum = distributNumbers.get(0).getFourMainNum();
        }
        List<GoodsInStock> fourInStocks = inStockMapper.queryBypipelineNumber(fourMainNum);
        String fourProduceDate="";
        if (!(fourInStocks.isEmpty())){
            fourProduceDate = fourInStocks.get(0).getGoodsProduceDate();
        }
        List<GoodsInStock> telInStocks = inStockMapper.queryBypipelineNumber(telMainNum);
        String telProduceDate = "";
        String cardNums = "";
        String imsi = "";
        String imei = "";
        String iccid = "";
        String activeTime="";
        String shutdownTime="";
        if (!(telInStocks.isEmpty())){
            telProduceDate = telInStocks.get(0).getGoodsProduceDate();
            cardNums = telInStocks.get(0).getCardNums();
            imsi = telInStocks.get(0).getIMSI();
            imei = telInStocks.get(0).getIMEI();
            iccid = telInStocks.get(0).getICCID();
            activeTime = telInStocks.get(0).getActiveTime();
            shutdownTime = telInStocks.get(0).getShutdownTime();
        }
        List<GoodsInStock> controlInStocks = inStockMapper.queryBypipelineNumber(controlMainBoardNums);
        String controlProduceDate ="";
        if (!(controlInStocks.isEmpty())){
            controlProduceDate = controlInStocks.get(0).getGoodsProduceDate();
        }
        int i = pubProductMapper.addPubProduct(productNum, valveNUms, valveProduceDate, controlMainBoardNums, controlProduceDate, telMainNum, telProduceDate, cardNums, imsi, imei, iccid, fourMainNum, fourProduceDate, assembler, tester, testRemarks,activeTime,shutdownTime);
        JSONObject object = new JSONObject();
        object.put("success",i);
        return object;
    }


    @Override
    public JSONObject updatePubProduct(int ids, String tester) {
        int i = pubProductMapper.updatePubProduct(ids, tester);
        JSONObject object = new JSONObject();
        object.put("success",i);
        return object;
    }

    @Override
    public JSONObject dtletePubProduct(int[] array) {
        int i = pubProductMapper.dtletePubProduct(array);
        JSONObject object = new JSONObject();
        object.put("success",i);
        return object;
    }

    @Override
    public JSONObject searchPubProduct(String productNum, String goodsName, String goodsSpecifications, String operator, String startDate, String endDate, Integer page, Integer limit) {
        List<PubProduct> pubProducts = pubProductMapper.searchPubProduct(productNum, goodsName, goodsSpecifications, operator, startDate, endDate);
        int size = pubProducts.size();
        Page<Object> objects = PageHelper.startPage(page, limit);
        List<PubProduct> pubProduct = pubProductMapper.searchPubProduct(productNum, goodsName, goodsSpecifications, operator, startDate, endDate);
        String s = JSON.toJSONString(pubProduct);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object = new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",array);
        return object;
    }

    @Override
    public int productNumExist(String productNum) {
        int i = pubProductMapper.productNumExist(productNum);
        return i;
    }

    @Override
    public int valveNUmsExist(String valveNUms) {
        int i = pubProductMapper.valveNUmsExist(valveNUms);
        return i;
    }

    @Override
    public int controlMainBoardNumsExist(String controlMainBoardNums) {
        int i = pubProductMapper.controlMainBoardNumsExist(controlMainBoardNums);
        return i;
    }
}
