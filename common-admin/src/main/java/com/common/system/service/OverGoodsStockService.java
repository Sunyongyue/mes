package com.common.system.service;

import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.OverGoodsStock;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OverGoodsStockService {
    JSONObject queryOverGoodsStock(Integer page,Integer limit);
    int  addOverGoodsStock(@Param("goodsName") String goodsName, @Param("specifications") String specifications, @Param("intakeDirection") String intakeDirection, @Param("stockWarehouse") String stockWarehouse, @Param("nums") int nums, @Param("operator") String operator, @Param("remarks")  String remarks);
    JSONObject serchOverGoodsStock(@Param("goodsName") String goodsName,@Param("specifications") String specifications,@Param("intakeDirection") String intakeDirection,@Param("operator") String operator, @Param("startDate") String startDate ,@Param("endDate") String endDate,Integer page,Integer limit);
    List<OverGoodsStock> queryExist(@Param("goodsName") String goodsName,@Param("specifications") String specifications,@Param("intakeDirection") String intakeDirection);
    int deleteGoodsStock(@Param("goodsName") String goodsName,@Param("specifications") String specifications,@Param("intakeDirection") String intakeDirection,@Param("nums") int nums,@Param("operator") String operator);
    int updateGoodsStock(@Param("goodsName") String goodsName,@Param("specifications") String specifications,@Param("intakeDirection") String intakeDirection,@Param("nums") int nums,@Param("operator") String operator);
}
