package com.atwangsi.user.dao;

import com.atwangsi.user.model.TbExchangeOrder;
import com.atwangsi.user.model.TbExchangeOrderExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbExchangeOrderMapper {
    long countByExample(TbExchangeOrderExample example);

    int deleteByExample(TbExchangeOrderExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbExchangeOrder record);

    int insertSelective(TbExchangeOrder record);

    List<TbExchangeOrder> selectByExample(TbExchangeOrderExample example);

    TbExchangeOrder selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbExchangeOrder record, @Param("example") TbExchangeOrderExample example);

    int updateByExample(@Param("record") TbExchangeOrder record, @Param("example") TbExchangeOrderExample example);

    int updateByPrimaryKeySelective(TbExchangeOrder record);

    int updateByPrimaryKey(TbExchangeOrder record);
}