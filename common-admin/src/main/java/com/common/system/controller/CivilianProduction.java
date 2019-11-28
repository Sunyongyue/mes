package com.common.system.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.*;
import com.common.system.mapper.*;
import com.common.system.service.*;
import com.common.system.shiro.ShiroUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.*;


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
    @Autowired
    CivilProductService civilProductService;
    @Autowired
    ProductOrderService productOrderService;
    @Autowired
    ConfigMesService configMesService;
    @Autowired
    SysPurchaserService sysPurchaserService;
    @Autowired
    SaleOrderMapper saleOrderMapper;
    @Autowired
    CivilCopyMapper civilCopyMapper;
    @Autowired
    CivilStatusMapper civilStatusMapper;
    @RequestMapping("/civilProduct")
    public ModelAndView civilProduct() {
        ModelAndView mav = new ModelAndView("civilianProduction");
        List<Sysdata> goodsNameP = sysDataService.queryLocalList(102);
        List<Sysdata> specificationsP = sysDataService.queryLocalList(103);
        List<WorkingOrder> workingOrders = workingOrderMapper.queryWorkingOrder();
        List<String> local = sysPurchaserMapper.local();
        mav.addObject("CivilGoodNameC", goodsNameP);
        mav.addObject("CivilSpecifications", specificationsP);
        mav.addObject("CivilWorkingOrder", workingOrders);
        mav.addObject("Clocal", local);
        return mav;
    }
    @RequestMapping("/civilProductCopy")
    public ModelAndView civilProductCopy() {
        ModelAndView mav = new ModelAndView("civilianProductionCopy");
        List<WorkingOrder> workingOrders = workingOrderMapper.queryWorkingOrder();
        mav.addObject("CivilWorkingOrder", workingOrders);
        int i = civilCopyMapper.deleteAllCopy();
        return mav;
    }
    @RequestMapping("/companyName")
    @ResponseBody
    public String companyName(String local) {
        List<SysPurchaser> sysPurchasers = sysPurchaserMapper.queryByLocal(local);
        JSONObject object = new JSONObject();
        object.put("date", sysPurchasers);
        object.put("success", 1);
        return object.toString();
    }

    @RequestMapping("/workOrder")
    public ModelAndView workOrder() {
        ModelAndView mav = new ModelAndView("workingOrder");
        return mav;
    }

    @RequestMapping("/workOrderDate")
    @ResponseBody
    public String workOrderDate(Integer page, Integer limit) {
        JSONObject object = workingOrderService.queryWorkingOrder(page, limit);
        return object.toString();
    }

    @RequestMapping("/addWorkingOrder")
    @ResponseBody
    public String addWorkingOrder(String orderName, String adjustingWheel, String installationOfSample, String wiringHarness, String installOfBoard, String installOfSigns, String upperShell, String testing, String boxing, String remarks, @SessionAttribute ShiroUser user) {
        JSONObject object = workingOrderService.addWorkingOrder(orderName, adjustingWheel, installationOfSample, wiringHarness, installOfBoard, installOfSigns, upperShell, testing, boxing, remarks, user.getUsername());
        return object.toString();
    }

    @RequestMapping("/updateWorkingOrder")
    @ResponseBody
    public String updateWorkingOrder(String orderName, String adjustingWheel, String installationOfSample, String wiringHarness, String installOfBoard, String installOfSigns, String upperShell, String testing, String boxing, String remarks, @SessionAttribute ShiroUser user, Integer id) {
        JSONObject object = workingOrderService.updateWorkingOrder(orderName, adjustingWheel, installationOfSample, wiringHarness, installOfBoard, installOfSigns, upperShell, testing, boxing, remarks, user.getUsername(), id);
        return object.toString();
    }

    @RequestMapping("/deleteWorkingOrder")
    @ResponseBody
    public String deleteWorkingOrder(String[] deList) {
        int[] array = new int[deList.length - 2];
        for (int i = 1; i < deList.length - 1; i++) {
            array[i - 1] = Integer.parseInt(deList[i]);
        }
        JSONObject object = workingOrderService.deleteWorkingOrder(array);
        return object.toString();
    }

    @RequestMapping("/queryWorkingOrderByName")
    @ResponseBody
    public String queryWorkingOrderByName(String orderName, Integer page, Integer limit) {
        JSONObject object = workingOrderService.queryWorkingOrderByName(orderName, page, limit);
        return object.toString();
    }

    @RequestMapping("/queryByTel")
    @ResponseBody
    public String queryByTel(String telNum) {
        int i = civilProductService.queryByTel(telNum);
        JSONObject object = new JSONObject();
        object.put("success", i);
        return object.toString();
    }

    @RequestMapping("/addCivilProduct")
    @ResponseBody
    public String addCivilProduct(String cRemarksAdd, String telCnumAdd, int CNums, String CivilProductNumAdd, int workingOrderC, int CcompanyName, @SessionAttribute ShiroUser user) {
        SaleOrder saleOrder = saleOrderMapper.queryByNum(cRemarksAdd);
        SysPurchaser sysPurchaser = sysPurchaserMapper.queryBypurchaserName(saleOrder.getCustomerName());
        int x = productOrderService.updateStatus(CivilProductNumAdd);
        List<CivilProduct> list = new ArrayList<>();
        for (int i = 0; i < CNums; i++) {
            int i1 = Integer.parseInt(telCnumAdd);
            CivilProduct civilProduct = new CivilProduct((i1 + i) + "", CivilProductNumAdd, workingOrderC, sysPurchaser.getId(), cRemarksAdd, user.getUsername());
            list.add(civilProduct);
        }
        int i = civilProductService.addCivilProduct(list);
        int i1 = civilCopyMapper.addCivilProductCopy(list);
        JSONObject object = new JSONObject();
        object.put("success", i);
        return object.toString();
    }

    @RequestMapping("/queryAllCivilProduct")
    @ResponseBody
    public String queryAllCivilProduct(Integer page, Integer limit) {
        JSONObject object = civilProductService.queryAllCivilProduct(page, limit);
        return object.toString();
    }
    @RequestMapping("/queryAllCopy")
    @ResponseBody
    public String queryAllCopy(){
        List<CivilProduct> civilProducts = civilCopyMapper.queryAllCopy();
        List<CivilStatus> civilStatuses = civilStatusMapper.queryStatus();
        Map<String ,CivilStatus> civilStatusesMap= new HashMap<>();
        for (CivilStatus c: civilStatuses) {
            civilStatusesMap.put(c.getConfDeviceAddr(),c);
        }
        for (CivilProduct c:
        civilProducts) {
            CivilStatus civilStatus=civilStatusesMap.get(c.getTelNum());
            if (civilStatus!=null){
                c.setCode(civilStatus.getCode());
                c.setConfValveModel(civilStatus.getConfValveModel());
            }

        }
        String s = JSON.toJSONString(civilProducts);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject object =new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",civilProducts.size());
        object.put("data",array);
        return object.toString();
    }
    @RequestMapping("/deleteCivilProduct")
    @ResponseBody
    public String deleteCivilProduct(String[] deList) {
        int[] array = new int[deList.length - 2];
        for (int i = 1; i < deList.length - 1; i++) {
            array[i - 1] = Integer.parseInt(deList[i]);
        }
        int i = civilProductService.deleteCivilProduct(array);
        JSONObject object = new JSONObject();
        object.put("success", i);
        return object.toString();
    }

    @RequestMapping("/serachCivilProduct")
    @ResponseBody
    public String serachCivilProduct(String telNum, String productNum, String goodsName, String specifications, String workingorderId, String startDate, String endDate, Integer page, Integer limit) {
        JSONObject object = civilProductService.serachCivilProduct(telNum, productNum, goodsName, specifications, workingorderId, startDate, endDate, page, limit);
        return object.toString();
    }

    @RequestMapping("/cCheck")
    @ResponseBody
    public String cCheck(String[] telNum, String[] proOrderNum,String instructionType) {
        int sum=0;
        Map<String, ArrayList<String>> repeat = new HashMap<>();
        String[] telNumCheck = new String[telNum.length - 2];
        String[] proOrderNumCheck = new String[proOrderNum.length - 2];
        for (int i = 1; i < proOrderNum.length - 1; i++) {
            proOrderNumCheck[i - 1] = proOrderNum[i];
        }
        for (int i = 1; i < telNum.length - 1; i++) {
            telNumCheck[i - 1] = telNum[i];
        }
        for (String p : proOrderNumCheck) {
            ArrayList<String> strings = repeat.get(p);
            if (strings == null) {
                strings = new ArrayList<>();
                strings.add(p);
                repeat.put(p, strings);
            } else {
                strings.add(p);
            }
        }
        if (repeat.size() == 1) {
            List<ProductOrder> productOrder = productOrderService.queryByProductNum(proOrderNumCheck[0].replace("\"", ""));
            String s = productOrder.get(0).getPulseEquivalent().replaceAll("m³/脉冲", "");
            Double aDouble = Double.valueOf(s);
         /*   String vavleType = productOrder.get(0).getValveName();
            if (productOrder.get(0).getValveName().contains("快关")) {
                vavleType = "普通阀门(快关)";
            } else if (productOrder.get(0).getValveName().contains("慢关") && !productOrder.get(0).getValveName().contains("球阀")) {
                vavleType = "普通阀门(慢关)";
            } else if (productOrder.get(0).getValveName().isEmpty()) {
                vavleType = "普通阀门(快关)";
            } else {
                vavleType = "工业球阀";
            }*/
            String teltro = "0,不设置";
            if (!productOrder.get(0).getTelProtocol().isEmpty()) {
                teltro = productOrder.get(0).getTelProtocol();
            }
            SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
            Date now = new Date();
            Date afterDate = new Date(now.getTime() + 300000);
            String format = sdf.format(afterDate);
            for (String tel : telNumCheck) {
                int i1 = configMesService.selectCount(tel.replace("\"", ""));
                int i = configMesService.addConfigMes(proOrderNumCheck[0].replace("\"", ""), "天和", "/", "58.58.58.234", 6003, "", "", "", instructionType, 1 + i1, productOrder.get(0).getGoodsName(), 0, tel.replace("\"", ""), "0", format, 1440, "单一", productOrder.get(0).getCharMethod(),"普通阀门(快关)", productOrder.get(0).getAlarmSquare(), 0, productOrder.get(0).getReservedAir(), productOrder.get(0).getUpperLimitOfRecharge(), aDouble, "清除剩余累计", 25, "年", productOrder.get(0).getOverdrawAir(), productOrder.get(0).getValveOpenTime(), productOrder.get(0).getValveCloseTime(), productOrder.get(0).getSignalSource(), 0, 0, 0, 0, 1, 0, 0, 0, teltro, "1");
                sum+=i;
            }
        }
        JSONObject object = new JSONObject();
        object.put("success",repeat.size());
        object.put("sum",sum==proOrderNumCheck.length);
        System.out.println(sum==proOrderNumCheck.length);
        return object.toString();
    }
    @RequestMapping("/cOut")
    @ResponseBody
    public String cOut(String[] telNum, String[] proOrderNum,String instructionType,int id) {
        SysPurchaser sysPurchaser = sysPurchaserService.queryById(id);
        int sum=0;
        Map<String, ArrayList<String>> repeat = new HashMap<>();
        String[] telNumCheck = new String[telNum.length - 2];
        String[] proOrderNumCheck = new String[proOrderNum.length - 2];
        for (int i = 1; i < proOrderNum.length - 1; i++) {
            proOrderNumCheck[i - 1] = proOrderNum[i];
        }
        for (int i = 1; i < telNum.length - 1; i++) {
            telNumCheck[i - 1] = telNum[i];
        }
        for (String p : proOrderNumCheck) {
            ArrayList<String> strings = repeat.get(p);
            if (strings == null) {
                strings = new ArrayList<>();
                strings.add(p);
                repeat.put(p, strings);
            } else {
                strings.add(p);
            }
        }
        if (repeat.size() == 1) {
            List<ProductOrder> productOrder = productOrderService.queryByProductNum(proOrderNumCheck[0].replace("\"", ""));
            String s = productOrder.get(0).getPulseEquivalent().replaceAll("m³/脉冲", "");
            Double aDouble = Double.valueOf(s);
          /*  String vavleType = productOrder.get(0).getValveName();
            if (productOrder.get(0).getValveName().contains("快关")) {
                vavleType = "普通阀门(快关)";
            } else if (productOrder.get(0).getValveName().contains("慢关") && !productOrder.get(0).getValveName().contains("球阀")) {
                vavleType = "普通阀门(慢关)";
            } else if (productOrder.get(0).getValveName().isEmpty()) {
                vavleType = "普通阀门(快关)";
            } else {
                vavleType = "工业球阀";
            }*/
            Random random= new Random();
            int y = random.nextInt(46)+13;
            String teltro = "0,不设置";
            if (!productOrder.get(0).getTelProtocol().isEmpty()) {
                teltro = productOrder.get(0).getTelProtocol();
            }
            for (String tel : telNumCheck) {
                int i1 = configMesService.selectCount(tel.replace("\"", ""));
                int i = configMesService.addConfigMes(proOrderNumCheck[0].replace("\"", ""), "天和", "/", sysPurchaser.getIpAddress(), Integer.parseInt(sysPurchaser.getIpPort()), "", "", "", instructionType, 1 + i1, productOrder.get(0).getGoodsName(), 0, tel.replace("\"", ""), "0", "00:"+y+":"+y, 1440, "单一", productOrder.get(0).getCharMethod(), "普通阀门(快关)", productOrder.get(0).getAlarmSquare(), 0, productOrder.get(0).getReservedAir(), productOrder.get(0).getUpperLimitOfRecharge(), aDouble, "清除剩余累计", 25, "年", productOrder.get(0).getOverdrawAir(), productOrder.get(0).getValveOpenTime(), productOrder.get(0).getValveCloseTime(), productOrder.get(0).getSignalSource(), 0, 0, 0, 0, 1, 0, 0, 0, teltro, "1");
                sum+=i;
            }
        }
        JSONObject object = new JSONObject();
        object.put("success",repeat.size());
        object.put("sum",sum==proOrderNumCheck.length);
        System.out.println(sum==proOrderNumCheck.length);
        return object.toString();
    }

}
