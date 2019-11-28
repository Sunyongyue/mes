package com.common.system.mapper;

import com.common.system.entity.CivilStatus;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CivilStatusMapper {
     List<CivilStatus> queryStatus();
}
