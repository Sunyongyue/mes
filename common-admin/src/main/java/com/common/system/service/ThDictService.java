package com.common.system.service;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import org.apache.ibatis.annotations.Param;

public interface ThDictService {
    JSONArray queryAll();
    JSONObject addThDict(int pid,String title,String goodsName,String goodsType,String goodsUnit,String goodsStock);
    JSONObject updateThDict(@Param("pid") int pid, @Param("title") String title, @Param("goodsName") String goodsName, @Param("goodsType") String goodsType, @Param("goodsUnit") String goodsUnit, @Param("goodsStock") String goodsStock, @Param("id") int id);
    JSONObject deleteThDict(@Param("id") int id,@Param("pid") int pid);
}
