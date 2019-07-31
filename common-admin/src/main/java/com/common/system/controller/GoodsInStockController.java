package com.common.system.controller;

import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.GoodsStock;
import com.common.system.service.GoodsInStockService;
import com.common.system.service.GoodsStockService;
import com.common.system.shiro.ShiroUser;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.time.DateUtils;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/goodsInStock")
public class GoodsInStockController {
    @Autowired
    GoodsInStockService goodsInStockService;
    @Autowired
    GoodsStockService goodsStockService;
    @RequestMapping("/goodsInStockDate")
    @ResponseBody
    public String goodsInStockDate(Integer page, Integer limit){
        JSONObject object = goodsInStockService.queryGoodsInStock(page, limit);
        return object.toJSONString();
    }
    @RequestMapping("/addGoodsInStock")
    @ResponseBody
    public String addGoodsInStock(String pipelineNumberStart,String pipelineNumberEnd, String local, String goodsType, String goodsName, String specifications, String goodsProduceDate, int goodsNums, String supplierName, String pipelineNumber, String operators, String cardNums, String IMSI, String IMEI, String ICCID, String remarks, @SessionAttribute ShiroUser user){
        if (pipelineNumberStart.length()>9&&pipelineNumberEnd.length()>9){
            String substring1 = pipelineNumberStart.substring(10);
            int start = Integer.parseInt(substring1);
            String substring2 = pipelineNumberStart.substring(0,10);
            String substring = pipelineNumberEnd.substring(10);
            int end = Integer.parseInt(substring);
            int i1=0;
            List<GoodsStock> goodsStocks = goodsStockService.queryExist(local, supplierName, goodsType, goodsName, specifications);
            if (goodsStocks.isEmpty()){
                i1=goodsStockService.addGoodsStock(local, supplierName, goodsType, goodsName, specifications, goodsProduceDate, "原材料", goodsNums, remarks, user.getUsername());
            }else{
                i1 = goodsStockService.updateGoodsStock(local, supplierName, goodsType, goodsName, specifications, goodsNums, user.getUsername());
            }

            if (i1>0){
                int j =0;
                for (int i=start;i<=end;i++){
                    j++;

                    goodsInStockService.addGoodsInStock(local, goodsType, goodsName, specifications, goodsProduceDate, "正常", goodsNums, supplierName, substring2+intToString(i), operators, cardNums, IMSI, IMEI, ICCID, remarks, user.getUsername());
                }
                JSONObject object = new JSONObject();
                object.put("success",1);
                return object.toJSONString();
            }else {
                JSONObject object = new JSONObject();
                object.put("success",-1);
                return object.toJSONString();
            }
        }else{
            JSONObject object = new JSONObject();
            object.put("success",-1);
            return object.toJSONString();
        }

    }
    @RequestMapping("/updateGoodsInStock")
    @ResponseBody
    public String updateGoodsInStock(int pipelineNumberStart,int pipelineNumberEnd,int id, String local, String goodsType, String goodsName, String specifications, String goodsProduceDate, String status, int goodsNums, String supplierName, String pipelineNumber, String operators, String cardNums, String IMSI, String IMEI, String ICCID, String remarks, @SessionAttribute ShiroUser user){
        int j =0;

        for (int i=pipelineNumberStart;i<=pipelineNumberEnd;i++) {
            j++;
            String s = String.valueOf(i);
            goodsInStockService.updateGoodsInStock(id, local, goodsType, goodsName, specifications, goodsProduceDate, "正常", goodsNums, supplierName, s, operators, cardNums, IMSI, IMEI, ICCID, remarks, user.getUsername());
        }
        JSONObject object = new JSONObject();
        object.put("success",1);
        return object.toJSONString();
    }
    @RequestMapping("/deleteGoodsInStock")
    @ResponseBody
    public String deleteGoodsInStock(String[] deList){
        JSONObject object = goodsInStockService.deleteGoodsInStock(deList);
        return object.toJSONString();
    }

    @RequestMapping("/searchGoodsInStock")
    @ResponseBody
    public String searchGoodsInStock(String local, String goodsType, String goodsName, String specifications, String startDate, String supplierName, String endDate, Integer page, Integer limit){
        JSONObject object = goodsInStockService.searchGoodsInStock(local, goodsType, goodsName, specifications, startDate, supplierName, endDate, page, limit);
        return object.toJSONString();
    }
    @RequestMapping("/upload")
    @ResponseBody
    public String upload(@RequestParam("file") MultipartFile file,@SessionAttribute ShiroUser user){
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
                String columns[] = {"local","supplierName","goodsType","goodsName","specifications","goodsProduceDate","goodsNums","pipelineNumber","operators","cardNums","IMSI","IMEI","ICCID","remarks"};
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
                    String local = map.get("local");
                    String supplierName = map.get("supplierName");
                    String goodsType = map.get("goodsType");
                    String goodsName = map.get("goodsName");
                    String specifications = map.get("specifications");
                    String goodsProduceDate = map.get("goodsProduceDate");
                    String goodsProduceDate1 = StringUtils.substringBefore(goodsProduceDate, ".");
                    int i = Integer.parseInt(goodsProduceDate1);
                    /*日期转换*/
                    Calendar c = new GregorianCalendar(1900,0,-1);
                    Date d = c.getTime();
                    Date date = DateUtils.addDays(d, i);
                    SimpleDateFormat sp = new SimpleDateFormat("yyyy-MM-dd");
                    String format = sp.format(date);
                    /*日期转换*/
                    String goodsNums = map.get("goodsNums");
                    String s = StringUtils.substringBefore(goodsNums, ".");
                    int nums = Integer.parseInt(s);
                    String pipelineNumber = map.get("pipelineNumber");
                    String operators = map.get("operators");
                    String cardNums = map.get("cardNums");
                    String imsi = map.get("IMSI");
                    String imei = map.get("IMEI");
                    String iccid = map.get("ICCID");
                    String remarks = map.get("remarks");
                    List<GoodsStock> goodsStocks = goodsStockService.queryExist(local, supplierName, goodsType, goodsName, specifications);
                    int i1=0;
                    if (goodsStocks.isEmpty()){
                        i1=goodsStockService.addGoodsStock(local, supplierName, goodsType, goodsName, specifications, format, "原材料", nums, remarks, user.getUsername());
                    }else{
                        i1 = goodsStockService.updateGoodsStock(local, supplierName, goodsType, goodsName, specifications, nums, user.getUsername());
                    }
                    if (i1>0){
                       goodsInStockService.addGoodsInStock(local, goodsType, goodsName, specifications, format, "正常", nums, supplierName, pipelineNumber, operators, cardNums, imsi, imei, iccid, remarks, user.getUsername());
                    }
                    System.out.println(local+supplierName+goodsType+goodsName+specifications+format+goodsNums+pipelineNumber+operators+cardNums+imsi+imei+iccid+remarks);
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
    public String intToString(int i){
        if (i<10){
            return ("00000"+i);
        }else if (i>=10&&i<100){
            return ("0000"+i);
        }else if (i>=100&&i<1000){
            return "000"+i;
        }else if(i>=1000&&i<10000){
            return "00"+i;
        }else if (i>=10000&&i<100000){
            return "0"+i;
        }else{
            return ""+i;
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

}
