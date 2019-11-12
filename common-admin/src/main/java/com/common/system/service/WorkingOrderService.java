package com.common.system.service;

import com.alibaba.fastjson.JSONObject;
import org.apache.ibatis.annotations.Param;


public interface WorkingOrderService {
    JSONObject queryWorkingOrder(Integer page, Integer limit);
    JSONObject queryWorkingOrderByName(@Param("orderName") String orderName,Integer page, Integer limit);
    JSONObject deleteWorkingOrder(@Param("array") int[] array);
    JSONObject addWorkingOrder(@Param("orderName") String orderName,@Param("adjustingWheel") String adjustingWheel,@Param("installationOfSample") String installationOfSample,@Param("wiringHarness") String wiringHarness,@Param("installOfBoard") String installOfBoard,@Param("installOfSigns") String installOfSigns,@Param("upperShell") String upperShell,@Param("testing") String testing,@Param("boxing") String boxing,@Param("remarks") String remarks,@Param("operator") String operator);
    JSONObject updateWorkingOrder(@Param("orderName") String orderName,@Param("adjustingWheel") String adjustingWheel,@Param("installationOfSample") String installationOfSample,@Param("wiringHarness") String wiringHarness,@Param("installOfBoard") String installOfBoard,@Param("installOfSigns") String installOfSigns,@Param("upperShell") String upperShell,@Param("testing") String testing,@Param("boxing") String boxing,@Param("remarks") String remarks,@Param("operator") String operator,@Param("id") Integer id);
}
