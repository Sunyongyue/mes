package com.common.system.service;

import com.alibaba.fastjson.JSONObject;

import org.apache.ibatis.annotations.Param;

public interface OverGoodsInStockService {
    JSONObject queryOverGoodsInStock(Integer page,Integer limit);
    JSONObject addOverGoodsInStock(@Param("productNum") String productNum, @Param("operator") String operator, @Param("testRemarks") String testRemarks);
    JSONObject deleteOverGoodsInStock(@Param("array") int[] array);
    JSONObject searchOverGoodsInStock(@Param("productNum") String productNum,@Param("goodsName") String goodsName,@Param("specifications") String specifications,@Param("operator") String operator,@Param("startDate") String startDate,@Param("endDate") String endDate,Integer page,Integer limit);
}
