package com.common.system.service;

import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.PubProduct;
import org.apache.ibatis.annotations.Param;

public interface PubProductService {
    JSONObject queryPubProduct(Integer page,Integer limit);
    PubProduct queryOneByids(@Param("ids") int ids );
    PubProduct queryOneByproductNum(@Param("productNum") String productNum);
    JSONObject  addPubProduct(@Param("productNum") String productNum, @Param("valveNUms") String valveNUms,  @Param("controlMainBoardNums") String controlMainBoardNums,@Param("assembler") String assembler,@Param("tester") String tester,@Param("testRemarks") String testRemarks);
    JSONObject  updatePubProduct(@Param("ids") int ids ,@Param("tester") String tester);
    JSONObject  dtletePubProduct(@Param("array") int[] array );
    JSONObject searchPubProduct(@Param("productNum") String productNum,@Param("goodsName") String goodsName,@Param("goodsSpecifications") String goodsSpecifications,@Param("operator") String operator,@Param("startDate") String startDate,@Param("endDate") String endDate,Integer page,Integer limit);
    int productNumExist(@Param("productNum") String productNum);
    int valveNUmsExist(@Param("valveNUms") String valveNUms);
    int controlMainBoardNumsExist(@Param("controlMainBoardNums") String controlMainBoardNums);
}
