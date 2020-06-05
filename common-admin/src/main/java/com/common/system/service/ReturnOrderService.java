package com.common.system.service;

import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.DistributNumber;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ReturnOrderService {
    JSONObject allView(Integer page, Integer limit);
    int add(@Param("returnNum") String returnNum, @Param("reason") String reason, @Param("remark") String remark, @Param("returnSel") String returnSel, @Param("opera") String opera);
    int delete(@Param("array") int[] array);
    JSONObject findSome(@Param("saleNum") String saleNum,@Param("opera") String operator,@Param("startDate") String startDate,@Param("endDate") String endDate,Integer page, Integer limit);

}
