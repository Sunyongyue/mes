package com.common.system.mapper;

import com.common.system.entity.GoodsInStock;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
@Mapper
public interface GoodsInStockMapper {
    List<GoodsInStock> queryGoodsInStock();
    int addGoodsInStock(@Param("local") String local ,@Param("goodsType") String goodsType,@Param("goodsName") String goodsName,@Param("specifications") String specifications,@Param("goodsProduceDate") String goodsProduceDate,@Param("status") String status,@Param("goodsNums") int goodsNums,@Param("supplierName") String supplierName,@Param("pipelineNumber") String pipelineNumber,@Param("operators") String operators,@Param("cardNums") String cardNums,@Param("IMSI") String IMSI,@Param("IMEI") String IMEI,@Param("ICCID") String ICCID,@Param("remarks") String remarks,@Param("operator") String operator,@Param("activeTime") String activeTime,@Param("shutdownTime") String shutdownTime);
    int deleteGoodsInStock(@Param("id") int id);
    int updateGoodsInStock(@Param("id") int id, @Param("local") String local ,@Param("goodsType") String goodsType,@Param("goodsName") String goodsName,@Param("specifications") String specifications,@Param("goodsProduceDate") String goodsProduceDate,@Param("status") String status,@Param("goodsNums") int goodsNums,@Param("supplierName") String supplierName,@Param("pipelineNumber") String pipelineNumber,@Param("operators") String operators,@Param("cardNums") String cardNums,@Param("IMSI") String IMSI,@Param("IMEI") String IMEI,@Param("ICCID") String ICCID,@Param("remarks") String remarks,@Param("operator") String operator,@Param("activeTime") String activeTime,@Param("shutdownTime") String shutdownTime);
    List<GoodsInStock> searchGoodsInStock(@Param("local") String local ,@Param("goodsType") String goodsType,@Param("goodsName") String goodsName,@Param("specifications") String specifications,@Param("startDate") String startDate,@Param("supplierName") String supplierName,@Param("endDate") String endDate);
    List<GoodsInStock> queryBypipelineNumber(@Param("pipelineNumber") String pipelineNumber);
}
