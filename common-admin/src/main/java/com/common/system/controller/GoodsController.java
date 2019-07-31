package com.common.system.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.*;
import java.util.*;

@Controller
@RequestMapping("/goods")
public class GoodsController {
    @RequestMapping("/warehousing")
    public ModelAndView warehousing(){
        ModelAndView mav = new ModelAndView("goodsWarehousing");
        return mav;
    }
    @RequestMapping("/warehousingDate")
    @ResponseBody
    public String warehousingDate(){
        JSONObject object = new JSONObject();
        JSONArray array = new JSONArray();
        object.put("code",0);
        object.put("msg","");
        object.put("count",100);
        object.put("data",array);
        return object.toJSONString();
    }
    @RequestMapping("/outOfStock")
    public ModelAndView outOfStock(){
        ModelAndView mav = new ModelAndView("goodsOutOfStock");
        return mav;
    }
    @RequestMapping("/stock")
    public ModelAndView stock(){
        ModelAndView mav = new ModelAndView("goodsStock");
        return mav;
    }
    @RequestMapping("/regressionToStock")
    public ModelAndView regressionToStock(){
        ModelAndView mav = new ModelAndView("goodsRegressionToStock");
        return mav;
    }
   /* @RequestMapping("/upload")
    @ResponseBody
    public String upload(@RequestParam("file") MultipartFile file){
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
                String columns[] = {"name","age","score"};
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
                   *//* for (Map.Entry<String,String> entry : map.entrySet()) {
                        System.out.print(entry.getKey()+":"+entry.getValue()+",");
                    }*//*
                    String name = map.get("name");
                    String score = map.get("score");
                    String age = map.get("age");
                    System.out.println(name+age+score);
                    System.out.println();
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
*/
}
