package com.common.system.service;

import com.alibaba.fastjson.JSONObject;

import org.apache.ibatis.annotations.Param;



public interface GoodSRegStockService {
    JSONObject queryGoodsRegStock(Integer page,Integer limit);
    JSONObject addGoodsRegStock(@Param("goodsType") String goodsType, @Param("goodsName") String goodsName, @Param("specifications") String specifications, @Param("status") String status, @Param("reason") String reason, @Param("department")String department, int nums, @Param("supplierName") String supplierName, @Param("remarks") String remarks, @Param("operator") String operator, @Param("local") String local);
    JSONObject updateGoodsRegStock(@Param("goodsType") String goodsType,@Param("goodsName") String goodsName,@Param("specifications") String specifications,@Param("status") String status,@Param("reason") String reason, @Param("department")String department,int nums,@Param("supplierName") String supplierName,@Param("remarks") String remarks,@Param("operator") String operator,@Param("local") String local,@Param("id") int id);
    JSONObject deleteGoodsRegStock(String[] deList);
    JSONObject searchGoodsRegStock(Integer page,Integer limit,@Param("local") String local , @Param("goodsType") String goodsType, @Param("goodsName") String goodsName, @Param("specifications") String specifications, @Param("startDate") String startDate, @Param("supplierName") String supplierName, @Param("endDate") String endDate);
}
