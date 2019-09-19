package com.common.system.service;

import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.GoodsInStock;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface GoodsInStockService {
    JSONObject queryGoodsInStock(Integer page, Integer limit);
    JSONObject addGoodsInStock(@Param("local") String local , @Param("goodsType") String goodsType, @Param("goodsName") String goodsName, @Param("specifications") String specifications, @Param("goodsProduceDate") String goodsProduceDate, @Param("status") String status, @Param("goodsNums") int goodsNums, @Param("supplierName") String supplierName, @Param("pipelineNumber") String pipelineNumber, @Param("operators") String operators, @Param("cardNums") String cardNums, @Param("IMSI") String IMSI, @Param("IMEI") String IMEI, @Param("ICCID") String ICCID, @Param("remarks") String remarks, @Param("operator") String operator,@Param("activeTime") String activeTime,@Param("shutdownTime") String shutdownTime);
    JSONObject deleteGoodsInStock(String[] deList);
    JSONObject updateGoodsInStock(@Param("id") int id, @Param("local") String local ,@Param("goodsType") String goodsType,@Param("goodsName") String goodsName,@Param("specifications") String specifications,@Param("goodsProduceDate") String goodsProduceDate,@Param("status") String status,@Param("goodsNums") int goodsNums,@Param("supplierName") String supplierName,@Param("pipelineNumber") String pipelineNumber,@Param("operators") String operators,@Param("cardNums") String cardNums,@Param("IMSI") String IMSI,@Param("IMEI") String IMEI,@Param("ICCID") String ICCID,@Param("remarks") String remarks,@Param("operator") String operator,@Param("activeTime") String activeTime,@Param("shutdownTime") String shutdownTime);
    JSONObject searchGoodsInStock( String local , String goodsType,  String goodsName,  String specifications,  String startDate,  String supplierName,  String endDate,Integer page, Integer limit);
    List<GoodsInStock> queryBypipelineNumber(@Param("pipelineNumber") String pipelineNumber);
}
