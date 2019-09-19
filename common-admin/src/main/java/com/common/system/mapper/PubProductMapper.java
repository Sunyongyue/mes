package com.common.system.mapper;

import com.common.system.entity.PubProduct;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface PubProductMapper {
    List<PubProduct> queryPubProduct();
    PubProduct queryOneByids(@Param("ids") int ids );
    PubProduct queryOneByproductNum(@Param("productNum") String productNum);
    int addPubProduct(@Param("productNum") String productNum,@Param("valveNUms") String valveNUms,@Param("vavleProductDate") String vavleProductDate,@Param("controlMainBoardNums") String controlMainBoardNums,@Param("controlMainBoardProductDate") String controlMainBoardProductDate,@Param("telMainBoardNums") String telMainBoardNums,@Param("telMainBoardProductDate") String telMainBoardProductDate,@Param("cardNum") String cardNum,@Param("iMSI") String iMSI,@Param("iMEI") String iMEI,@Param("iCCID") String iCCID,@Param("fourMainBoardNums") String fourMainBoardNums,@Param("fourMainBoardProductDate") String fourMainBoardProductDate,@Param("assembler") String assembler,@Param("tester") String tester,@Param("testRemarks") String testRemarks,@Param("activeTime") String activeTime,@Param("shutdownTime") String shutdownTime);
    int updatePubProduct(@Param("ids") int ids ,@Param("tester") String tester);
    int dtletePubProduct(@Param("array") int[] array );
    List<PubProduct> searchPubProduct(@Param("productNum") String productNum,@Param("goodsName") String goodsName,@Param("specifications") String goodsSpecifications,@Param("operator") String operator,@Param("startDate") String startDate,@Param("endDate") String endDate);
    int productNumExist(@Param("productNum") String productNum);
    int valveNUmsExist(@Param("valveNUms") String valveNUms);
    int controlMainBoardNumsExist(@Param("controlMainBoardNums") String controlMainBoardNums);

}
