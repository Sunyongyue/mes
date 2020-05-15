package com.common.system.service.impl;

import com.common.system.mapper.MyIndexValueMapper;
import com.common.system.service.MyIndexValueService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MyIndexValueServiceImpl implements MyIndexValueService {
    @Autowired
    MyIndexValueMapper valueMapper;
    @Override
    public int industryDayOrder(String day) {
        int i = valueMapper.industryDayOrder(day);
        return i;
    }

    @Override
    public int industryMonthOrder(String month) {
        int i = valueMapper.industryMonthOrder(month);
        return i;
    }

    @Override
    public int industryYearOrder(String year) {
        int i = valueMapper.industryYearOrder(year);
        return i;
    }

    @Override
    public int industryWeekOrder() {
        return valueMapper.industryWeekOrder();
    }

    @Override
    public int civilDayOrder(String day) {
        int i = valueMapper.civilDayOrder(day);
        return i;
    }

    @Override
    public int civilMonthOrder(String month) {
        int i = valueMapper.civilMonthOrder(month);
        return i;
    }

    @Override
    public int civilYearOrder(String year) {
        int i = valueMapper.civilYearOrder(year);
        return i;
    }

    @Override
    public int civilWeekOrder() {
        return valueMapper.civilWeekOrder();
    }

    @Override
    public int industrySaleDayOrder(String day) {
        int i = valueMapper.industrySaleDayOrder(day);
        return i;
    }

    @Override
    public int industrySaleMonthOrder(String month) {
        int i = valueMapper.industrySaleMonthOrder(month);
        return i;
    }

    @Override
    public int industrySaleYearOrder(String year) {
        int i = valueMapper.industrySaleYearOrder(year);
        return i;
    }

    @Override
    public int industrySaleWeekOrder() {
        return valueMapper.industrySaleWeekOrder();
    }

    @Override
    public int civilSaleDayOrder(String day) {
        int i = valueMapper.civilSaleDayOrder(day);
        return i;
    }

    @Override
    public int civilSaleMonthOrder(String month) {
        int i =valueMapper.civilSaleMonthOrder(month);
        return i;
    }

    @Override
    public int civilSaleYearOrder(String year) {
        int i = valueMapper.civilSaleYearOrder(year);
        return i;
    }

    @Override
    public int civilSaleWeekOrder() {
        return valueMapper.civilSaleWeekOrder();
    }

    @Override
    public int dayCivilSendGoods(String day) {
        int i = valueMapper.dayCivilSendGoods(day);
        return i;

    }

    @Override
    public int monthCivilSendGoods(String month) {
        int i = valueMapper.monthCivilSendGoods(month);
        return i;
    }

    @Override
    public int yearCivilSendGoods(String year) {
        int i = valueMapper.yearCivilSendGoods(year);
        return i;
    }

    @Override
    public int weekCivilSendGoods() {
        return valueMapper.weekCivilSendGoods();
    }

    @Override
    public int dayDustrySendGoods(String day) {
        int i = valueMapper.dayDustrySendGoods(day);
        return i;
    }

    @Override
    public int monthDustrySendGoods(String month) {
        int i = valueMapper.monthDustrySendGoods(month);
        return i;
    }

    @Override
    public int yearDustrySendGoods(String year) {
        int i = valueMapper.yearDustrySendGoods(year);
        return i;
    }

    @Override
    public int weekDustrySendGoods() {
        return valueMapper.weekDustrySendGoods();
    }

    @Override
    public int dayInGoods(String goodsName, String day) {
        int i = valueMapper.dayInGoods(goodsName, day);
        return i;
    }

    @Override
    public int myGoodsStock(String goodsName) {
        int i = valueMapper.myGoodsStock(goodsName);
        return i;
    }

    @Override
    public int myOverGoodsStock(String goodsName) {
        int i = valueMapper.myOverGoodsStock(goodsName);
        return i;
    }
}
