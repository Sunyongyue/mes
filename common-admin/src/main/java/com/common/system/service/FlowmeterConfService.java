package com.common.system.service;

import com.common.system.entity.FlowmeterConf;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface FlowmeterConfService {
    List<FlowmeterConf> queryAllFlowmeterConf();
    FlowmeterConf queryOneByName(@Param("flowmeterFac") String flowmeterFac);
}
