package com.common.system.service;


import com.alibaba.fastjson.JSONObject;

public interface TsetService {
    JSONObject queryall(Integer page, Integer limit);
    JSONObject queryone(int id);
}
