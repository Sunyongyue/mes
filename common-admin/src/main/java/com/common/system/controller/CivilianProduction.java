package com.common.system.controller;

import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.SysPurchaser;
import com.common.system.entity.Sysdata;
import com.common.system.entity.WorkingOrder;
import com.common.system.mapper.SysPurchaserMapper;
import com.common.system.mapper.WorkingOrderMapper;
import com.common.system.service.SysDataService;
import com.common.system.service.WorkingOrderService;
import com.common.system.shiro.ShiroUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;


@Controller
@RequestMapping("/product")
public class CivilianProduction {
    @Autowired
    WorkingOrderService workingOrderService;
    @Autowired
    SysDataService sysDataService;
    @Autowired
    WorkingOrderMapper workingOrderMapper;
    @Autowired
    SysPurchaserMapper sysPurchaserMapper;
    @RequestMapping("/civilProduct")
    public ModelAndView civilProduct(){
        ModelAndView mav = new ModelAndView("civilianProduction");
        List<Sysdata> goodsNameP = sysDataService.queryLocalList(102);
        List<Sysdata> specificationsP = sysDataService.queryLocalList(103);
        List<WorkingOrder> workingOrders = workingOrderMapper.queryWorkingOrder();
        List<String> local = sysPurchaserMapper.local();
        mav.addObject("CivilGoodNameC",goodsNameP);
        mav.addObject("CivilSpecifications",specificationsP);
        mav.addObject("CivilWorkingOrder",workingOrders);
        mav.addObject("Clocal",local);
        return mav;
    }
    @RequestMapping("/companyName")
    @ResponseBody
    public String companyName(String local){
        List<SysPurchaser> sysPurchasers = sysPurchaserMapper.queryByLocal(local);
        JSONObject object = new JSONObject();
        object.put("date",sysPurchasers);
        object.put("success",1);
        return object.toString();
    }

    @RequestMapping("/workOrder")
    public ModelAndView workOrder(){
        ModelAndView mav = new ModelAndView("workingOrder");
        return mav;
    }
    @RequestMapping("/workOrderDate")
    @ResponseBody
    public String workOrderDate(Integer page, Integer limit){
        JSONObject object = workingOrderService.queryWorkingOrder( page, limit);
        return object.toString();
    }
    @RequestMapping("/addWorkingOrder")
    @ResponseBody
    public String addWorkingOrder(String orderName, String adjustingWheel, String installationOfSample, String wiringHarness, String installOfBoard, String installOfSigns, String upperShell, String testing, String boxing, String remarks,@SessionAttribute ShiroUser user){
        JSONObject object = workingOrderService.addWorkingOrder(orderName, adjustingWheel, installationOfSample, wiringHarness, installOfBoard, installOfSigns, upperShell, testing, boxing, remarks, user.getUsername());
        return object.toString();
    }
    @RequestMapping("/updateWorkingOrder")
    @ResponseBody
    public String updateWorkingOrder(String orderName, String adjustingWheel, String installationOfSample, String wiringHarness, String installOfBoard, String installOfSigns, String upperShell, String testing, String boxing, String remarks, @SessionAttribute ShiroUser user, Integer id){
        JSONObject object = workingOrderService.updateWorkingOrder(orderName, adjustingWheel, installationOfSample, wiringHarness, installOfBoard, installOfSigns, upperShell, testing, boxing, remarks, user.getUsername(), id);
        return object.toString();
    }
    @RequestMapping("/deleteWorkingOrder")
    @ResponseBody
    public String deleteWorkingOrder(String[] deList){
        int[] array = new int[deList.length-2];
        for (int i=1;i<deList.length-1;i++){
            array[i-1]= Integer.parseInt(deList[i]);
        }
        JSONObject object = workingOrderService.deleteWorkingOrder(array);
        return object.toString();
    }
    @RequestMapping("/queryWorkingOrderByName")
    @ResponseBody
    public String queryWorkingOrderByName(String orderName, Integer page, Integer limit){
        JSONObject object = workingOrderService.queryWorkingOrderByName(orderName, page, limit);
        return  object.toString();
    }
}
