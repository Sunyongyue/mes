package com.common.system.mapper;

import com.common.system.entity.Sysdata;
import com.common.system.entity.ThDict;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface SysdataMapper {
    List<Sysdata> queryAll();
    int addSysData(@Param("pid") int pid, @Param("title") String title, @Param("dataname") String dataname,@Param("operator") String operator);
    int updateSysData(@Param("pid") int pid,@Param("title") String title,@Param("dataname") String dataname,@Param("id") int id,@Param("operator") String operator,@Param("operatorTime") String operatorTime);
    int deleteSysData(@Param("id") int id);
    int selectCount(@Param("pid") int pid);
    List<Sysdata> queryLocal(@Param("pid") int pid);
}
