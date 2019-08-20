package com.common.system.controller;

import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.ProductOrder;
import com.common.system.service.ProductOrderService;
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

@Controller
@RequestMapping("/order")
public class ProductOrderController {
    @Autowired
    ProductOrderService orderService;
    @RequestMapping("/productOrder")
    public ModelAndView productOrder(){
        ModelAndView mav = new ModelAndView("productOrderData");
        return mav;
    }
    @RequestMapping("/productOrderFrom")
    public ModelAndView productOrderFrom(){
        ModelAndView mav = new ModelAndView("productOrder");
    /*    for (int i=1;i<10;i++){ UUID uuid = UUID.randomUUID();
            Date date = new Date();
            SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-ddhh-mm-ss");
            System.out.println(dateFormat.format(date).replaceAll("-",""));
            String s = uuid.toString();
            System.out.println(s);
            String s1 = s.replaceAll("-", "").substring(0,8);
            System.out.println(s1);}*/
        return mav;
    }
    @RequestMapping("/printProductOrder")
    public ModelAndView printProductOrder(Integer id){
        ModelAndView mav = new ModelAndView("printProductOrder");
        ProductOrder productOrder = orderService.queryById(id);
        mav.addObject("productOrder",productOrder);
        return mav;
    }
    @RequestMapping("/productOrderDate")
    @ResponseBody
    public String productOrderDate(Integer page, Integer limit){
        JSONObject object = orderService.queryProductOrder(page, limit);
        return object.toString();
    }
    @RequestMapping("/addProductOrder")
    @ResponseBody
    public String addProductOrder(@RequestBody ProductOrder data, @SessionAttribute ShiroUser user){
        Date date = new Date();
        SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd");
        String format = dateFormat.format(date);
        int i = orderService.queryNums(format);
        String s = 88+format.replaceAll("-", "");
       for (int k=0;k<data.getNums();k++){
           orderService.addProductOrder((s+intToString(i+1)),data.getAlarmSquare(),data.getCharMethod(),data.getControlMainboardName(),data.getControlMainboardSpecifications(),data.getControlMainboardSupplier(),data.getDisconnectionCheck(),data.getFourMainBoardName(),data.getFourSpecifications(),data.getFourSupplier(),data.getGasCheck(),data.getGoodsName(),data.getIntakeDirection(),data.getLowPressureCheck(),data.getMicroleakageCheck(),data.getNoContactCheck(),1,data.getOvercurrentCheck(),data.getOverdrawAir(),data.getPressure(),data.getPulseEquivalent(),data.getRemarks(),data.getReservedAir(),data.getSignalSource(),data.getSpecifications(),data.getStopUseCheck(),data.getTelMainBoardName(),data.getTelMainBoardSpecifications(),data.getTelMainBoardSupplier(),data.getTelProtocol(),data.getTelType(),data.getUpperLimitOfRecharge(),data.getValveCloseTime(),data.getValveName(),data.getValveOpenTime(),data.getValveSpecifications(),data.getValveSupplier(),data.getVersion(),user.getUsername());
           i++;
       }
        JSONObject object = new JSONObject();
       object.put("success",i);
        return object.toString();
    }
    @RequestMapping("/delteProductOrder")
    @ResponseBody
    public String delteProductOrder(String[] deList){
        int[] array = new int[deList.length-2];
        for (int i=1;i<deList.length-1;i++){
            array[i-1]= Integer.parseInt(deList[i]);
        }
        JSONObject object = orderService.delteProductOrder(array);
        return object.toString();
    }
    @RequestMapping("/searchProductOrder")
    @ResponseBody
    public String searchProductOrder(String productNum, String goodsName, String specifications, String operator, String startDate, String endDate, Integer page, Integer limit){
        JSONObject object = orderService.searchProductOrder(productNum, goodsName, specifications, operator, startDate, endDate, page, limit);
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
