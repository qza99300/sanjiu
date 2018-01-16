package com.atwangsi.user.dao;

import com.atwangsi.user.model.TbIntegralProduct;
import com.atwangsi.user.model.TbIntegralProductExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbIntegralProductMapper {
    long countByExample(TbIntegralProductExample example);

    int deleteByExample(TbIntegralProductExample example);

    int deleteByPrimaryKey(Integer productId);

    int insert(TbIntegralProduct record);

    int insertSelective(TbIntegralProduct record);

    List<TbIntegralProduct> selectByExample(TbIntegralProductExample example);

    TbIntegralProduct selectByPrimaryKey(Integer productId);

    int updateByExampleSelective(@Param("record") TbIntegralProduct record, @Param("example") TbIntegralProductExample example);

    int updateByExample(@Param("record") TbIntegralProduct record, @Param("example") TbIntegralProductExample example);

    int updateByPrimaryKeySelective(TbIntegralProduct record);

    int updateByPrimaryKey(TbIntegralProduct record);
}