package com.common.system.service;

import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.MainTel;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MainTelSerice {
    JSONObject queryAllMainTel(Integer page, Integer limit);
    JSONObject searchMainTe(@Param("main_DeviceAddr") String main_DeviceAddr, @Param("main_Iphone") String main_Iphone, @Param("main_ImeiNum") String main_ImeiNum, @Param("startDate") String  startDate, @Param("endDate") String endDate,Integer page, Integer limit);
    JSONObject addMainTel(@Param("list") List<MainTel> list);
    JSONObject deleteMainTel(@Param("array") int[] array);
    JSONObject updateMainTel(@Param("main_DeviceAddr") String main_DeviceAddr,@Param("main_Iphone") String main_Iphone,@Param("main_StartDate")  String main_StartDate,@Param("main_EndDate")  String main_EndDate,@Param("main_CreateTime")  String main_CreateTime,@Param("main_Guid")  String main_Guid,@Param("main_PrintNum")  String main_PrintNum,@Param("main_ImeiNum")  String  main_ImeiNum,@Param("id")  int id);

}
