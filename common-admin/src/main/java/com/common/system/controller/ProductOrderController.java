package com.common.system.controller;

import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.FlowmeterConf;
import com.common.system.entity.ProductOrder;
import com.common.system.entity.Sysdata;
import com.common.system.service.FlowmeterConfService;
import com.common.system.service.ProductOrderService;
import com.common.system.service.SysDataService;
import com.common.system.shiro.ShiroUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import javax.imageio.ImageIO;
import javax.print.*;
import javax.print.attribute.DocAttributeSet;
import javax.print.attribute.HashDocAttributeSet;
import javax.print.attribute.HashPrintRequestAttributeSet;
import javax.print.attribute.PrintRequestAttributeSet;
import javax.print.attribute.standard.Copies;
import javax.print.attribute.standard.MediaPrintableArea;
import javax.print.attribute.standard.OrientationRequested;
import javax.print.attribute.standard.PrintQuality;
import java.awt.image.BufferedImage;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import static com.common.system.util.BarCodeUtils.getBarCode;
import static com.common.system.util.BarCodeUtils.insertWords;

@Controller
@RequestMapping("/order")
public class ProductOrderController {
    @Autowired
    ProductOrderService orderService;
    @Autowired
    SysDataService sysDataService;
    @Autowired
    FlowmeterConfService flowmeterConfService;
    @RequestMapping("/productOrder")
    public ModelAndView productOrder(){
        ModelAndView mav = new ModelAndView("productOrderData");
        List<Sysdata> goodsNameP = sysDataService.queryLocalList(102);
        List<Sysdata> specificationsP = sysDataService.queryLocalList(103);
        mav.addObject("goodsNameP",goodsNameP);
        mav.addObject("specificationsP",specificationsP);
        return mav;
    }
    @RequestMapping("/jiLian")
    @ResponseBody
    public String jiLian(Integer pid){
        JSONObject object = new JSONObject();
        List<Sysdata> sysdata = sysDataService.queryLocalList(pid);
        object.put("success",1);
        object.put("date",sysdata);
        return object.toString();
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
        List<Sysdata> goodsNameP = sysDataService.queryLocalList(102);
        List<Sysdata> specificationsP = sysDataService.queryLocalList(103);
        List<Sysdata> pressureP = sysDataService.queryLocalList(104);
        List<Sysdata> valveNameP = sysDataService.queryLocalList(105);
        List<Sysdata> valveSpecificationsP = sysDataService.queryLocalList(106);
        List<Sysdata> controlMainboardNameP = sysDataService.queryLocalList(107);
        List<Sysdata> controlMainboardSpecificationsP = sysDataService.queryLocalList(108);
        List<Sysdata> telMainBoardNameP = sysDataService.queryLocalList(109);
        List<Sysdata> telMainBoardSpecificationsP = sysDataService.queryLocalList(110);
        List<Sysdata> fourMainBoardNameP = sysDataService.queryLocalList(111);
        List<Sysdata> fourSpecificationsP = sysDataService.queryLocalList(159);
        List<Sysdata> valveSupplierP = sysDataService.queryLocalList(212);
        List<Sysdata> controlMainboardSupplierP = sysDataService.queryLocalList(213);
        List<Sysdata> versionP = sysDataService.queryLocalList(224);
        List<Sysdata> telMainBoardSupplierP = sysDataService.queryLocalList(214);
        List<Sysdata> fourSupplierP = sysDataService.queryLocalList(215);
        List<FlowmeterConf> flowmeterConfs = flowmeterConfService.queryAllFlowmeterConf();
        mav.addObject("goodsNameP",goodsNameP);
        mav.addObject("specificationsP",specificationsP);
        mav.addObject("pressureP",pressureP);
        mav.addObject("valveNameP",valveNameP);
        mav.addObject("valveSpecificationsP",valveSpecificationsP);
        mav.addObject("controlMainboardNameP",controlMainboardNameP);
        mav.addObject("controlMainboardSpecificationsP",controlMainboardSpecificationsP);
        mav.addObject("telMainBoardNameP",telMainBoardNameP);
        mav.addObject("telMainBoardSpecificationsP",telMainBoardSpecificationsP);
        mav.addObject("fourMainBoardNameP",fourMainBoardNameP);
        mav.addObject("fourSpecificationsP",fourSpecificationsP);
        mav.addObject("valveSupplierP",valveSupplierP);
        mav.addObject("controlMainboardSupplierP",controlMainboardSupplierP);
        mav.addObject("versionP",versionP);
        mav.addObject("telMainBoardSupplierP",telMainBoardSupplierP);
        mav.addObject("fourSupplierP",fourSupplierP);
        mav.addObject("telProtocol",flowmeterConfs);

        return mav;
    }
    @RequestMapping("/printProductOrder")
    public ModelAndView printProductOrder(Integer id){
        ModelAndView mav = new ModelAndView("printProductOrder");
        ProductOrder productOrder = orderService.queryById(id);
        mav.addObject("productOrder",productOrder);
        return mav;
    }
    @RequestMapping("/printBarCode")
    @ResponseBody
    public String printBarCode(String productNum) throws IOException {
       /* for (int i=0;i<3;i++){*/
            BufferedImage image = insertWords(getBarCode(productNum), productNum);
          /*  ImageIO.write(image, "jpg", new File("E:/GitWorkSpace/common-admin/src/main/resources/static/adminlte/dist/img/"+productNum+".png"));*/
            DocFlavor dof = DocFlavor.INPUT_STREAM.PNG;
            ByteArrayOutputStream os = new ByteArrayOutputStream();
            ImageIO.write(image, "png", os);
            InputStream is = new ByteArrayInputStream(os.toByteArray());
            PrintService ps = PrintServiceLookup.lookupDefaultPrintService();
            PrintRequestAttributeSet pras = new HashPrintRequestAttributeSet();
            pras.add(OrientationRequested.PORTRAIT);
            pras.add(new Copies(1));
            pras.add(PrintQuality.DRAFT);
            DocAttributeSet das = new HashDocAttributeSet();
            // 设置打印纸张的大小（以毫米为单位）
            das.add(new MediaPrintableArea(0, 0, 80, 100, 100));
            Doc doc = new SimpleDoc(is, dof, das);
            DocPrintJob job = ps.createPrintJob();
            try {
                job.print(doc, pras);
            } catch (PrintException ex) {
                ex.printStackTrace();
            }
            is.close();
      /*  }*/
       /* ModelAndView mav = new ModelAndView("barCode");
        mav.addObject("productNum","/adminlte/dist/img/"+productNum+".png");
        return mav;*/
        JSONObject object =new JSONObject();
        object.put("success",1);
        return object.toString();
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
        String s =66+format.replaceAll("-", "");
        if(data.getGoodsName().contains("民用")){
            orderService.addProductOrder((s+intToString(i+1)),data.getAlarmSquare(),data.getCharMethod(),data.getControlMainboardName(),data.getControlMainboardSpecifications(),data.getControlMainboardSupplier(),data.getDisconnectionCheck(),data.getFourMainBoardName(),data.getFourSpecifications(),data.getFourSupplier(),data.getGasCheck(),data.getGoodsName(),data.getIntakeDirection(),data.getLowPressureCheck(),data.getMicroleakageCheck(),data.getNoContactCheck(),data.getNums(),data.getOvercurrentCheck(),data.getOverdrawAir(),data.getPressure(),data.getPulseEquivalent(),data.getRemarks(),data.getReservedAir(),data.getSignalSource(),data.getSpecifications(),data.getStopUseCheck(),data.getTelMainBoardName(),data.getTelMainBoardSpecifications(),data.getTelMainBoardSupplier(),data.getTelProtocol(),data.getTelType(),data.getUpperLimitOfRecharge(),data.getValveCloseTime(),data.getValveName(),data.getValveOpenTime(),data.getValveSpecifications(),data.getValveSupplier(),data.getVersion(),user.getUsername());
        }else{
            for (int k=0;k<data.getNums();k++){
                orderService.addProductOrder((s+intToString(i+1)),data.getAlarmSquare(),data.getCharMethod(),data.getControlMainboardName(),data.getControlMainboardSpecifications(),data.getControlMainboardSupplier(),data.getDisconnectionCheck(),data.getFourMainBoardName(),data.getFourSpecifications(),data.getFourSupplier(),data.getGasCheck(),data.getGoodsName(),data.getIntakeDirection(),data.getLowPressureCheck(),data.getMicroleakageCheck(),data.getNoContactCheck(),1,data.getOvercurrentCheck(),data.getOverdrawAir(),data.getPressure(),data.getPulseEquivalent(),data.getRemarks(),data.getReservedAir(),data.getSignalSource(),data.getSpecifications(),data.getStopUseCheck(),data.getTelMainBoardName(),data.getTelMainBoardSpecifications(),data.getTelMainBoardSupplier(),data.getTelProtocol(),data.getTelType(),data.getUpperLimitOfRecharge(),data.getValveCloseTime(),data.getValveName(),data.getValveOpenTime(),data.getValveSpecifications(),data.getValveSupplier(),data.getVersion(),user.getUsername());
                i++;
            }
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
    public String searchProductOrder(String productNum, String goodsName, String specifications, String operator,String status, String startDate, String endDate, Integer page, Integer limit){
        JSONObject object = orderService.searchProductOrder(productNum, goodsName, specifications, operator, status,startDate, endDate, page,limit);
        return object.toString();
    }
    @RequestMapping("/searchProductOrder1")
    @ResponseBody
    public String searchProductOrder1(String productNumAdd){
        List<ProductOrder> productOrders = orderService.queryByProductNum(productNumAdd);
        JSONObject object =new JSONObject();
        if (productOrders.size()>0){
            object.put("success",1);
            return object.toString();
        }else {
            object.put("success",0);
            return object.toString();
        }
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
