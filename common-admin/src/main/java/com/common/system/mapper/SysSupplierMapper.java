package com.common.system.mapper;

import com.common.system.entity.SysPurchaser;
import com.common.system.entity.SysSupplier;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface SysSupplierMapper {
    List<SysSupplier> queryAll();
    int addSupplier(@Param("local") String local, @Param("supplierNums") String supplierNums, @Param("supplierName") String supplierName,  @Param("contacts") String contacts, @Param("tel") String tel,  @Param("email") String email, @Param("localMore") String localMore, @Param("remarks") String remarks,@Param("operator") String operator);
    int updateSupplier(@Param("id") int id ,@Param("local") String local,@Param("supplierNums") String supplierNums,@Param("supplierName") String supplierName,@Param("contacts") String contacts,@Param("tel") String tel,@Param("email") String email,@Param("localMore") String localMore,@Param("remarks") String remarks,@Param("operator") String operator,@Param("operatorTime") String operatorTime);
    int deleteSupplier(@Param("id") int id);
    List<SysPurchaser> searchSupplier(@Param("supplierNums") String supplierNums,@Param("local") String local,@Param("supplierName") String supplierName);
    List<String> local();
    List<String> supplierNameSearch(@Param("local") String local);
}
