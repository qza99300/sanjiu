package com.atwangsi.user.service;

import java.util.List;

import com.atwangsi.user.model.TbIntegralRule;
import com.atwangsi.user.model.TbInteractInterflow;

public interface IntegralService {

	List<TbIntegralRule> getAllIntegralRules();

	List<TbIntegralRule> getRuleByRuleId(Integer ruleId);

	Boolean deleteById(Integer ruleId);

	Boolean updateRule(TbIntegralRule rule);

	Boolean addRule(TbIntegralRule rule);
	
	//修改显示
	List<TbIntegralRule> selectwhole();

	List<TbInteractInterflow> getAllIntegralByRecord(Integer id);

}
