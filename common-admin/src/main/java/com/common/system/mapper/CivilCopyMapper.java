package com.common.system.mapper;

import com.common.system.entity.CivilProduct;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
@Mapper
public interface CivilCopyMapper {
   List<CivilProduct> queryAllCopy();
   int addCivilProductCopy(@Param("list") List<CivilProduct> list);
   int deleteAllCopy();
}
