package com.common.system.mapper;

import com.common.system.entity.SysMaterialManagement;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
@Mapper
public interface SysMaterialManagementMapper {
    List<SysMaterialManagement> queryAll();
    int addSysMaterial(@Param("pid") int pid,@Param("title") String title,@Param("factory") String factory,@Param("materialtype") String materialtype,@Param("materialName") String materialName,@Param("materialSpecification") String materialSpecification,@Param("remarks") String remarks,@Param("operator") String operator);
    int updateSysMaterial(@Param("pid") int pid,@Param("title") String title,@Param("factory") String factory,@Param("materialtype") String materialtype,@Param("materialName") String materialName,@Param("materialSpecification") String materialSpecification,@Param("remarks") String remarks,@Param("operator") String operator,@Param("id") int id);
    int deleteSysMaterial(@Param("id") int id);
    List<SysMaterialManagement> queryByPid(@Param("pid") int pid);
    List<SysMaterialManagement> querygoodsType(@Param("factory") String factory);
}
