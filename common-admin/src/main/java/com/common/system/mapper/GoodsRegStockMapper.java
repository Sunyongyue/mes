package com.common.system.mapper;
import com.common.system.entity.GoodsRegStock;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import java.util.List;
@Mapper
public interface GoodsRegStockMapper {
    List<GoodsRegStock> queryGoodsRegStock();
    int addGoodsRegStock(@Param("goodsType") String goodsType,@Param("goodsName") String goodsName,@Param("specifications") String specifications,@Param("status") String status,@Param("reason") String reason, @Param("department")String department, @Param("nums") int nums,@Param("supplierName") String supplierName,@Param("remarks") String remarks,@Param("operator") String operator,@Param("local") String local);
    int updateGoodsRegStock(@Param("goodsType") String goodsType,@Param("goodsName") String goodsName,@Param("specifications") String specifications,@Param("status") String status,@Param("reason") String reason, @Param("department")String department,@Param("nums") int nums,@Param("supplierName") String supplierName,@Param("remarks") String remarks,@Param("operator") String operator,@Param("local") String local,@Param("id") int id);
    int deleteGoodsRegStock(@Param("id") int id);
    List<GoodsRegStock>searchGoodsRegStock(@Param("local") String local , @Param("goodsType") String goodsType, @Param("goodsName") String goodsName, @Param("specifications") String specifications, @Param("startDate") String startDate, @Param("supplierName") String supplierName, @Param("endDate") String endDate);
}
