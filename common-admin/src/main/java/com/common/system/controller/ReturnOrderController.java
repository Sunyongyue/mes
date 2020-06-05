package com.common.system.controller;

import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.Sysdata;
import com.common.system.service.ReturnOrderService;
import com.common.system.service.SaleOrderService;
import com.common.system.shiro.ShiroUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/order")
public class ReturnOrderController {
    @Autowired
    ReturnOrderService orderService;
    @Autowired
    SaleOrderService saleOrder;
    @RequestMapping("/return")
    public ModelAndView productOrder(){
        ModelAndView mav = new ModelAndView("returnOrder");
        return mav;
    }
    @RequestMapping("/add")
    @ResponseBody
    public String add(String returnNum, String reason, String remarks, String returnSel,  @SessionAttribute ShiroUser user ){
        saleOrder.updateStatusByNum(returnNum,returnSel);
        int i = orderService.add(returnNum, reason, remarks, returnSel, user.getUsername());
        JSONObject object = new JSONObject();
        object.put("success",i);
        return object.toString();
    }
    @RequestMapping("/view")
    @ResponseBody
    public String view(Integer page, Integer limit){

        JSONObject jsonObject = orderService.allView(page, limit);

        return jsonObject.toString();
    }
    @RequestMapping("/del")
    @ResponseBody
    public String deleteMainTel(String[] deList){
        int[] array = new int[deList.length - 2];
        for (int i = 1; i < deList.length - 1; i++) {
            array[i - 1] = Integer.parseInt(deList[i]);
        }
        int i = orderService.delete(array);
        JSONObject object = new JSONObject();
        object.put("success",i);
        return object.toString();
    }
    @RequestMapping("/findSome")
    @ResponseBody
    public String findSome(String saleNum,String operator,String startDate,String endDate,Integer page, Integer limit){

        JSONObject jsonObject = orderService.findSome(saleNum, operator, startDate, endDate, page, limit);

        return jsonObject.toString();
    }
}
