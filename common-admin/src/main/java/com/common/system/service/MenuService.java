package com.common.system.service;

import com.common.system.entity.RcMenu;
import com.github.pagehelper.PageInfo;

import java.util.List;


public interface MenuService {

    int deleteByPrimaryKey(String id);

    int insert(RcMenu record) throws Exception;

    RcMenu selectByPrimaryKey(String id);

    RcMenu selectCode(String code);

    int update(RcMenu record);

    int updatePcode(String oldPcode,String newPcode);

    PageInfo<RcMenu> listForPage(Integer pageNum, Integer pageSize);

    List<RcMenu> getMenu();
    List<RcMenu> selectInIds(List<String> ids,List<Integer> wantLevel);

    List<RcMenu> getByParentId(String pId);
}
