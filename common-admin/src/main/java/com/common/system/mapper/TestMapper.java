package com.common.system.mapper;

import com.common.system.entity.Test;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
@Mapper
public interface TestMapper {
    List<Test> queryall();
    List<Test> queryone(@Param("id")int id);
}
