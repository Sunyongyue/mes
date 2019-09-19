package com.common.system.service;

import com.alibaba.fastjson.JSONObject;
import org.apache.ibatis.annotations.Param;

public interface OverGoodsOutStockService {
    JSONObject queryOverGoodsOutStock(Integer page,Integer limit);
    JSONObject addOverGoodsOutStock(@Param("outStockNumbers") String outStockNumbers,@Param("productNum") String productNum, @Param("salenum") String salenum, @Param("outFactoryMan") String outFactoryMan, @Param("getOutFactoryTime") String getOutFactoryTime, @Param("outStockNums") int outStockNums, @Param("outStockType") String outStockType, @Param("outStockremarks") String outStockremarks,String logisticsInformation);
    JSONObject searchOverGoodsOutStock(@Param("outStockNumbers") String outStockNumbers,@Param("salenum") String salenum, @Param("productNameOrder") String productNameOrder, @Param("productSpecificationsOrder") String productSpecificationsOrder, @Param("outFactoryMan") String outFactoryMan, @Param("startDate") String startDate, @Param("endDate") String endDate,Integer page,Integer limit);
    int outStockPeople(@Param("id") int id,@Param("outStockTestPeople") String outStockTestPeople);
    int sendGoods(@Param("id") int id,@Param("sendGoodsPeople") String sendGoodsPeople);
    int deleteOverGoodsOutStock(@Param("array") int[] array);
}
