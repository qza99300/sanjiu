package com.atwangsi.user.dao;

import com.atwangsi.user.model.TbIntegralRule;
import com.atwangsi.user.model.TbIntegralRuleExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbIntegralRuleMapper {
    long countByExample(TbIntegralRuleExample example);

    int deleteByExample(TbIntegralRuleExample example);

    int deleteByPrimaryKey(Integer ruleId);

    int insert(TbIntegralRule record);

    int insertSelective(TbIntegralRule record);

    List<TbIntegralRule> selectByExample(TbIntegralRuleExample example);

    TbIntegralRule selectByPrimaryKey(Integer ruleId);

    int updateByExampleSelective(@Param("record") TbIntegralRule record, @Param("example") TbIntegralRuleExample example);

    int updateByExample(@Param("record") TbIntegralRule record, @Param("example") TbIntegralRuleExample example);

    int updateByPrimaryKeySelective(TbIntegralRule record);

    int updateByPrimaryKey(TbIntegralRule record);
}