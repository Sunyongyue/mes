package com.common.system.controller;

import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.Sysdata;
import com.common.system.service.*;
import com.common.system.shiro.ShiroUser;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.*;

@Controller
@RequestMapping("/overGoods")
public class OverGoodsController {
    @Autowired
    OverGoodsInStockService goodsInStockService;
    @Autowired
    OverGoodsStockService goodsStockService;
    @Autowired
    OverGoodsOutStockService outStockService;
    @Autowired
    SysDataService sysDataService;
    @Autowired
    ProductOrderService productOrderService;
    @RequestMapping("/inStock")
    public ModelAndView instock(){
        ModelAndView mav = new ModelAndView("overGoodsInstock");
        List<Sysdata> goodsNameP = sysDataService.queryLocalList(102);
        List<Sysdata> specificationsP = sysDataService.queryLocalList(103);
        mav.addObject("goodsNameP",goodsNameP);
        mav.addObject("specificationsP",specificationsP);
        return mav;
    }
    @RequestMapping("/queryOverGoodsInStock")
    @ResponseBody
    public String queryOverGoodsInStock(Integer page, Integer limit){
        JSONObject object = goodsInStockService.queryOverGoodsInStock(page, limit);
        return object.toString();
    }
    @RequestMapping("/addOverGoodsInStock")
    @ResponseBody
    public String addOverGoodsInStock(String productNum, @SessionAttribute ShiroUser user, String testRemarks,int num){
        JSONObject object = goodsInStockService.addOverGoodsInStock(productNum, user.getUsername(), testRemarks,num);
        int i2 = productOrderService.updateOver(productNum);
        return object.toString();
    }
    @RequestMapping("/uploadInStock")
    @ResponseBody
    public String uploadInStock(@RequestParam("file") MultipartFile file, @SessionAttribute ShiroUser user){
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
                String columns[] = {"productNum","remarks","num"};
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
                    String remarks = map.get("remarks");
                    int num = Integer.parseInt(map.get("num"));
                    goodsInStockService.addOverGoodsInStock(productNum,user.getUsername(),remarks,num);
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
    @RequestMapping("/deleteOverGoodsInStock")
    @ResponseBody
    public String deleteOverGoodsInStock(String[] deList){
        int[] array = new int[deList.length-2];
        for (int i=1;i<deList.length-1;i++){
            array[i-1]= Integer.parseInt(deList[i]);
        }
        JSONObject object = goodsInStockService.deleteOverGoodsInStock(array);
        return object.toString();
    }
    @RequestMapping("/searchOverGoodsInStock")
    @ResponseBody
    public String searchOverGoodsInStock(String productNum, String goodsName, String specifications, String operator, String startDate, String endDate, Integer page, Integer limit){
        JSONObject object = goodsInStockService.searchOverGoodsInStock(productNum, goodsName, specifications, operator, startDate, endDate, page, limit);
        return object.toString();
    }
    @RequestMapping("/searchOverGoodsInStock2")
    @ResponseBody
    public String searchOverGoodsInStock2(String productNum){
        JSONObject object = goodsInStockService.searchOverGoodsInStock(productNum, "", "", "", "", "", 1, 10);
        String civil = (String) object.get("civil");
        if (civil.contains("民用")){
            object.put("count",0);
        }
        return object.toString();
    }
    @RequestMapping("/outStock")
    public ModelAndView outStock(){
        ModelAndView mav = new ModelAndView("overGoodsOutstock");
        List<Sysdata> goodsNameP = sysDataService.queryLocalList(102);
        List<Sysdata> specificationsP = sysDataService.queryLocalList(103);
        mav.addObject("goodsNameP",goodsNameP);
        mav.addObject("specificationsP",specificationsP);
        return mav;
    }
    @RequestMapping("/queryOverGoodsOutStock")
    @ResponseBody
    public String queryOverGoodsOutStock(Integer page, Integer limit){
        JSONObject object = outStockService.queryOverGoodsOutStock(page, limit);
        return object.toString();
    }
    @RequestMapping("/addOverGoodsOutStock")
    @ResponseBody
    public String addOverGoodsOutStock(String outStockNumbers,String productNum, String salenum, @SessionAttribute ShiroUser user, String getOutFactoryTime, int outStockNums, String outStockType, String outStockremarks,String logisticsInformation){
        JSONObject object = outStockService.addOverGoodsOutStock(outStockNumbers,productNum, salenum, user.getUsername(), getOutFactoryTime, outStockNums, outStockType,outStockremarks,logisticsInformation);
        return object.toString();
    }
    @RequestMapping("/deleteOverGoodsOutStock")
    @ResponseBody
    public String deleteOverGoodsOutStock(String[] deList){
        int[] array = new int[deList.length-2];
        for (int i=1;i<deList.length-1;i++){
            array[i-1]= Integer.parseInt(deList[i]);
        }
        int i = outStockService.deleteOverGoodsOutStock(array);
        JSONObject object = new JSONObject();
        object.put("success",i);
        return object.toString();
    }
    @RequestMapping("/uploadOutStock")
    @ResponseBody
    public String uploadOutStock(@RequestParam("file") MultipartFile file, @SessionAttribute ShiroUser user){
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
                String columns[] = {"outStockNumbers","productNum","salenum","outStockType","remarks","logisticsInformation"};
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
                    String outStockNumbers = map.get("outStockNumbers");
                    String salenum = map.get("salenum");
                    String outStockType = map.get("outStockType");
                    String remarks = map.get("remarks");
                    String logisticsInformation = map.get("logisticsInformation");
                    outStockService.addOverGoodsOutStock(outStockNumbers,productNum,salenum,user.getUsername(),"",1,outStockType,remarks,logisticsInformation);
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
    @RequestMapping("/searchOverGoodsOutStock")
    @ResponseBody
    public String searchOverGoodsOutStock(String outStockNumbers,String salenum, String productNameOrder, String productSpecificationsOrder, String outFactoryMan, String startDate, String endDate,Integer page,Integer limit){
        JSONObject object = outStockService.searchOverGoodsOutStock(outStockNumbers,salenum, productNameOrder, productSpecificationsOrder, outFactoryMan, startDate, endDate, page, limit);
        return object.toString();
    }
    @RequestMapping("/stock")
    public ModelAndView stock(){
        ModelAndView mav = new ModelAndView("overGoodsStock");
        List<Sysdata> goodsNameP = sysDataService.queryLocalList(102);
        List<Sysdata> specificationsP = sysDataService.queryLocalList(103);
        mav.addObject("goodsNameP",goodsNameP);
        mav.addObject("specificationsP",specificationsP);
        return mav;
    }
    @RequestMapping("/queryOverGoodsStock")
    @ResponseBody
    public String queryOverGoodsStock(Integer page, Integer limit){
        JSONObject object = goodsStockService.queryOverGoodsStock(page, limit);
        return object.toString();
    }
    @RequestMapping("/serchOverGoodsStock")
    @ResponseBody
    public String serchOverGoodsStock(String goodsName, String specifications, String intakeDirection, String operator, String startDate, String endDate,Integer page,Integer limit){
        JSONObject object = goodsStockService.serchOverGoodsStock(goodsName, specifications, intakeDirection, operator, startDate, endDate, page, limit);
        return object.toString();
    }
}
