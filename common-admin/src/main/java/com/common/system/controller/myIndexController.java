package com.common.system.controller;

import com.alibaba.fastjson.JSONObject;
import com.common.system.service.MyIndexValueService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class myIndexController {
    @Autowired
    MyIndexValueService valueService;
    @RequestMapping("/myIndexValue")
    @ResponseBody
    public String indexValue(){
        JSONObject  object = new JSONObject();
        Date date = new Date();
        SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd");
        String day = dateFormat.format(date);
        SimpleDateFormat monthFormat = new SimpleDateFormat("yyyy-MM");
        String month = monthFormat.format(date);
        SimpleDateFormat yearFormat = new SimpleDateFormat("yyyy");
        String year = yearFormat.format(date);
       /* System.out.println("day: "+day+"month: "+month+"year: "+year);*/
        int civilDayOrder = valueService.civilDayOrder(day);
        int civilMonthOrder = valueService.civilMonthOrder(month);
        int civilYearOrder = valueService.civilYearOrder(year);
        int industryDayOrder = valueService.industryDayOrder(day);
        int industryMonthOrder = valueService.industryMonthOrder(month);
        int industryYearOrder = valueService.industryYearOrder(year);
        int civilSaleDayOrder = valueService.civilSaleDayOrder(day);
        int civilSaleMonthOrder = valueService.civilSaleMonthOrder(month);
        int civilSaleYearOrder = valueService.civilSaleYearOrder(year);
        int industrySaleDayOrder = valueService.industrySaleDayOrder(day);
        int industrySaleMonthOrder = valueService.industrySaleMonthOrder(month);
        int industrySaleYearOrder = valueService.industrySaleYearOrder(year);
        int dayCivilSendGoods = valueService.dayCivilSendGoods(day);
        int monthCivilSendGoods = valueService.monthCivilSendGoods(month);
        int yearCivilSendGoods = valueService.yearCivilSendGoods(year);
        int dayDustrySendGoods = valueService.dayDustrySendGoods(day);
        int monthDustrySendGoods = valueService.monthDustrySendGoods(month);
        int yearDustrySendGoods = valueService.yearDustrySendGoods(year);
        int dayInVavle = valueService.dayInGoods("阀门", day);
        int dayInMainBoard = valueService.dayInGoods("主板", day);
        int dayInControlDiv = valueService.dayInGoods("控制盒", day);
        int dayInEpidermis = valueService.dayInGoods("皮膜表", day);
        int vavle = valueService.myGoodsStock("阀门");
        int mainBoard = valueService.myGoodsStock("主板");
        int controlDiv = valueService.myGoodsStock("控制盒");
        int epidermis = valueService.myGoodsStock("皮膜表");
        int control = valueService.myOverGoodsStock("控制器");
        int civilWatch = valueService.myOverGoodsStock("民用表");
        int businessWatch  = valueService.myOverGoodsStock("商业皮膜表");
        object.put("success",1);
        object.put("civilDayOrder",civilDayOrder);
        object.put("civilMonthOrder",civilMonthOrder);
        object.put("civilYearOrder",civilYearOrder);
        object.put("industryDayOrder",industryDayOrder);
        object.put("industryMonthOrder",industryMonthOrder);
        object.put("industryYearOrder",industryYearOrder);
        object.put("civilSaleDayOrder",civilSaleDayOrder);
        object.put("civilSaleMonthOrder",civilSaleMonthOrder);
        object.put("civilSaleYearOrder",civilSaleYearOrder);
        object.put("industrySaleDayOrder",industrySaleDayOrder);
        object.put("industrySaleMonthOrder",industrySaleMonthOrder);
        object.put("industrySaleYearOrder",industrySaleYearOrder);
        object.put("dayCivilSendGoods",dayCivilSendGoods);
        object.put("monthCivilSendGoods",monthCivilSendGoods);
        object.put("yearCivilSendGoods",yearCivilSendGoods);
        object.put("dayDustrySendGoods",dayDustrySendGoods);
        object.put("monthDustrySendGoods",monthDustrySendGoods);
        object.put("yearDustrySendGoods",yearDustrySendGoods);
        object.put("dayInVavle",dayInVavle);
        object.put("dayInMainBoard",dayInMainBoard);
        object.put("dayInControlDiv",dayInControlDiv);
        object.put("dayInEpidermis",dayInEpidermis);
        object.put("vavle",vavle);
        object.put("mainBoard",mainBoard);
        object.put("controlDiv",controlDiv);
        object.put("epidermis",epidermis);
        object.put("control",control);
        object.put("civilWatch",civilWatch);
        object.put("businessWatch",businessWatch);
        return object.toString();
    }
}
