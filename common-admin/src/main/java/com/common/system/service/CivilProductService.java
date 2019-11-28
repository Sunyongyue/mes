package com.common.system.service;

import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.CivilProduct;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CivilProductService {
    JSONObject queryAllCivilProduct(Integer page, Integer limit);
    JSONObject serachCivilProduct(@Param("telNum") String telNum, @Param("productNum") String productNum, @Param("goodsName") String goodsName, @Param("specifications") String specifications, @Param("workingorderId") String workingorderId, @Param("startDate") String startDate, @Param("endDate") String endDate,Integer page, Integer limit );
    int addCivilProduct(@Param("list") List<CivilProduct> list);
    int deleteCivilProduct(@Param("array") int[] array);
    int queryByTel(@Param("telNum") String telNum);
}
