package com.common.system.service;

import com.alibaba.fastjson.JSONObject;
import org.apache.ibatis.annotations.Param;

public interface GoodsOutStockService {
    JSONObject queryGoodsOutStock(Integer page, Integer limit);
    JSONObject addGoodsOutStock(@Param("goodsType") String goodsType, @Param("goodsName") String goodsName, @Param("specifications") String specifications, @Param("status") String status, @Param("outStockType") String outStockType, @Param("nums") int nums, @Param("pipelineNumber") String pipelineNumber, @Param("supplierName") String supplierName, @Param("remarks") String remarks, @Param("operator") String operator, @Param("local") String local);
    JSONObject searchGoodsOutStock(@Param("local") String local ,@Param("goodsType") String goodsType,@Param("goodsName") String goodsName,@Param("specifications") String specifications,@Param("startDate") String startDate,@Param("supplierName") String supplierName,@Param("endDate") String endDate,Integer page, Integer limit);
}
