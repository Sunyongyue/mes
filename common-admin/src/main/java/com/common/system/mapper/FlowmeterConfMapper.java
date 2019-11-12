package com.common.system.mapper;

import com.common.system.entity.FlowmeterConf;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface FlowmeterConfMapper {
    List<FlowmeterConf> queryAllFlowmeterConf();
    FlowmeterConf queryOneByName(@Param("flowmeterFac") String flowmeterFac);
}
