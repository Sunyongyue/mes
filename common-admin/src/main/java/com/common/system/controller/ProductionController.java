package com.common.system.controller;

import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.ProductOrder;
import com.common.system.entity.PubProduct;
import com.common.system.service.ConfigMesService;
import com.common.system.service.DistributNumberService;
import com.common.system.service.ProductOrderService;
import com.common.system.service.PubProductService;
import com.common.system.shiro.ShiroUser;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.*;

@Controller
@RequestMapping("/production")
public class ProductionController {
    @Autowired
    DistributNumberService numberService;
    @Autowired
    PubProductService pubProductService;
    @Autowired
    ConfigMesService configMesService;
    @Autowired
    ProductOrderService productOrderService;
    @RequestMapping("/distributNumber")
    public ModelAndView distributNumber(){
        ModelAndView mav = new ModelAndView("distributNumber");
        return mav;
    }
    @RequestMapping("/pubProduct")
    public ModelAndView pubProduct(){
        ModelAndView mav = new ModelAndView("pubProduct");
        return mav;
    }
    @RequestMapping("/queryDistributNumber")
    @ResponseBody
    public String queryDistributNumber(Integer page, Integer limit){
        JSONObject object = numberService.queryDistributNumber(page, limit);
        return object.toString();
    }
    @RequestMapping("/addDistributNumberMapper")
    @ResponseBody
    public String addDistributNumberMapper(String telNum, String controlMainNum, String telMainNum, String fourMainNum, String status, String remarks, @SessionAttribute ShiroUser user){
        JSONObject object = numberService.addDistributNumberMapper(telNum, controlMainNum, telMainNum, fourMainNum, "正常", remarks, user.getUsername());
        return object.toString();
    }
    @RequestMapping("/upload")
    @ResponseBody
    public String upload(@RequestParam("file") MultipartFile file, @SessionAttribute ShiroUser user){
        String str = "导入成功";
        Map<String, String> resObj = new HashMap<>();
        if (!file.isEmpty()) {
            try {
                String filename = file.getOriginalFilename();
                Workbook wb =null;
                Sheet sheet = null;
                Row row = null;
                List<Map<String,String>> list = null;
                String cellData = null;
                String columns[] = {"telNum","controlMainNum","telMainNum","fourMainNum","remarks"};
                wb = readExcel(file);
                if(wb != null){
                    //用来存放表中数据
                    list = new ArrayList<Map<String,String>>();
                    //获取第一个sheet
                    sheet = wb.getSheetAt(0);
                    //获取最大行数
                    int rownum = sheet.getPhysicalNumberOfRows();
                    //获取第一行
                    row = sheet.getRow(0);
                    //获取最大列数
                    int colnum = row.getPhysicalNumberOfCells();
                    for (int i = 1; i<rownum; i++) {
                        Map<String,String> map = new LinkedHashMap<String,String>();
                        row = sheet.getRow(i);
                        if(row !=null){
                            for (int j=0;j<colnum;j++){
                                cellData = (String) getCellFormatValue(row.getCell(j));
                                map.put(columns[j], cellData);
                            }
                        }else{
                            break;
                        }
                        list.add(map);
                    }
                }
                //遍历解析出来的list
                for (Map<String,String> map : list) {
                   /* for (Map.Entry<String,String> entry : map.entrySet()) {
                        System.out.print(entry.getKey()+":"+entry.getValue()+",");
                    }*/
                    String telNum = map.get("telNum");
                    String controlMainNum = map.get("controlMainNum");
                    String telMainNum = map.get("telMainNum");
                    String fourMainNum = map.get("fourMainNum");
                    String remarks = map.get("remarks");
                    numberService.addDistributNumberMapper(telNum, controlMainNum, telMainNum, fourMainNum, "正常", remarks, user.getUsername());
                }
            } catch (Exception e) {
                resObj.put("msg", "error");
                resObj.put("code", "1");
                return JSONObject.toJSONString(resObj);
            }
            resObj.put("msg", str);
            resObj.put("code", "0");
            return JSONObject.toJSONString(resObj);
        } else {
            return null;
        }
    }
    public static Workbook readExcel(MultipartFile file){
        Workbook wb = null;
        InputStream is = null;
        try {
            is = file.getInputStream();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        try {
            return wb = new XSSFWorkbook(is);
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }

    }
    public static Object getCellFormatValue(Cell cell){
        Object cellValue = null;
        if(cell!=null){
            //判断cell类型
            switch(cell.getCellType()){
                case Cell.CELL_TYPE_NUMERIC:{
                    cellValue = String.valueOf(cell.getNumericCellValue());
                    break;
                }
                case Cell.CELL_TYPE_FORMULA:{
                    //判断cell是否为日期格式
                    if(DateUtil.isCellDateFormatted(cell)){
                        //转换为日期格式YYYY-mm-dd
                        cellValue = cell.getDateCellValue();
                    }else{
                        //数字
                        cellValue = String.valueOf(cell.getNumericCellValue());
                    }
                    break;
                }
                case Cell.CELL_TYPE_STRING:{
                    cellValue = cell.getRichStringCellValue().getString();
                    break;
                }
                default:
                    cellValue = "";
            }
        }else{
            cellValue = "";
        }
        return cellValue;
    }
    @RequestMapping("/deleteDistributNumberMapper")
    @ResponseBody
    public String deleteDistributNumberMapper(String[] deList){
       int[] array = new int[deList.length-2];
     for (int i=1;i<deList.length-1;i++){
            array[i-1]= Integer.parseInt(deList[i]);
     }

        JSONObject object = numberService.deleteDistributNumberMapper(array);
        return object.toString();
    }
    @RequestMapping("/distributNumberSearch")
    @ResponseBody
    public String distributNumberSearch(String telNum, String mainBoardNum, String startDate, String endDate, Integer page, Integer limit){
        JSONObject object = numberService.distributNumberSearch(telNum, mainBoardNum, startDate, endDate, page, limit);
        return object.toString();
    }
    @RequestMapping("/pubProductDate")
    @ResponseBody
    public String queryPubProduct(Integer page, Integer limit){
        JSONObject object = pubProductService.queryPubProduct(page, limit);
        return object.toString();
    }
    @RequestMapping("/addPubProduct")
    @ResponseBody
    public String addPubProduct(String productNum, String valveNUms, String controlMainBoardNums, @SessionAttribute ShiroUser user, String tester, String testRemarks){
        JSONObject object = pubProductService.addPubProduct(productNum, valveNUms, controlMainBoardNums, user.getUsername(), "", testRemarks);
        return object.toString();
    }
    @RequestMapping("/uploadPubProduct")
    @ResponseBody
    public String uploadPubProduct(@RequestParam("file") MultipartFile file, @SessionAttribute ShiroUser user){
        String str = "导入成功";
        Map<String, String> resObj = new HashMap<>();
        if (!file.isEmpty()) {
            try {
                String filename = file.getOriginalFilename();
                Workbook wb =null;
                Sheet sheet = null;
                Row row = null;
                List<Map<String,String>> list = null;
                String cellData = null;
                String columns[] = {"productNum","valveNUms","controlMainBoardNums","remarks"};
                wb = readExcel(file);
                if(wb != null){
                    //用来存放表中数据
                    list = new ArrayList<Map<String,String>>();
                    //获取第一个sheet
                    sheet = wb.getSheetAt(0);
                    //获取最大行数
                    int rownum = sheet.getPhysicalNumberOfRows();
                    //获取第一行
                    row = sheet.getRow(0);
                    //获取最大列数
                    int colnum = row.getPhysicalNumberOfCells();
                    for (int i = 1; i<rownum; i++) {
                        Map<String,String> map = new LinkedHashMap<String,String>();
                        row = sheet.getRow(i);
                        if(row !=null){
                            for (int j=0;j<colnum;j++){
                                cellData = (String) getCellFormatValue(row.getCell(j));
                                map.put(columns[j], cellData);
                            }
                        }else{
                            break;
                        }
                        list.add(map);
                    }
                }
                //遍历解析出来的list
                for (Map<String,String> map : list) {
                   /* for (Map.Entry<String,String> entry : map.entrySet()) {
                        System.out.print(entry.getKey()+":"+entry.getValue()+",");
                    }*/
                    String productNum = map.get("productNum");
                    String valveNUms = map.get("valveNUms");
                    String controlMainBoardNums = map.get("controlMainBoardNums");
                    String remarks = map.get("remarks");
                    pubProductService.addPubProduct(productNum,valveNUms,controlMainBoardNums,user.getUsername(),"",remarks);
                }
            } catch (Exception e) {
                resObj.put("msg", "error");
                resObj.put("code", "1");
                return JSONObject.toJSONString(resObj);
            }
            resObj.put("msg", str);
            resObj.put("code", "0");
            return JSONObject.toJSONString(resObj);
        } else {
            return null;
        }
    }
    @RequestMapping("/updatePubProduct")
    @ResponseBody
    public String updatePubProduct(int ids,@SessionAttribute ShiroUser user){
        JSONObject object = pubProductService.updatePubProduct(ids, user.getUsername());
        PubProduct pubProduct = pubProductService.queryOneByids(ids);
        List<ProductOrder> productOrders = productOrderService.queryByProductNum(pubProduct.getProductNum());
        int i = configMesService.addConfigMes(pubProduct.getProductNum(), "天和", "/", "39.98.86.240", 5600, "apn", "codomain", "remarks", "confValveModel", 1, pubProduct.getGoodsName(), 0, "deviceaddr", "useraddr", "uptime", 5, productOrders.get(0).getCharMethod(), "paytype", productOrders.get(0).getValveName(),  productOrders.get(0).getAlarmSquare(), 0,  productOrders.get(0).getReservedAir(),  productOrders.get(0).getUpperLimitOfRecharge(),  productOrders.get(0).getPulseEquivalent(), "清除剩余累计", 25, "月", productOrders.get(0).getOverdrawAir(),  productOrders.get(0).getValveOpenTime(),  productOrders.get(0).getValveCloseTime(),  productOrders.get(0).getSignalSource(), 0, 0, 0, 0);
        return object.toString();
    }
    @RequestMapping("/dtletePubProduct")
    @ResponseBody
    public String dtletePubProduct(String[] deList){
        int[] array = new int[deList.length-2];
        for (int i=1;i<deList.length-1;i++){
            array[i-1]= Integer.parseInt(deList[i]);
        }
        JSONObject object = pubProductService.dtletePubProduct(array);
        return object.toString();
    }
    @RequestMapping("/searchPubProduct")
    @ResponseBody
    public String searchPubProduct(String productNum, String goodsName, String specifications, String operator, String startDate, String endDate, Integer page, Integer limit){
        JSONObject object = pubProductService.searchPubProduct(productNum, goodsName, specifications, operator, startDate, endDate, page, limit);
        return object.toString();
    }
}
