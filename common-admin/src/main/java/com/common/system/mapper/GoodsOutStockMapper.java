package com.common.system.mapper;

import com.common.system.entity.GoodsOutStock;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface GoodsOutStockMapper {
    List<GoodsOutStock> queryGoodsOutStock();
    int addGoodsOutStock(@Param("goodsType") String goodsType,@Param("goodsName") String goodsName,@Param("specifications") String specifications,@Param("status") String status,@Param("outStockType") String outStockType,@Param("nums") int nums,@Param("pipelineNumber") String pipelineNumber,@Param("supplierName") String supplierName,@Param("remarks") String remarks,@Param("operator") String operator,@Param("local") String local);
    List<GoodsOutStock>searchGoodsOutStock(@Param("local") String local ,@Param("goodsType") String goodsType,@Param("goodsName") String goodsName,@Param("specifications") String specifications,@Param("startDate") String startDate,@Param("supplierName") String supplierName,@Param("endDate") String endDate);
}
