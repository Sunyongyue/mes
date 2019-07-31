package com.common.system.mapper;

import com.common.system.entity.DistributNumber;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface DistributNumberMapper {
    List<DistributNumber> queryDistributNumber();
    int addDistributNumberMapper(@Param("telNum") String telNum,@Param("controlMainNum") String controlMainNum,@Param("telMainNum") String telMainNum,@Param("fourMainNum") String fourMainNum,@Param("status") String status,@Param("remarks") String remarks,@Param("operator") String operator);
    int deleteDistributNumberMapper(@Param("array") int[] array);
    List<DistributNumber> distributNumberSearch(@Param("telNum") String telNum,@Param("mainBoardNum") String mainBoardNum,@Param("startDate") String startDate,@Param("endDate") String endDate);
    List<DistributNumber> queryByNumber(@Param("number") String number);
}
