package com.common.system.util;

import com.alibaba.fastjson.JSONObject;
import com.ctg.ag.sdk.biz.AepDeviceManagementClient;
import com.ctg.ag.sdk.biz.aep_device_management.CreateDeviceRequest;
import com.ctg.ag.sdk.biz.aep_device_management.CreateDeviceResponse;

public class ChinaNetMeterUtils {
    public static JSONObject creatDevice(String imei,String deviceName){
        AepDeviceManagementClient client = AepDeviceManagementClient.newClient()
                .appKey("8emzK1K55Wa").appSecret("ypeqGKiH9G")
                .build();
        CreateDeviceRequest request = new CreateDeviceRequest();
        // set your request params here
        JSONObject result = new JSONObject();
        String productId="10055571";
        String bodyString = "{\"deviceName\":\"" + deviceName + "\",\"deviceSn\":\"\",\"imei\":\"" + imei + "\",\"operator\":\"admin\",\"other\": {\"autoObserver\":0,\"imsi\":\"\",\"pskValue\":\"\"},\"productId\":\"" + productId + "\"}";
        request.setParamMasterKey("7aa8433b3e234d25867aa7f22a8d60c2");
        request.setBody(bodyString.getBytes());
        try {
            CreateDeviceResponse createDeviceResponse = client.CreateDevice(request);
            System.err.println(createDeviceResponse);
            byte[] body = createDeviceResponse.getBody();
            String s = new String(body, "UTF-8");
            JSONObject jsonObject = JSONObject.parseObject(s);
            result= jsonObject.getJSONObject("result");
            String deviceId = (String) result.get("deviceId");
            System.err.println(deviceId);


        } catch (Exception e) {
            e.printStackTrace();
        }
// more requests
        client.shutdown();
        return result;
    }
}
