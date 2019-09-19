package com.common.system.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface MyIndexValueMapper {
    //生产订单 工业
    int industryDayOrder(@Param("day") String day);
    int industryMonthOrder(@Param("month") String month);
    int industryYearOrder(@Param("year") String year);
    //生产订单 民用
    int civilDayOrder(@Param("day") String day);
    int civilMonthOrder(@Param("month") String month);
    int civilYearOrder(@Param("year") String year);
    //销售订单 工业
    int industrySaleDayOrder(@Param("day") String day);
    int industrySaleMonthOrder(@Param("month") String month);
    int industrySaleYearOrder(@Param("year") String year);
    //销售订单 民用
    int civilSaleDayOrder(@Param("day") String day);
    int civilSaleMonthOrder(@Param("month") String month);
    int civilSaleYearOrder(@Param("year") String year);
    //发货 民用
    int dayCivilSendGoods(@Param("day") String day);
    int monthCivilSendGoods(@Param("month") String month);
    int yearCivilSendGoods(@Param("year") String year);
    //发货 工业
    int dayDustrySendGoods(@Param("day") String day);
    int monthDustrySendGoods(@Param("month") String month);
    int yearDustrySendGoods(@Param("year") String year);
    //进货
    int dayInGoods(@Param("goodsName") String goodsName,@Param("day") String day);
    //原材料库存
    int myGoodsStock(@Param("goodsName") String goodsName);
    //成品库库存
    int myOverGoodsStock(@Param("goodsName") String goodsName);
}
