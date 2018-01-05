package com.atwangsi.user.dao;

import com.atwangsi.user.model.TbUserIntegralDetail;
import com.atwangsi.user.model.TbUserIntegralDetailExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbUserIntegralDetailMapper {
    long countByExample(TbUserIntegralDetailExample example);

    int deleteByExample(TbUserIntegralDetailExample example);

    int deleteByPrimaryKey(Integer integralId);

    int insert(TbUserIntegralDetail record);

    int insertSelective(TbUserIntegralDetail record);

    List<TbUserIntegralDetail> selectByExample(TbUserIntegralDetailExample example);

    TbUserIntegralDetail selectByPrimaryKey(Integer integralId);

    int updateByExampleSelective(@Param("record") TbUserIntegralDetail record, @Param("example") TbUserIntegralDetailExample example);

    int updateByExample(@Param("record") TbUserIntegralDetail record, @Param("example") TbUserIntegralDetailExample example);

    int updateByPrimaryKeySelective(TbUserIntegralDetail record);

    int updateByPrimaryKey(TbUserIntegralDetail record);
}