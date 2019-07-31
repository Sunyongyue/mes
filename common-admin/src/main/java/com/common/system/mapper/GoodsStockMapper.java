package com.common.system.mapper;

import com.common.system.entity.GoodsStock;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
@Mapper
public interface GoodsStockMapper {
    List<GoodsStock> queryGoodsStock();
    List<GoodsStock> searchGoodsStock(@Param("local") String local , @Param("goodsType") String goodsType, @Param("goodsName") String goodsName, @Param("specifications") String specifications, @Param("startDate") String startDate, @Param("supplierName") String supplierName, @Param("endDate") String endDate);
    int addGoodsStock(@Param("local") String local,@Param("supplierName") String supplierName,@Param("goodsType") String goodsType,@Param("goodsName") String goodsName,@Param("specifications") String specifications,@Param("goodsProduceDate") String goodsProduceDate,@Param("goodsStock") String goodsStock,@Param("nums") int nums,@Param("remarks") String remarks,@Param("operator") String operator);
    int deleteGoodsStock(@Param("local") String local,@Param("supplierName") String supplierName,@Param("goodsType") String goodsType,@Param("goodsName") String goodsName,@Param("specifications") String specifications,@Param("nums") int nums,@Param("operator") String operator);
    int updateGoodsStock(@Param("local") String local,@Param("supplierName") String supplierName,@Param("goodsType") String goodsType,@Param("goodsName") String goodsName,@Param("specifications") String specifications,@Param("nums") int nums,@Param("operator") String operator);
    List<GoodsStock> queryExist(@Param("local") String local,@Param("supplierName") String supplierName,@Param("goodsType") String goodsType,@Param("goodsName") String goodsName,@Param("specifications") String specifications);
    List<String> locals();
    List<String> supplierNames();
    List<String> goodsTypes();
    List<String> goodsNames();
    List<String> specificationss();
}
