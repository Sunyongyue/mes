package com.common.system.service;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.Sysdata;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysDataService {
    JSONArray queryAll();
    JSONObject addSysData(@Param("pid") int pid, @Param("title") String title, @Param("dataname") String dataname,@Param("operator") String operator);
    JSONObject updateSysData(@Param("pid") int pid,@Param("title") String title,@Param("dataname") String dataname,int id,@Param("operator") String operator,@Param("operatorTime") String operatorTime);
    JSONObject deleteSysData(@Param("id") int id);
    int selectCount(@Param("pid") int pid);
    JSONObject queryLocal( int pid);
    List<Sysdata> queryLocalList(@Param("pid") int pid);
}
