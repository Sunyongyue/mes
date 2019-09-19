package com.common.system.service;

import com.common.system.entity.AssistConf;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AssistConfService {
    List<AssistConf> queryByConfPulse(@Param("valveSupplier") String valveSupplier, @Param("valveName") String valveName, @Param("valveSpecifications") String valveSpecifications, @Param("ConfPulse") String ConfPulse);

}
