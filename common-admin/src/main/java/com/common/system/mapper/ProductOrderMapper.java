package com.common.system.mapper;

import com.common.system.entity.ProductOrder;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface ProductOrderMapper {
    List<ProductOrder> queryProductOrder();
    List<ProductOrder> queryByProductNum(@Param("productNum") String productNum);
    int addProductOrder(@Param("productNum") String productNum,@Param("alarmSquare") int alarmSquare,@Param("charMethod") String charMethod,@Param("controlMainboardName") String controlMainboardName,@Param("controlMainboardSpecifications") String controlMainboardSpecifications ,@Param("controlMainboardSupplier") String  controlMainboardSupplier,@Param("disconnectionCheck") String disconnectionCheck ,@Param("fourMainBoardName") String fourMainBoardName ,@Param("fourSpecifications") String fourSpecifications ,@Param("fourSupplier") String fourSupplier ,@Param("gasCheck") String gasCheck,@Param("goodsName") String goodsName,@Param("intakeDirection") String intakeDirection ,@Param("lowPressureCheck") String lowPressureCheck,@Param("microleakageCheck") String microleakageCheck,@Param("noContactCheck") String noContactCheck ,@Param("nums") int nums,@Param("overcurrentCheck") String overcurrentCheck ,@Param("overdrawAir") int overdrawAir ,@Param("pressure") String pressure ,@Param("pulseEquivalent") String pulseEquivalent ,@Param("remarks") String remarks,@Param("reservedAir") String reservedAir ,@Param("signalSource") String signalSource ,@Param("specifications") String specifications ,@Param("stopUseCheck") String stopUseCheck ,@Param("telMainBoardName") String telMainBoardName ,@Param("telMainBoardSpecifications") String telMainBoardSpecifications ,@Param("telMainBoardSupplier") String telMainBoardSupplier ,@Param("telProtocol") String telProtocol ,@Param("telType") String telType ,@Param("upperLimitOfRecharge") int upperLimitOfRecharge ,@Param("valveCloseTime") int valveCloseTime ,@Param("valveName") String valveName,@Param("valveOpenTime") int valveOpenTime ,@Param("valveSpecifications") String valveSpecifications ,@Param("valveSupplier") String valveSupplier  ,@Param("version") String version ,@Param("operator") String operator ,@Param("orderType") String orderType);
    int queryNums(@Param("date") String date);
    int delteProductOrder(@Param("array") int[] array);
    int updateStatus(@Param("productNum") String productNum);
    int updateOver(@Param("productNum") String productNum);
    ProductOrder queryById(@Param("id") int id);
    List<ProductOrder> searchProductOrder(@Param("productNum") String productNum,@Param("goodsName") String goodsName,@Param("specifications") String specifications,@Param("operator") String operator,@Param("status") String status,@Param("startDate") String startDate,@Param("endDate") String endDate);
}
