package com.common.system.mapper;

import com.common.system.entity.OverGoodsInStock;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface OverGoodsInStockMapper {
    List<OverGoodsInStock> queryOverGoodsInStock();
    int addOverGoodsInStock(@Param("productNum") String productNum,@Param("goodsName") String goodsName,@Param("specifications") String specifications,@Param("intakeDirection") String intakeDirection,@Param("testDate") String testDate,@Param("nums") int nums,@Param("operator") String operator,@Param("testRemarks") String testRemarks
                            ,@Param("pressure") String pressure ,@Param("valveSupplier") String valveSupplier,@Param("valveName") String valveName,@Param("valveSpecifications") String valveSpecifications,@Param("controlMainboardSupplier") String controlMainboardSupplier,@Param("controlMainboardName") String controlMainboardName,@Param("controlMainboardSpecifications") String controlMainboardSpecifications,@Param("version") String version,@Param("telMainBoardSupplier") String telMainBoardSupplier,@Param("telMainBoardName")String telMainBoardName,@Param("telMainBoardSpecifications") String telMainBoardSpecifications,@Param("telType") String telType,@Param("fourSupplier") String fourSupplier,@Param("fourMainBoardName") String fourMainBoardName,@Param("fourSpecifications")String fourSpecifications,@Param("telProtocol")String telProtocol);
    int deleteOverGoodsInStock(@Param("array") int[] array);
    List<OverGoodsInStock> searchOverGoodsInStock(@Param("productNum") String productNum,@Param("goodsName") String goodsName,@Param("specifications") String specifications,@Param("operator") String operator,@Param("startDate") String startDate,@Param("endDate") String endDate);
}
