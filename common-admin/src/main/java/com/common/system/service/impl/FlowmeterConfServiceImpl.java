package com.common.system.service.impl;

import com.common.system.entity.FlowmeterConf;
import com.common.system.mapper.FlowmeterConfMapper;
import com.common.system.service.FlowmeterConfService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class FlowmeterConfServiceImpl implements FlowmeterConfService {
    @Autowired
    FlowmeterConfMapper flowmeterConfMapper;
    @Override
    public List<FlowmeterConf> queryAllFlowmeterConf() {
        List<FlowmeterConf> flowmeterConfs = flowmeterConfMapper.queryAllFlowmeterConf();
        return flowmeterConfs;
    }

    @Override
    public FlowmeterConf queryOneByName(String flowmeterFac) {
        FlowmeterConf flowmeterConf = flowmeterConfMapper.queryOneByName(flowmeterFac);
        return flowmeterConf;
    }
}
