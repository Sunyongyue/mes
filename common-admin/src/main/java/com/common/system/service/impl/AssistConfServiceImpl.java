package com.common.system.service.impl;

import com.common.system.entity.AssistConf;
import com.common.system.mapper.AssistConfMapper;
import com.common.system.service.AssistConfService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class AssistConfServiceImpl implements AssistConfService {
    @Autowired
    AssistConfMapper assistConfMapper;
    @Override
    public List<AssistConf> queryByConfPulse(String valveSupplier, String valveName, String valveSpecifications, String ConfPulse) {
        List<AssistConf> assistConfs = assistConfMapper.queryByConfPulse(valveSupplier, valveName, valveSpecifications, ConfPulse);
        return assistConfs;
    }
}
