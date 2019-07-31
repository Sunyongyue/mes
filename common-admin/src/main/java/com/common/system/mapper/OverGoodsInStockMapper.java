package com.common.system.mapper;

import com.common.system.entity.OverGoodsInStock;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface OverGoodsInStockMapper {
    List<OverGoodsInStock> queryOverGoodsInStock();
    int addOverGoodsInStock(@Param("productNum") String productNum,@Param("goodsName") String goodsName,@Param("specifications") String specifications,@Param("intakeDirection") String intakeDirection,@Param("testDate") String testDate,@Param("nums") int nums,@Param("operator") String operator,@Param("testRemarks") String testRemarks);
    int deleteOverGoodsInStock(@Param("array") int[] array);
    List<OverGoodsInStock> searchOverGoodsInStock(@Param("productNum") String productNum,@Param("goodsName") String goodsName,@Param("specifications") String specifications,@Param("operator") String operator,@Param("startDate") String startDate,@Param("endDate") String endDate);
}
