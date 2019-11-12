package com.common.system.mapper;

import com.common.system.entity.WorkingOrder;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface WorkingOrderMapper {
    List<WorkingOrder> queryWorkingOrder();
    List<WorkingOrder> queryWorkingOrderByName(@Param("orderName") String orderName);
    int deleteWorkingOrder(@Param("array") int[] array);
    int addWorkingOrder(@Param("orderName") String orderName,@Param("adjustingWheel") String adjustingWheel,@Param("installationOfSample") String installationOfSample,@Param("wiringHarness") String wiringHarness,@Param("installOfBoard") String installOfBoard,@Param("installOfSigns") String installOfSigns,@Param("upperShell") String upperShell,@Param("testing") String testing,@Param("boxing") String boxing,@Param("remarks") String remarks,@Param("operator") String operator);
    int updateWorkingOrder(@Param("orderName") String orderName,@Param("adjustingWheel") String adjustingWheel,@Param("installationOfSample") String installationOfSample,@Param("wiringHarness") String wiringHarness,@Param("installOfBoard") String installOfBoard,@Param("installOfSigns") String installOfSigns,@Param("upperShell") String upperShell,@Param("testing") String testing,@Param("boxing") String boxing,@Param("remarks") String remarks,@Param("operator") String operator,@Param("id") Integer id);
}
