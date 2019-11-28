package com.common.system.service;
import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.SysPurchaser;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysPurchaserService {
    JSONObject queryAll(Integer page, Integer limit);
    JSONObject addPurchaser(@Param("local") String local, @Param("purchaserNums") String purchaserNums, @Param("purchaserName") String purchaserName, @Param("gasGroup") String gasGroup, @Param("contacts") String contacts, @Param("tel") String tel, @Param("ipAddress") String ipAddress, @Param("ipPort") String ipPort, @Param("email") String email, @Param("localMore") String localMore, @Param("remarks") String remarks, @Param("operator") String operator);
    JSONObject updatePurchaser(@Param("id") int id ,@Param("local") String local,@Param("purchaserNums") String purchaserNums,@Param("purchaserName") String purchaserName,@Param("gasGroup") String gasGroup,@Param("contacts") String contacts,@Param("tel") String tel,@Param("ipAddress") String ipAddress,@Param("ipPort") String ipPort,@Param("email") String email,@Param("localMore") String localMore,@Param("remarks") String remarks,@Param("operator") String operator,@Param("operatorTime") String operatorTime);
    JSONObject deletePurchaser(String[] deList);
    JSONObject searchPurchaser(@Param("purchaserNums") String purchaserNums, @Param("local") String local, @Param("purchaserName") String purchaserName,Integer page, Integer limit);
    JSONObject local();
    JSONObject purchaserName();
    List<String> purchaserNameList();
    SysPurchaser queryBypurchaserName(@Param("purchaserName") String purchaserName);
    int selectMax();
    SysPurchaser queryById(@Param("id") int id);
}
