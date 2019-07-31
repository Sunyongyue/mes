package com.common.system.service;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import org.apache.ibatis.annotations.Param;

public interface SysDataService {
    JSONArray queryAll();
    JSONObject addSysData(@Param("pid") int pid, @Param("title") String title, @Param("dataname") String dataname,@Param("operator") String operator);
    JSONObject updateSysData(@Param("pid") int pid,@Param("title") String title,@Param("dataname") String dataname,int id,@Param("operator") String operator,@Param("operatorTime") String operatorTime);
    JSONObject deleteSysData(@Param("id") int id);
    JSONObject queryLocal( int pid);
}
