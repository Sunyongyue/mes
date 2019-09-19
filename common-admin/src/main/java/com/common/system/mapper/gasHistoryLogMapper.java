package com.common.system.mapper;

import com.common.system.entity.gasHistoryLog;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface gasHistoryLogMapper {
   List<gasHistoryLog> queryAllGasHistoryLog();
   List<gasHistoryLog> serchByTelNum(@Param("device_addr") String device_addr,@Param("report_type") String report_type,@Param("startDate") String startDate,@Param("endDate") String endDate);
}
