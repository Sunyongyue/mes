package com.common.system.mapper;

import com.common.system.entity.CivilProduct;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface CivilProductMapper {
    List<CivilProduct> queryAllCivilProduct();
    List<CivilProduct> serachCivilProduct(@Param("telNum") String telNum,@Param("productNum") String productNum,@Param("goodsName") String goodsName,@Param("specifications") String specifications,@Param("workingorderId") String workingorderId,@Param("startDate") String startDate,@Param("endDate") String endDate );
    int addCivilProduct(@Param("list") List<CivilProduct> list);
    int deleteCivilProduct(@Param("array") int[] array);
    int queryByTel(@Param("telNum") String telNum);
}
