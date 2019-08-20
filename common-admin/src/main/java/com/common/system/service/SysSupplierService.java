package com.common.system.service;

import com.alibaba.fastjson.JSONObject;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface SysSupplierService {
    JSONObject queryAll(Integer page, Integer limit);
    JSONObject addSupplier(@Param("local") String local, @Param("supplierNums") String supplierNums, @Param("supplierName") String supplierName, @Param("contacts") String contacts, @Param("tel") String tel, @Param("email") String email, @Param("localMore") String localMore, @Param("remarks") String remarks, @Param("operator") String operator);
    JSONObject updateSupplier(@Param("id") int id ,@Param("local") String local,@Param("supplierNums") String supplierNums,@Param("supplierName") String supplierName,@Param("contacts") String contacts,@Param("tel") String tel,@Param("email") String email,@Param("localMore") String localMore,@Param("remarks") String remarks,@Param("operator") String operator,@Param("operatorTime") String operatorTime);
    JSONObject deleteSupplier(String[] deList);
    JSONObject searchSupplier(@Param("supplierNums") String supplierNums, @Param("local") String local, @Param("supplierName") String supplierName,int page,int limit);
    JSONObject local();
    JSONObject supplierNameSearch( String local);
    JSONObject supplierNameOrder();
}
