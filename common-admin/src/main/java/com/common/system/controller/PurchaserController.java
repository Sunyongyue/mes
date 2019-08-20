package com.common.system.controller;

import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.GoodsStock;
import com.common.system.service.SysPurchaserService;
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
import org.springframework.web.servlet.ModelAndView;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
public class PurchaserController {
    @Autowired
    SysPurchaserService purchaserService;
    @RequestMapping("/purchaser")
    public ModelAndView purchaser(){
        ModelAndView modelAndView = new ModelAndView("purchaser");
        return modelAndView;
    }
    @RequestMapping("/purchaserData")
    @ResponseBody
    public String purchaserData(Integer page,Integer limit){
        JSONObject object = purchaserService.queryAll(page, limit);
        return object.toJSONString();
    }
    @RequestMapping("/addPurchaser")
    @ResponseBody
    public String addPurchaser(String local, String purchaserNums, String purchaserName, String gasGroup, String contacts, String tel, String ipAddress, String ipPort, String localMore, String remarks, @SessionAttribute ShiroUser user){
        JSONObject object = purchaserService.addPurchaser(local, purchaserNums, purchaserName, gasGroup, contacts, tel, ipAddress, ipPort, "/", localMore, remarks, user.getUsername());
        return object.toJSONString();
    }
    @RequestMapping("/purchaser/upload")
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
                String columns[] = {"local","purchaserNums","purchaserName","gasGroup","contacts","tel","ipAddress","ipPort","localMore","remarks"};
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
                    String purchaserNums = map.get("purchaserNums");
                    String purchaserName = map.get("purchaserName");
                    String gasGroup = map.get("gasGroup");
                    String contacts = map.get("contacts");
                    String tel = map.get("tel");
                    String ipAddress = map.get("ipAddress");
                    String ipPort = map.get("ipPort");
                    String localMore = map.get("localMore");
                    String remarks = map.get("remarks");
                    purchaserService.addPurchaser(local,purchaserNums,purchaserName,gasGroup,contacts,tel,ipAddress,ipPort,"/",localMore,remarks,user.getUsername());
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
    @RequestMapping("/updatePurchaser")
    @ResponseBody
    public String updatePurchaser(int id, String local, String purchaserNums, String purchaserName, String gasGroup, String contacts, String tel, String ipAddress, String ipPort, String localMore, String remarks, @SessionAttribute ShiroUser user,String operatorTime){
        JSONObject object = purchaserService.updatePurchaser(id, local, purchaserNums, purchaserName, gasGroup, contacts, tel, ipAddress, ipPort, "/", localMore, remarks, user.getUsername(),operatorTime);
        return object.toJSONString();
    }
    @RequestMapping("/deletePurchaser")
    @ResponseBody
    public String deletePurchaser(String[] deList) {
        JSONObject object = purchaserService.deletePurchaser(deList);
        return object.toJSONString();
    }
    @RequestMapping("/search")
    @ResponseBody
    public String search(String purchaserNums,String local,String purchaserName){
        JSONObject object = purchaserService.searchPurchaser(purchaserNums, local, purchaserName);
        return object.toJSONString();
    }
    @RequestMapping("/local")
    @ResponseBody
    public String local(){
        JSONObject local = purchaserService.local();
        return local.toJSONString();
    }
}
