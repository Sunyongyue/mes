package com.common.system.controller;

import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.MainTel;
import com.common.system.service.MainTelSerice;
import com.xiaoleilu.hutool.poi.excel.ExcelReader;
import com.xiaoleilu.hutool.poi.excel.ExcelUtil;
import javafx.scene.input.DataFormat;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/cardNum")
public class DistributeCardNumController {
/*protected static final Logger logger=LoggerFactory.getLogger(DistributeCardNumController.class);*/
    @Autowired
    MainTelSerice mainTelSerice;
    @RequestMapping("/data")
    public ModelAndView data(){
        ModelAndView modelAndView = new ModelAndView("distributCardNum");
        return modelAndView;
    }
    @RequestMapping("/uiDate")
    @ResponseBody
    public String uiDate(Integer page,Integer limit){
        JSONObject object = mainTelSerice.queryAllMainTel(page, limit);
        return object.toString();
    }
    @RequestMapping("/searchMainTe")
    @ResponseBody
    public String searchMainTe(String main_DeviceAddr, String main_Iphone, String main_ImeiNum, String startDate, String endDate, Integer page, Integer limit){

        JSONObject object = mainTelSerice.searchMainTe(main_DeviceAddr, main_Iphone, main_ImeiNum, startDate, endDate, page, limit);
        return object.toString();

    }
    @RequestMapping("/addMainTel")
    @ResponseBody
    public String addMainTel(@RequestParam("file") MultipartFile file) throws IOException {
        InputStream in = file.getInputStream();
        ExcelReader reader = ExcelUtil.getReader(in);
        List<MainTel> readAll = reader.readAll(MainTel.class);
        JSONObject object = mainTelSerice.addMainTel(readAll);

        return object.toString();
    }
    @RequestMapping("/deleteMainTel")
    @ResponseBody
    public String deleteMainTel(String[] deList){
        int[] array = new int[deList.length - 2];
        for (int i = 1; i < deList.length - 1; i++) {
            array[i - 1] = Integer.parseInt(deList[i]);
        }
        JSONObject object = mainTelSerice.deleteMainTel(array);
        return object.toString();
    }
}
