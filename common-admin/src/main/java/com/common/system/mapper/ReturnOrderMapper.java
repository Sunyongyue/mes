package com.common.system.mapper;


import com.common.system.entity.ReturnOrder;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
@Mapper
public interface ReturnOrderMapper {
    List<ReturnOrder> allView();
    int add(@Param("returnNum") String returnNum, @Param("reason") String reason, @Param("remark") String remark, @Param("returnSel") String returnSel, @Param("opera") String opera);
    int delete(@Param("array") int[] array);
    List<ReturnOrder> findSome(@Param("saleNum") String saleNum,@Param("opera") String operator,@Param("startDate") String startDate,@Param("endDate") String endDate);
}
