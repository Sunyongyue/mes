package com.common.system.controller;
import com.alibaba.fastjson.JSONObject;
import com.ctg.ag.sdk.biz.AepDeviceCommandClient;
import com.ctg.ag.sdk.biz.AepDeviceManagementClient;

import com.ctg.ag.sdk.biz.aep_device_command.CreateCommandRequest;
import com.ctg.ag.sdk.biz.aep_device_management.CreateDeviceRequest;
import com.ctg.ag.sdk.biz.aep_device_management.CreateDeviceResponse;
import com.ctg.ag.sdk.biz.aep_device_management.DeleteDeviceRequest;
import com.jnthyb.protocol.decode.ProtocolDecodeMain;
import com.jnthyb.protocol.encode.ProtocolEncodeMain;
import org.junit.Test;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;


public class IotDataController {
    @Test
    public void createDevice(){
        AepDeviceManagementClient client = AepDeviceManagementClient.newClient()
                .appKey("8emzK1K55Wa").appSecret("ypeqGKiH9G")
                .build();
        CreateDeviceRequest request = new CreateDeviceRequest();
        // set your request params here
        String deviceName="808";
        String imei="861050040029764";
        String productId="10051795";
        String bodyString = "{\"deviceName\":\"" + deviceName + "\",\"deviceSn\":\"\",\"imei\":\"" + imei + "\",\"operator\":\"admin\",\"other\": {\"autoObserver\":0,\"imsi\":\"\",\"pskValue\":\"\"},\"productId\":\"" + productId + "\"}";
        request.setParamMasterKey("5ed39697e9334666a2748249138f1393");
        request.setBody(bodyString.getBytes());
        try {
            CreateDeviceResponse createDeviceResponse = client.CreateDevice(request);
            System.err.println(createDeviceResponse);
            byte[] body = createDeviceResponse.getBody();
            String s = new String(body, "UTF-8");
            JSONObject jsonObject = JSONObject.parseObject(s);
            JSONObject result = jsonObject.getJSONObject("result");
            String deviceId = (String) result.get("deviceId");
            System.err.println(deviceId);


        } catch (Exception e) {
            e.printStackTrace();
        }
// more requests
        client.shutdown();
    }
@Test
    public void deleteDevice(){
        AepDeviceManagementClient client = AepDeviceManagementClient.newClient()
                .appKey("8emzK1K55Wa").appSecret("ypeqGKiH9G")
                .build();

        DeleteDeviceRequest request = new DeleteDeviceRequest();
        request.setParamMasterKey("7aa8433b3e234d25867aa7f22a8d60c2");
        request.setParamProductId("10055571");
        request.setParamDeviceIds(123);
        try {
            System.out.println(client.DeleteDevice(request));
        } catch (Exception e) {
            e.printStackTrace();
        }

// more requests

        client.shutdown();
    }
    @Test
    public void configMes(){


        Map<String, Object> params = new HashMap<String, Object>();
// 数据类型（11：读配置信息）（剩余的待定。。）
        params.put("dataType", 11);
// 包序号（字符串/数字都行）
        params.put("pktSer", 350);
// 设备类型（字符串/数字都行）(0:集中器，1:集中器，2:民用表)
        params.put("deviceType", 0);
// 公司代码（字符串/数字都行）
        params.put("companyNum", 0);
// 设备地址（字符串/数字都行）
        params.put("deviceAddr", 1004);
// 用户地址（字符串/数字都行）
        params.put("userId", 0);
// 编码
// String res = ProtocolEncodeMain.encode(params, 0); //使用旧密钥(即:出厂密钥)
        String res = ProtocolEncodeMain.encode(params, 0); //使用新密钥(即:开户密钥)
        System.out.println(res);

        AepDeviceCommandClient client = AepDeviceCommandClient.newClient()
                .appKey("8emzK1K55Wa").appSecret("ypeqGKiH9G")
                .build();
        CreateCommandRequest request = new CreateCommandRequest();
// set your request params here
        request.setParamMasterKey("7aa8433b3e234d25867aa7f22a8d60c2");	// single value
        String deviceId="ff32d365ae27483588e19ea94acf7775";
        String productId="10055571";
        String bodyString = "{\"content\": " +
                "{\"dataType\": 2," +
                " \"payload\":\"" + res + "\"" +
                "}," +
                "  \"deviceId\": \"" + deviceId + "\"," +
                "  \"operator\": \"admin\"," +
                "  \"productId\": " + productId + "," +
                "  \"ttl\": 0," +
                "  \"level\": 1" +
                "}";
     // request.addParamMasterKey(MasterKey);	// or multi values
        System.out.println(bodyString);
      request.setBody(bodyString.getBytes());
        try {
            System.out.println(client.CreateCommand(request));
        } catch (Exception e) {
            e.printStackTrace();
        }

// more requests

        client.shutdown();
    }
    @Test
    public void analyze(){
        String s="0AA000E7704000000000003EC0000000000100001000010100002800280101002500006400000320011D000008340145DDE5D6CA163300000005152300000000704D74523664317539634577502B73572700000AF0016300000DAC01817FFFFFFF01A900000000000001000100258008010001CCECBACD337E";
        String overMsg = ProtocolDecodeMain.decode(s);
        System.out.println(overMsg);
    }
}
