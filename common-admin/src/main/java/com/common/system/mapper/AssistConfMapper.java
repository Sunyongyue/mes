package com.common.system.mapper;

import com.common.system.entity.AssistConf;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface AssistConfMapper {
    List<AssistConf> queryByConfPulse(@Param("valveSupplier") String valveSupplier,@Param("valveName") String valveName,@Param("valveSpecifications") String valveSpecifications,@Param("ConfPulse") String ConfPulse);
}
