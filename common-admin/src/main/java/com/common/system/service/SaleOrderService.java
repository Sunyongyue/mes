package com.common.system.service;

import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.SaleOrder;
import org.apache.ibatis.annotations.Param;


public interface SaleOrderService {
    JSONObject querySaleOrder(Integer page, Integer limit);
    JSONObject addSaleOrder(@Param("saleNum") String saleNum, @Param("customerName") String customerName, @Param("date") String date, @Param("projectName") String projectName, @Param("endDate") String endDate, @Param("productNameOrder") String productNameOrder, @Param("productSpecificationsOrder") String productSpecificationsOrder, @Param("customerPressure") String customerPressure, @Param("customerNums") int customerNums, @Param("address") String address, @Param("receiver") String receiver, @Param("telPhone") String telPhone, @Param("logisticsInformation") String logisticsInformation, @Param("remarks") String remarks, @Param("operator") String operator, @Param("operatorTime") String operatorTime);
    JSONObject deleteSaleOrder(@Param("array") int[] array);
    int queryNum(@Param("date") String date);
    JSONObject searchSaleOrder(@Param("saleNum") String saleNum,@Param("customerName") String customerName,@Param("projectName") String projectName,@Param("productNameOrder") String productNameOrder,@Param("productSpecificationsOrder") String productSpecificationsOrder,@Param("operator") String operator,@Param("startDate") String startDate,@Param("endDate") String endDate,Integer page, Integer limit);
    SaleOrder queryOne(@Param("id") int id);
}
