package com.common.system.controller;

import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.DistributNumber;
import com.common.system.entity.ProductOrder;
import com.common.system.entity.PubProduct;
import com.common.system.entity.SysPurchaser;
import com.common.system.service.*;
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
    OverGoodsOutStockService overGoodsOutStockService;
    @Autowired
    DistributNumberService numberService;
    @Autowired
    PubProductService pubProductService;
    @Autowired
    ConfigMesService configMesService;
    @Autowired
    ProductOrderService productOrderService;
    @Autowired
    DistributNumberService distributNumberService;
    @Autowired
    SysPurchaserService purchaserService;
    @RequestMapping("/distributNumber")
    public ModelAndView distributNumber(){
        ModelAndView mav = new ModelAndView("distributNumber");
        return mav;
    }
    @RequestMapping("/telNumsP")
    @ResponseBody
    public String telNumsP(String telNum){
        int i = numberService.queryExistTelNum(telNum);
        JSONObject object= new JSONObject();
        object.put("exist",i);
        return object.toString();
    }
    @RequestMapping("/controlP")
    @ResponseBody
    public String controlP(String controlMainBoardNum){
        int i = numberService.queryExistControl(controlMainBoardNum);
        JSONObject object= new JSONObject();
        object.put("exist",i);
        return object.toString();
    }
    @RequestMapping("/telP")
    @ResponseBody
    public String telP(String telMainBoardNum){
        int i = numberService.queryExistTel(telMainBoardNum);
        JSONObject object= new JSONObject();
        object.put("exist",i);
        return object.toString();
    }
    @RequestMapping("/productNum")
    @ResponseBody
    public String productNum(String productNum){
        int i = pubProductService.productNumExist(productNum);
        JSONObject object= new JSONObject();
        object.put("exist",i);
        return object.toString();
    }
    @RequestMapping("/vavleNum")
    @ResponseBody
    public String vavleNum(String vavleNum){
        int i = pubProductService.valveNUmsExist(vavleNum);
        JSONObject object= new JSONObject();
        object.put("exist",i);
        return object.toString();
    }
    @RequestMapping("/mainBoardNum")
    @ResponseBody
    public String mainBoardNum(String mainBoardNum){
        int i = pubProductService.controlMainBoardNumsExist(mainBoardNum);
        JSONObject object= new JSONObject();
        object.put("exist",i);
        return object.toString();
    }
    @RequestMapping("/fourP")
    @ResponseBody
    public String fourP(String fourMainBoardNum){
        int i = numberService.queryExistFour(fourMainBoardNum);
        JSONObject object= new JSONObject();
        object.put("exist",i);
        return object.toString();
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
        int i = productOrderService.updateStatus(productNum);
        if (i>0){
            JSONObject object = pubProductService.addPubProduct(productNum, valveNUms, controlMainBoardNums, user.getUsername(), "", testRemarks);
            return object.toString();
        }else {
            JSONObject object = new JSONObject();
            object.put("success",i);
            return object.toString();
        }

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
    public String updatePubProduct(int ids,String productNum,@SessionAttribute ShiroUser user){
        JSONObject object = pubProductService.updatePubProduct(ids, user.getUsername());
        int i2 = productOrderService.updateOver(productNum);
        PubProduct pubProduct = pubProductService.queryOneByids(ids);
        List<ProductOrder> productOrders = productOrderService.queryByProductNum(pubProduct.getProductNum());
        String s = productOrders.get(0).getPulseEquivalent().replaceAll("m³/脉冲", "");
        Double aDouble = Double.valueOf(s);
        List<DistributNumber> distributNumbers = distributNumberService.queryByNumber(pubProduct.getControlMainBoardNums());
        int i1 = configMesService.selectCount(distributNumbers.get(0).getTelNum());
        String vavleType=productOrders.get(0).getValveName();
        if (productOrders.get(0).getValveName().contains("快关")){
            vavleType="普通阀门(快关)";
        }else if(productOrders.get(0).getValveName().contains("慢关")){
            vavleType="普通阀门(慢关)";
        }else{
            vavleType="工业球阀";
        }
        int i = configMesService.addConfigMes(pubProduct.getProductNum(), "天和", "/", "39.98.86.240", 5600, "", "", "", "生产写配置", 1+i1, pubProduct.getGoodsName(), 0, distributNumbers.get(0).getTelNum(), "0", "0", 5, "单一",productOrders.get(0).getCharMethod() , vavleType,  productOrders.get(0).getAlarmSquare(), 0,  productOrders.get(0).getReservedAir(),  productOrders.get(0).getUpperLimitOfRecharge(),  aDouble, "清除剩余累计", 25, "年", productOrders.get(0).getOverdrawAir(),  productOrders.get(0).getValveOpenTime(),  productOrders.get(0).getValveCloseTime(),  productOrders.get(0).getSignalSource(), 0, 0, 0, 0,1,0,0,0,"不设置","1");
        return object.toString();
    }
    @RequestMapping("/overGoodsCheck")
    @ResponseBody
    public String overGoodsCheck(int id,String productNum,String controlMainBoardNums,@SessionAttribute ShiroUser user){
        List<ProductOrder> productOrders = productOrderService.queryByProductNum(productNum);
        String s = productOrders.get(0).getPulseEquivalent().replaceAll("m³/脉冲", "");
        Double aDouble = Double.valueOf(s);
        List<DistributNumber> distributNumbers = distributNumberService.queryByNumber(controlMainBoardNums);
        int i1 = configMesService.selectCount(distributNumbers.get(0).getTelNum());
        String vavleType=productOrders.get(0).getValveName();
        if (productOrders.get(0).getValveName().contains("快关")){
            vavleType="普通阀门(快关)";
        }else if(productOrders.get(0).getValveName().contains("慢关")){
            vavleType="普通阀门(慢关)";
        }else{
            vavleType="工业球阀";
        }
        int i2 = overGoodsOutStockService.outStockPeople(id,user.getUsername());
        int i = configMesService.addConfigMes(productNum, "天和", "/", "39.98.86.240", 5600, "", "", "", "检测写配置", 1+i1, productOrders.get(0).getGoodsName(), 0, distributNumbers.get(0).getTelNum(), "0", "0", 5, "单一",productOrders.get(0).getCharMethod() , vavleType,  productOrders.get(0).getAlarmSquare(), 0,  productOrders.get(0).getReservedAir(),  productOrders.get(0).getUpperLimitOfRecharge(),  aDouble, "清除剩余累计", 25, "年", productOrders.get(0).getOverdrawAir(),  productOrders.get(0).getValveOpenTime(),  productOrders.get(0).getValveCloseTime(),  productOrders.get(0).getSignalSource(), 0, 0, 0, 0,1,0,0,0,"不设置","1");
        JSONObject object = new JSONObject();
        object.put("success",i);
        return object.toString();
    }
    @RequestMapping("/overGoodsOutStock2")
    @ResponseBody
    public String overGoodsOutStock2(int id,String productNum,String controlMainBoardNums,String customerName,@SessionAttribute ShiroUser user ){
        List<ProductOrder> productOrders = productOrderService.queryByProductNum(productNum);
        String s = productOrders.get(0).getPulseEquivalent().replaceAll("m³/脉冲", "");
        Double aDouble = Double.valueOf(s);
        List<DistributNumber> distributNumbers = distributNumberService.queryByNumber(controlMainBoardNums);
        int i1 = configMesService.selectCount(distributNumbers.get(0).getTelNum());
        String vavleType=productOrders.get(0).getValveName();
        if (productOrders.get(0).getValveName().contains("快关")){
            vavleType="普通阀门(快关)";
        }else if(productOrders.get(0).getValveName().contains("慢关")){
            vavleType="普通阀门(慢关)";
        }else{
            vavleType="工业球阀";
        }
        SysPurchaser sysPurchaser= purchaserService.queryBypurchaserName(customerName);
        int i2 = overGoodsOutStockService.sendGoods(id,user.getUsername());
        int i = configMesService.addConfigMes(productNum, "天和", "/", sysPurchaser.getIpAddress(), Integer.parseInt(sysPurchaser.getIpPort()), "", "", "", "发货写配置", 1+i1, productOrders.get(0).getGoodsName(), 0, distributNumbers.get(0).getTelNum(), "0", "0", 5, "单一",productOrders.get(0).getCharMethod() , vavleType,  productOrders.get(0).getAlarmSquare(), 0,  productOrders.get(0).getReservedAir(),  productOrders.get(0).getUpperLimitOfRecharge(),  aDouble, "清除剩余累计", 25, "年", productOrders.get(0).getOverdrawAir(),  productOrders.get(0).getValveOpenTime(),  productOrders.get(0).getValveCloseTime(),  productOrders.get(0).getSignalSource(), 0, 0, 0, 0,1,0,0,0,"不设置","1");
        JSONObject object = new JSONObject();
        object.put("success",i);
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
    public String searchPubProduct(String productNum, String goodsName, String specifications, String operator, String startDate, String endDate,Integer page, Integer limit){
        JSONObject object = pubProductService.searchPubProduct(productNum, goodsName, specifications, operator, startDate, endDate,page, limit);
        return object.toString();
    }
}
