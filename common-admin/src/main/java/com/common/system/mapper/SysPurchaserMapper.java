package com.common.system.mapper;

import com.common.system.entity.SysPurchaser;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface SysPurchaserMapper {
    List<SysPurchaser> queryAll();
    int addPurchaser(@Param("local") String local,@Param("purchaserNums") String purchaserNums,@Param("purchaserName") String purchaserName,@Param("gasGroup") String gasGroup,@Param("contacts") String contacts,@Param("tel") String tel,@Param("ipAddress") String ipAddress,@Param("ipPort") String ipPort,@Param("email") String email,@Param("localMore") String localMore,@Param("remarks") String remarks,@Param("operator") String operator);
    int updatePurchaser(@Param("id") int id ,@Param("local") String local,@Param("purchaserNums") String purchaserNums,@Param("purchaserName") String purchaserName,@Param("gasGroup") String gasGroup,@Param("contacts") String contacts,@Param("tel") String tel,@Param("ipAddress") String ipAddress,@Param("ipPort") String ipPort,@Param("email") String email,@Param("localMore") String localMore,@Param("remarks") String remarks,@Param("operator") String operator,@Param("operatorTime") String operatorTime);
    int deletePurchaser(@Param("id") int id);
    List<SysPurchaser> searchPurchaser(@Param("purchaserNums") String purchaserNums,@Param("local") String local,@Param("purchaserName") String purchaserName);
    List<String> local();
}
