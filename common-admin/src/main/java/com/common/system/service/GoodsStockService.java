package com.common.system.service;

import com.alibaba.fastjson.JSONObject;

import com.common.system.entity.GoodsStock;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface GoodsStockService {
    JSONObject queryGoodsStock(Integer page, Integer limit);
    JSONObject searchGoodsStock(@Param("local") String local , @Param("goodsType") String goodsType, @Param("goodsName") String goodsName, @Param("specifications") String specifications, @Param("startDate") String startDate, @Param("supplierName") String supplierName, @Param("endDate") String endDate,Integer page, Integer limit);
    int addGoodsStock(@Param("local") String local,@Param("supplierName") String supplierName,@Param("goodsType") String goodsType,@Param("goodsName") String goodsName,@Param("specifications") String specifications,@Param("goodsProduceDate") String goodsProduceDate,@Param("goodsStock") String goodsStock,@Param("nums") int nums,@Param("remarks") String remarks,@Param("operator") String operator);
    int deleteGoodsStock(@Param("local") String local,@Param("supplierName") String supplierName,@Param("goodsType") String goodsType,@Param("goodsName") String goodsName,@Param("specifications") String specifications,@Param("nums") int nums,@Param("operator") String operator);
    int updateGoodsStock(@Param("local") String local,@Param("supplierName") String supplierName,@Param("goodsType") String goodsType,@Param("goodsName") String goodsName,@Param("specifications") String specifications,@Param("nums") int nums,@Param("operator") String operator);
    int deleteOne();
    List<GoodsStock> queryExist(@Param("local") String local, @Param("supplierName") String supplierName, @Param("goodsType") String goodsType, @Param("goodsName") String goodsName, @Param("specifications") String specifications);
    JSONObject locals();
    JSONObject supplierNames();
    JSONObject goodsTypes();
    JSONObject goodsNames();
    JSONObject specificationss();
}
