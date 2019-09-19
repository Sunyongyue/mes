package com.common.system.controller;

import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.ProductOrder;
import com.common.system.entity.SaleOrder;
import com.common.system.entity.Sysdata;
import com.common.system.mapper.SysdataMapper;
import com.common.system.service.SaleOrderService;
import com.common.system.service.SysDataService;
import com.common.system.service.SysPurchaserService;
import com.common.system.shiro.ShiroUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/order")
public class SaleOrderController {
    @Autowired
    SaleOrderService saleOrder;
    @Autowired
    SysDataService sysDataService;
    @Autowired
    SysPurchaserService sysPurchaserService;

    @RequestMapping("/saleOrder")
    public ModelAndView saleOrder(){
        ModelAndView mav = new ModelAndView("saleOrderData");
        return mav;
    }
    @RequestMapping("/sale")
    public ModelAndView sale(){
        ModelAndView mav = new ModelAndView("saleOrder");
        List<String> purchaserNameList = sysPurchaserService.purchaserNameList();
        mav.addObject("purchaserNameList",purchaserNameList);
        List<Sysdata> sysdata = sysDataService.queryLocalList(103);
        List<Sysdata> goodName = sysDataService.queryLocalList(102);
        List<Sysdata> pressure = sysDataService.queryLocalList(104);
        mav.addObject("sysdata",sysdata);
        mav.addObject("goodName",goodName);
        mav.addObject("pressure",pressure);
        return mav;
    }
    @RequestMapping("/printSaleOrder")
    public ModelAndView printProductOrder(Integer id){
        ModelAndView mav = new ModelAndView("printSaleOrder");
        SaleOrder saleOrde = saleOrder.queryOne(id);
        mav.addObject("saleOrder",saleOrde);
        return mav;
    }
    @RequestMapping("/querySaleOrder")
    @ResponseBody
    public String querySaleOrder(Integer page, Integer limit){
        JSONObject object = saleOrder.querySaleOrder(page, limit);
        return object.toString();
    }
    @RequestMapping("/addSaleOrder")
    @ResponseBody
    public String addSaleOrder(@RequestBody SaleOrder sale, @SessionAttribute ShiroUser user){
        Date date = new Date();
        SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd");
        String format = dateFormat.format(date);
        int i = saleOrder.queryNum(format);
        String s = 88+format.replaceAll("-", "");
        for (int k=0;k<sale.getCustomerNums();k++){
           saleOrder.addSaleOrder((s+intToString(i+1)),sale.getCustomerName(),sale.getDate(),sale.getProjectName(),sale.getEndDate(),sale.getProductNameOrder(),sale.getProductSpecificationsOrder(),sale.getCustomerPressure(),sale.getCustomerNums(),sale.getAddress(),sale.getReceiver(),sale.getTelPhone(),sale.getLogisticsInformation(),sale.getRemarks(),user.getUsername(),sale.getOperatorTime());
           i++;
        }
        JSONObject object = new JSONObject();
        object.put("success",i);
        return object.toString();

    }
    @RequestMapping("/deleteSaleOrder")
    @ResponseBody
    public String deleteSaleOrder(String[] deList){
        int[] array = new int[deList.length-2];
        for (int i=1;i<deList.length-1;i++){
            array[i-1]= Integer.parseInt(deList[i]);
        }
        JSONObject object = saleOrder.deleteSaleOrder(array);
        return object.toString();
    }
    @RequestMapping("/searchSaleOrder")
    @ResponseBody
    public String searchSaleOrder(String saleNum, String customerName, String projectName, String productNameOrder, String productSpecificationsOrder, String operator, String startDate, String endDate,Integer page, Integer limit){
        JSONObject object = saleOrder.searchSaleOrder(saleNum, customerName, projectName, productNameOrder, productSpecificationsOrder, operator, startDate, endDate, page, limit);
        return object.toString();
    }
    //转换int方法
    public String intToString(int i){
        if (i<10){
            return ("00"+i);
        }else if (i>=100){
            return (""+i);
        }else {
            return "0"+i;
        }

    }
}
