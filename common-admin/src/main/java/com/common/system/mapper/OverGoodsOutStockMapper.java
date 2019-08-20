package com.common.system.mapper;

import com.common.system.entity.OverGoodsOutStock;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface OverGoodsOutStockMapper {
    List<OverGoodsOutStock> queryOverGoodsOutStock();
    int addOverGoodsOutStock(@Param("outStockNumbers") String outStockNumbers,@Param("productNum") String productNum,@Param("salenum") String salenum,@Param("outFactoryMan") String outFactoryMan,@Param("getOutFactoryTime") String getOutFactoryTime,@Param("outStockNums") int outStockNums,@Param("outStockType") String outStockType,@Param("outStockremarks") String outStockremarks);
    List<OverGoodsOutStock> searchOverGoodsOutStock(@Param("outStockNumbers") String outStockNumbers,@Param("salenum") String salenum,@Param("productNameOrder") String productNameOrder,@Param("productSpecificationsOrder") String productSpecificationsOrder,@Param("outFactoryMan") String outFactoryMan,@Param("startDate") String startDate,@Param("endDate") String endDate);
}
