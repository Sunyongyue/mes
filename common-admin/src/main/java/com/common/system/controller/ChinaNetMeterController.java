package com.common.system.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.common.system.entity.*;
import com.common.system.mapper.ConfigMesMapper;
import com.common.system.mapper.MainTelMapper;
import com.common.system.service.ChinaNetMeterService;
import com.common.system.service.GasHistoryLogService;
import com.common.system.service.ProductOrderService;
import com.common.system.shiro.ShiroUser;
import com.common.system.util.ChianNetUtil;
import com.ctg.ag.sdk.biz.AepDeviceManagementClient;
import com.ctg.ag.sdk.biz.aep_device_management.CreateDeviceRequest;
import com.ctg.ag.sdk.biz.aep_device_management.CreateDeviceResponse;
import com.ctg.ag.sdk.biz.aep_device_management.DeleteDeviceRequest;
import com.jnthyb.protocol.decode.ProtocolDecodeMain;
import com.jnthyb.protocol.encode.ProtocolEncodeMain;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.*;


@Controller
@RequestMapping("/chinnet")
public class ChinaNetMeterController {
    @Autowired
    ChinaNetMeterService meterService;
    @Autowired
    MainTelMapper telMapper;
    @Autowired
    ConfigMesMapper mesMapper;
    @Autowired
    GasHistoryLogService gasHistoryLogService;
    @Autowired
    ProductOrderService productOrderService;
    private static final Map<String,String> pulseMap=new HashMap<String, String>(){{
        put("0.01","20");
        put("0.1","00");
        put("1","01");
        put("10","10");
        put("100","11");
    }};
    private static final Logger LOGGER = LoggerFactory.getLogger(ChinaNetMeterController.class);
    @RequestMapping("/product")
    public ModelAndView meterView(){
        ModelAndView mav = new ModelAndView("chinaNetMeter");

        return  mav;
    }
    @ResponseBody
    @RequestMapping("/meterNetDate")
    public String meterNetDate(Integer page ,Integer limit){
        JSONObject jsonObject = meterService.queryAllChinaNetMeter("", "", "", "", "", "", "", "", "", page, limit);
        return jsonObject.toJSONString();
    }
    @ResponseBody
    @RequestMapping("/meterNetAdd")
    public String meterNetAdd(String productOrderNum, String saleOrderNum, String telNum, String remarks, @SessionAttribute ShiroUser user ){
        String msg="";
        MainTel byTel = telMapper.findByTel(telNum);
        ChainNetMeter chainNetMeter = new ChainNetMeter();
        chainNetMeter.setProductOrderNum(productOrderNum);
        chainNetMeter.setSaleOrderNum(saleOrderNum);
        chainNetMeter.setTelNum(telNum);
        chainNetMeter.setRemarks(remarks);
        chainNetMeter.setImei(byTel.getMain_ImeiNum());
        chainNetMeter.setOperator(user.getUsername());
        AepDeviceManagementClient client = AepDeviceManagementClient.newClient()
                .appKey("8emzK1K55Wa").appSecret("ypeqGKiH9G")
                .build();
        CreateDeviceRequest request = new CreateDeviceRequest();
        // set your request params here
        String deviceName=telNum;
        String imei=byTel.getMain_ImeiNum();
        String productId="10055571";
        String bodyString = "{\"deviceName\":\"" + deviceName + "\",\"deviceSn\":\"\",\"imei\":\"" + imei + "\",\"operator\":\"admin\",\"other\": {\"autoObserver\":0,\"imsi\":\"\",\"pskValue\":\"\"},\"productId\":\"" + productId + "\"}";
        request.setParamMasterKey("7aa8433b3e234d25867aa7f22a8d60c2");
        request.setBody(bodyString.getBytes());
        try {
            CreateDeviceResponse createDeviceResponse = client.CreateDevice(request);

            byte[] body = createDeviceResponse.getBody();
            String s = new String(body, "UTF-8");
            JSONObject jsonObject = JSONObject.parseObject(s);
            JSONObject result = jsonObject.getJSONObject("result");
            String deviceId = (String) result.get("deviceId");
            msg= (String) result.get("msg");
            chainNetMeter.setId(deviceId);
            chainNetMeter.setMeterStatus("正常");
        } catch (Exception e) {
            e.printStackTrace();
        }
// more requests
        client.shutdown();
        int i =0;
        if (chainNetMeter.getId()!=null){
            i = meterService.addChinaNetMeter(chainNetMeter);
            productOrderService.updateOver(productOrderNum);
        }

        JSONObject jsonObject = new JSONObject();
        jsonObject.put("success",i);
        jsonObject.put("message",msg);
        return jsonObject.toString();
    }
    @ResponseBody
    @RequestMapping("/meterNetFind")
    public String meterNetFind(String productOrderNum, String saleOrderNum, String telNum, String startDate, String endDate, String meterStatus, Integer page, Integer limit){
        JSONObject jsonObject = meterService.queryAllChinaNetMeter(productOrderNum, saleOrderNum, telNum, "", startDate, endDate, meterStatus, "", "", page, limit);
        return jsonObject.toJSONString();
    }
    @ResponseBody
    @RequestMapping("/del")
    public String del(String [] deList){
        String[] array = new String[deList.length - 2];
        for (int i = 1; i < deList.length - 1; i++) {
            array[i - 1] = deList[i];
        }
        String ids="";
        for (String id:array) {
            ids+=id+",";
        }
        AepDeviceManagementClient client = AepDeviceManagementClient.newClient()
                .appKey("8emzK1K55Wa").appSecret("ypeqGKiH9G")
                .build();
        DeleteDeviceRequest request = new DeleteDeviceRequest();
        request.setParamMasterKey("7aa8433b3e234d25867aa7f22a8d60c2");
        request.setParamProductId("10055571");
        String str= ids.substring(0,ids.length()-1);
        request.setParamDeviceIds(str);
        System.out.println(str);
        try {
            System.out.println(client.DeleteDevice(request));
        } catch (Exception e) {
            e.printStackTrace();
        }
// more requests
        client.shutdown();
        int i = meterService.deleteChinaNetMeter(array);
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("success",i);
        return jsonObject.toString();
    }
    @ResponseBody
    @RequestMapping("/check")
    public String check(String id){
        ChainNetMeter chainNetMeter = meterService.queryOne(id);
        String productOrderNum = chainNetMeter.getProductOrderNum();
        String telNum = chainNetMeter.getTelNum();
        int i = mesMapper.selectCount(telNum);
        List<ProductOrder> productOrders = productOrderService.queryByProductNum(productOrderNum);
        String s = productOrders.get(0).getPulseEquivalent().replaceAll("m³/脉冲", "");
        Double aDouble = Double.valueOf(s);
        String teltro="0,不设置";
        String alarmVl="";
        String reserveVol="";
        String allowVol="";
         int rechargeLimit= productOrders.get(0).getUpperLimitOfRecharge();
        int overdrawAir= productOrders.get(0).getOverdrawAir();
        if (!productOrders.get(0).getTelProtocol().isEmpty()){
            teltro=productOrders.get(0).getTelProtocol();
        }
        int deviceType=0;
        if (productOrders.get(0).getGoodsName().contains("民用表")){
            deviceType=1;
        }
        int valveType=0;
        if(productOrders.get(0).getValveName().contains("球阀")){
            valveType=1;
            if (s.equals("1")){
                int alarm= productOrders.get(0).getAlarmSquare();
                int alarmVlInt= alarm/1000;
                alarmVl=alarmVlInt+"";
                int reserve=Integer.parseInt(productOrders.get(0).getReservedAir());
                int reserveInt=reserve/100;
                reserveVol=reserveInt+"";
                rechargeLimit=rechargeLimit/100000;
                allowVol=(overdrawAir/1000)+"";
            }else if (s.equals("10")||s.equals("100")){
                int alarm= productOrders.get(0).getAlarmSquare();
                int alarmVlInt= alarm/10000;
                alarmVl=alarmVlInt+"";
                int reserve=Integer.parseInt(productOrders.get(0).getReservedAir());
                int reserveInt=reserve/1000;
                reserveVol=reserveInt+"";
                rechargeLimit=rechargeLimit/1000000;
                allowVol=(overdrawAir/10000)+"";
            }
        }else {
            if (s.equals("0.01")||s.equals("0.1")){
                int alarm= productOrders.get(0).getAlarmSquare();
                alarmVl=alarm+"";
                reserveVol=productOrders.get(0).getReservedAir();
                allowVol=overdrawAir+"";
                if (s.equals("0.01")){
                    rechargeLimit=rechargeLimit/10;
                }else {
                    rechargeLimit=rechargeLimit/100;
                }

            }else if (s.equals("10")||s.equals("100")){
                int alarm= productOrders.get(0).getAlarmSquare();
                int alarmVlInt= alarm/1000;
                alarmVl=alarmVlInt+"";
                int reserve=Integer.parseInt(productOrders.get(0).getReservedAir());
                int reserveInt=reserve/10;
                reserveVol=reserveInt+"";
                rechargeLimit=rechargeLimit/10000;
                allowVol=(overdrawAir/100)+"";
            }else if (s.equals("1")){
                int alarm= productOrders.get(0).getAlarmSquare();
                int alarmVlInt= alarm/100;
                alarmVl=alarmVlInt+"";
                int reserve=Integer.parseInt(productOrders.get(0).getReservedAir());
                int reserveInt=reserve/10;
                reserveVol=reserveInt+"";
                rechargeLimit=rechargeLimit/1000;
                allowVol=(overdrawAir/10)+"";
            }
        }
        int signalSrc=0;
        if (productOrders.get(0).getSignalSource().equals("流量计信号(低有效)")){
            signalSrc=1;
        }else if (productOrders.get(0).getSignalSource().equals("流量计信号(高有效)")){
            signalSrc=2;
        }
        int payType=1;
        if (productOrders.get(0).getCharMethod().equals("气量")){
            payType=0;
        }
        SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
        Date now = new Date();
        Date afterDate = new Date(now .getTime() + 300000);
        String format = sdf.format(afterDate);
        mesMapper.addConfigMes(productOrderNum, "天和", "/", "221.229.214.202", 5683, "", "", "", "生产写配置", 1+i, "电信"+productOrders.get(0).getGoodsName(), 0, telNum, "0", format, 1440, "单一",productOrders.get(0).getCharMethod() , productOrders.get(0).getValveName(),  productOrders.get(0).getAlarmSquare(), 0,  productOrders.get(0).getReservedAir(),  productOrders.get(0).getUpperLimitOfRecharge(),  aDouble, "清除剩余累计", 25, "年", productOrders.get(0).getOverdrawAir(),  productOrders.get(0).getValveOpenTime(),  productOrders.get(0).getValveCloseTime(),  productOrders.get(0).getSignalSource(), 0, 0, 0, 0,1,0,0,0,teltro,"1");
        mesMapper.updateConfigMesStatus(telNum,i+1,2);
        ChianNetUtil.product(i+1,telNum,id,deviceType,valveType,alarmVl,reserveVol,rechargeLimit+"",pulseMap.get(s),allowVol,productOrders.get(0).getValveOpenTime()*10+"",productOrders.get(0).getValveCloseTime()*10+"",signalSrc+"",payType+"",format,teltro.substring(0,1));
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("success",i);
        jsonObject.put("message","msg");
        return jsonObject.toString();
    }
    @ResponseBody
    @RequestMapping("/clear")
    public String clear(String id){
        ChainNetMeter chainNetMeter = meterService.queryOne(id);
        String telNum = chainNetMeter.getTelNum();
        int i = mesMapper.selectCount(telNum);
        int j = mesMapper.addConfigMes(chainNetMeter.getProductOrderNum(), "天和", "/", "221.229.214.202", 5683, "", "", "", "清表写配置", 1+i, "电信控制器", 0, telNum, "0", "00:14:21", 1440, "单一","金额" , "普通阀门",  1, 0,  "1",  1,  1, "清除剩余累计", 25, "年", 1,  1,  1,  "1", 0, 0, 0, 0,1,0,0,0,"0,不设置","1");
        mesMapper.updateConfigMesStatus(telNum,i+1,2);
        ChianNetUtil.clear(i+1,telNum,chainNetMeter.getId());
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("success",i);
        jsonObject.put("message","msg");
        return jsonObject.toString();
    }
    @ResponseBody
    @RequestMapping("/clearEx")
    public String clearEx(String id){
        ChainNetMeter chainNetMeter = meterService.queryOne(id);
        String telNum = chainNetMeter.getTelNum();
        int i = mesMapper.selectCount(telNum);
        int j = mesMapper.addConfigMes(chainNetMeter.getProductOrderNum(), "天和", "/", "221.229.214.202", 5683, "", "", "", "清异常写配置", 1+i, "电信控制器", 0, telNum, "0", "00:14:21", 1440, "单一","金额" , "普通阀门",  1, 0,  "1",  1,  1, "清除剩余累计", 25, "年", 1,  1,  1,  "1", 0, 0, 0, 0,1,0,0,0,"0,不设置","1");
        mesMapper.updateConfigMesStatus(telNum,i+1,2);
        ChianNetUtil.clearEX(i+1,telNum,chainNetMeter.getId());
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("success",i);
        jsonObject.put("message","msg");
        return jsonObject.toString();
    }
    @ResponseBody
    @RequestMapping("/outGoodsC")
    public String outGoodsC(String id){
        ChainNetMeter chainNetMeter = meterService.queryOne(id);
        String productOrderNum = chainNetMeter.getProductOrderNum();
        String telNum = chainNetMeter.getTelNum();
        int i = mesMapper.selectCount(telNum);
        List<ProductOrder> productOrders = productOrderService.queryByProductNum(productOrderNum);
        String s = productOrders.get(0).getPulseEquivalent().replaceAll("m³/脉冲", "");
        Double aDouble = Double.valueOf(s);
        String teltro="0,不设置";
        String alarmVl="";
        String reserveVol="";
        String allowVol="";
        int rechargeLimit= productOrders.get(0).getUpperLimitOfRecharge();
        int overdrawAir= productOrders.get(0).getOverdrawAir();
        if (!productOrders.get(0).getTelProtocol().isEmpty()){
            teltro=productOrders.get(0).getTelProtocol();
        }
        int deviceType=0;
        if (productOrders.get(0).getGoodsName().contains("民用表")){
            deviceType=1;
        }
        int valveType=0;
        if(productOrders.get(0).getValveName().contains("球阀")){
            valveType=1;
            if (s.equals("1")){
                int alarm= productOrders.get(0).getAlarmSquare();
                int alarmVlInt= alarm/1000;
                alarmVl=alarmVlInt+"";
                int reserve=Integer.parseInt(productOrders.get(0).getReservedAir());
                int reserveInt=reserve/100;
                reserveVol=reserveInt+"";
                rechargeLimit=rechargeLimit/100000;
                allowVol=(overdrawAir/1000)+"";
            }else if (s.equals("10")||s.equals("100")){
                int alarm= productOrders.get(0).getAlarmSquare();
                int alarmVlInt= alarm/10000;
                alarmVl=alarmVlInt+"";
                int reserve=Integer.parseInt(productOrders.get(0).getReservedAir());
                int reserveInt=reserve/1000;
                reserveVol=reserveInt+"";
                rechargeLimit=rechargeLimit/1000000;
                allowVol=(overdrawAir/10000)+"";
            }
        }else {
            if (s.equals("0.01")||s.equals("0.1")){
                int alarm= productOrders.get(0).getAlarmSquare();
                alarmVl=alarm+"";
                reserveVol=productOrders.get(0).getReservedAir();
                allowVol=overdrawAir+"";
                if (s.equals("0.01")){
                    rechargeLimit=rechargeLimit/10;
                }else {
                    rechargeLimit=rechargeLimit/100;
                }

            }else if (s.equals("10")||s.equals("100")){
                int alarm= productOrders.get(0).getAlarmSquare();
                int alarmVlInt= alarm/1000;
                alarmVl=alarmVlInt+"";
                int reserve=Integer.parseInt(productOrders.get(0).getReservedAir());
                int reserveInt=reserve/10;
                reserveVol=reserveInt+"";
                rechargeLimit=rechargeLimit/10000;
                allowVol=(overdrawAir/100)+"";
            }else if (s.equals("1")){
                int alarm= productOrders.get(0).getAlarmSquare();
                int alarmVlInt= alarm/100;
                alarmVl=alarmVlInt+"";
                int reserve=Integer.parseInt(productOrders.get(0).getReservedAir());
                int reserveInt=reserve/10;
                reserveVol=reserveInt+"";
                rechargeLimit=rechargeLimit/1000;
                allowVol=(overdrawAir/10)+"";
            }
        }
        int signalSrc=0;
        if (productOrders.get(0).getSignalSource().equals("流量计信号(低有效)")){
            signalSrc=1;
        }else if (productOrders.get(0).getSignalSource().equals("流量计信号(高有效)")){
            signalSrc=2;
        }
        int payType=1;
        if (productOrders.get(0).getCharMethod().equals("气量")){
            payType=0;
        }
        Random random= new Random();
        String upTime="00:"+(random.nextInt(46)+13)+":"+(random.nextInt(46)+13);
        mesMapper.addConfigMes(productOrderNum, "天和", "/", "221.229.214.202", 5683, "", "", "", "发货写配置", 1+i, "电信"+productOrders.get(0).getGoodsName(), 0, telNum, "0",upTime , 1440, "单一",productOrders.get(0).getCharMethod() , productOrders.get(0).getValveName(),  productOrders.get(0).getAlarmSquare(), 0,  productOrders.get(0).getReservedAir(),  productOrders.get(0).getUpperLimitOfRecharge(),  aDouble, "清除剩余累计", 25, "年", productOrders.get(0).getOverdrawAir(),  productOrders.get(0).getValveOpenTime(),  productOrders.get(0).getValveCloseTime(),  productOrders.get(0).getSignalSource(), 0, 0, 0, 0,1,0,0,0,teltro,"1");
        mesMapper.updateConfigMesStatus(telNum,i+1,2);
        ChianNetUtil.product(i+1,telNum,id,deviceType,valveType,alarmVl,reserveVol,rechargeLimit+"",pulseMap.get(s),allowVol,productOrders.get(0).getValveOpenTime()*10+"",productOrders.get(0).getValveCloseTime()*10+"",signalSrc+"",payType+"",upTime,teltro.substring(0,1));
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("success",i);
        jsonObject.put("message","msg");
        return jsonObject.toString();
    }
    @ResponseBody
    @RequestMapping("/reviceIotDate")
    public String reviceIotDate(@RequestBody JSONObject msg){
        JSONObject payload = msg.getJSONObject("payload");
        String deviceId = (String) msg.get("deviceId");
        String apPdata = payload.getString("APPdata");
        byte[] decoded = Base64.getDecoder().decode(apPdata);
        String s = toHex(decoded);
//        System.out.println("接收到的消息base64解码后:" + s);
        LOGGER.info("接收到的消息base64解码后:"+s);
        String overMsg = ProtocolDecodeMain.decode(s);
        LOGGER.info("接收到的消息解码后:"+overMsg);
//        System.err.println("接收到的消息解码后:" + overMsg);
        JSONObject jsonObject = JSONObject.parseObject(overMsg);
    //  String deviceAddr = String.valueOf(jsonObject.get("deviceAddr"));
        // List<ConfigMes> configMes = mesMapper.queryForIot(deviceAddr);
        ChinaGasHistoryLog chinaGasHistoryLog = JSONObject.toJavaObject(jsonObject, ChinaGasHistoryLog.class);
        //发送校时指令
        if (chinaGasHistoryLog.getResType().equals("81")){
            UUID uuid = UUID.randomUUID();
            chinaGasHistoryLog.setId(uuid.toString());
            int insert = gasHistoryLogService.insert(chinaGasHistoryLog);
        }else if (chinaGasHistoryLog.getResType().equals("91")||chinaGasHistoryLog.getResType().equals("96")||chinaGasHistoryLog.getResType().equals("84")){
           if (chinaGasHistoryLog.getResFlag().contains("成功")){
               mesMapper.updateConfigMesStatus(chinaGasHistoryLog.getDeviceAddr()+"",chinaGasHistoryLog.getPktSer(),5);
           }else {
               mesMapper.updateConfigMesStatus(chinaGasHistoryLog.getDeviceAddr()+"",chinaGasHistoryLog.getPktSer(),6);
           }

        }
        ChianNetUtil.timing(jsonObject,deviceId);
        return "OK";
    }
    private static final char[] DIGITS
            = {'0', '1', '2', '3', '4', '5', '6', '7',
            '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public static final String toHex(byte[] data) {
        final StringBuffer sb = new StringBuffer(data.length * 2);
        for (int i = 0; i < data.length; i++) {
            sb.append(DIGITS[(data[i] >>> 4) & 0x0F]);
            sb.append(DIGITS[data[i] & 0x0F]);
        }
        return sb.toString();
    }
}
