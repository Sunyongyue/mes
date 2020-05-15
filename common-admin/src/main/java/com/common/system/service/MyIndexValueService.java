package com.common.system.service;

import org.apache.ibatis.annotations.Param;

public interface MyIndexValueService {
    //生产订单 工业
    int industryDayOrder(@Param("day") String day);
    int industryMonthOrder(@Param("month") String month);
    int industryYearOrder(@Param("year") String year);
    int industryWeekOrder();
    //生产订单 民用
    int civilDayOrder(@Param("day") String day);
    int civilMonthOrder(@Param("month") String month);
    int civilYearOrder(@Param("year") String year);
    int civilWeekOrder();
    //销售订单 工业
    int industrySaleDayOrder(@Param("day") String day);
    int industrySaleMonthOrder(@Param("month") String month);
    int industrySaleYearOrder(@Param("year") String year);
    int industrySaleWeekOrder();
    //销售订单 民用
    int civilSaleDayOrder(@Param("day") String day);
    int civilSaleMonthOrder(@Param("month") String month);
    int civilSaleYearOrder(@Param("year") String year);
    int civilSaleWeekOrder();
    //发货 民用
    int dayCivilSendGoods(@Param("day") String day);
    int monthCivilSendGoods(@Param("month") String month);
    int yearCivilSendGoods(@Param("year") String year);
    int weekCivilSendGoods();
    //发货 工业
    int dayDustrySendGoods(@Param("day") String day);
    int monthDustrySendGoods(@Param("month") String month);
    int yearDustrySendGoods(@Param("year") String year);
    int weekDustrySendGoods();
    //进货
    int dayInGoods(@Param("goodsName") String goodsName,@Param("day") String day);
    //原材料库存
    int myGoodsStock(@Param("goodsName") String goodsName);
    //成品库库存
    int myOverGoodsStock(@Param("goodsName") String goodsName);
}
