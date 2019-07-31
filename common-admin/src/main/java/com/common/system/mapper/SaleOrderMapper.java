package com.common.system.mapper;

import com.common.system.entity.SaleOrder;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface SaleOrderMapper {
    List<SaleOrder> querySaleOrder();
    int addSaleOrder(@Param("saleNum") String saleNum,@Param("customerName") String customerName,@Param("date") String date,@Param("projectName") String projectName,@Param("endDate") String endDate,@Param("productNameOrder") String productNameOrder,@Param("productSpecificationsOrder") String productSpecificationsOrder,@Param("customerPressure") String customerPressure,@Param("customerNums") int customerNums,@Param("address") String address,@Param("receiver") String receiver,@Param("telPhone") String telPhone,@Param("logisticsInformation") String logisticsInformation,@Param("remarks") String remarks,@Param("operator") String operator,@Param("operatorTime") String operatorTime);
    int deleteSaleOrder(@Param("array") int[] array);
    int queryNum(@Param("date") String date);
    List<SaleOrder> searchSaleOrder(@Param("saleNum") String saleNum,@Param("customerName") String customerName,@Param("projectName") String projectName,@Param("productNameOrder") String productNameOrder,@Param("productSpecificationsOrder") String productSpecificationsOrder,@Param("operator") String operator,@Param("startDate") String startDate,@Param("endDate") String endDate);
}
