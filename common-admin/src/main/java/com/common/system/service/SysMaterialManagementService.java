package com.common.system.service;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

import org.apache.ibatis.annotations.Param;

public interface SysMaterialManagementService {
    JSONArray queryAll();
    JSONObject addSysMaterial(@Param("pid") int pid, @Param("title") String title, @Param("factory") String factory, @Param("materialtype") String materialtype, @Param("materialName") String materialName, @Param("materialSpecification") String materialSpecification, @Param("remarks") String remarks, @Param("operator") String operator);
    JSONObject updateSysMaterial(@Param("pid") int pid,@Param("title") String title,@Param("factory") String factory,@Param("materialtype") String materialtype,@Param("materialName") String materialName,@Param("materialSpecification") String materialSpecification,@Param("remarks") String remarks,@Param("operator") String operator,@Param("id") int id);
    JSONObject deleteSysMaterial(@Param("id") int id);
    JSONObject queryByPid(@Param("pid") int pid);
    JSONObject querygoodsType(String factory);
}
