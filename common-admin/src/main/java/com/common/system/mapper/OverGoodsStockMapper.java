package com.common.system.mapper;

import com.common.system.entity.OverGoodsStock;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface OverGoodsStockMapper {
    List<OverGoodsStock> queryOverGoodsStock();
    int addOverGoodsStock(@Param("goodsName") String goodsName,@Param("specifications") String specifications,@Param("intakeDirection") String intakeDirection,@Param("stockWarehouse") String stockWarehouse,@Param("nums") int nums,@Param("operator") String operator,@Param("remarks")  String remarks);
    List<OverGoodsStock> serchOverGoodsStock(@Param("goodsName") String goodsName,@Param("specifications") String specifications,@Param("intakeDirection") String intakeDirection,@Param("operator") String operator, @Param("supplierName") String supplierName, @Param("endDate") String endDate);
    List<OverGoodsStock> queryExist(@Param("goodsName") String goodsName,@Param("specifications") String specifications,@Param("intakeDirection") String intakeDirection);
    int deleteGoodsStock(@Param("goodsName") String goodsName,@Param("specifications") String specifications,@Param("intakeDirection") String intakeDirection,@Param("nums") int nums,@Param("operator") String operator);
    int updateGoodsStock(@Param("goodsName") String goodsName,@Param("specifications") String specifications,@Param("intakeDirection") String intakeDirection,@Param("nums") int nums,@Param("operator") String operator);
}
