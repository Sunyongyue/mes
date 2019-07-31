package com.common.system.mapper;

import com.common.system.entity.ThDict;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface ThDictMapper {
    List<ThDict> queryAll();
    int addThDict(@Param("pid") int pid,@Param("title") String title,@Param("goodsName") String goodsName,@Param("goodsType") String goodsType,@Param("goodsUnit") String goodsUnit,@Param("goodsStock") String goodsStock);
    int updateThDict(@Param("pid") int pid,@Param("title") String title,@Param("goodsName") String goodsName,@Param("goodsType") String goodsType,@Param("goodsUnit") String goodsUnit,@Param("goodsStock") String goodsStock,@Param("id") int id);
    int deleteThDict(@Param("id") int id,@Param("pid") int pid);
}
