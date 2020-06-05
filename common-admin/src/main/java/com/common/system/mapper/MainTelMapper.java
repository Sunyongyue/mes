package com.common.system.mapper;

import com.common.system.entity.MainTel;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
@Mapper
public interface MainTelMapper {
    MainTel findByTel(@Param("main_DeviceAddr") String main_DeviceAddr);
    List<MainTel> queryAllMainTel();
    List<MainTel> searchMainTe(@Param("main_DeviceAddr") String main_DeviceAddr,@Param("main_Iphone") String main_Iphone,@Param("main_ImeiNum") String main_ImeiNum,@Param("startDate") String  startDate,@Param("endDate") String endDate);
    int addMainTel(@Param("list") List<MainTel> list);
    int deleteMainTel(@Param("array") int[] array);
    int updateMainTel(@Param("main_DeviceAddr") String main_DeviceAddr,@Param("main_Iphone") String main_Iphone,@Param("main_StartDate")  String main_StartDate,@Param("main_EndDate")  String main_EndDate,@Param("main_CreateTime")  String main_CreateTime,@Param("main_Guid")  String main_Guid,@Param("main_PrintNum")  String main_PrintNum,@Param("main_ImeiNum")  String  main_ImeiNum,@Param("id")  int id);
}
