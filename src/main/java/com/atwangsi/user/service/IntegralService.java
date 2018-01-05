package com.atwangsi.user.service;

import java.util.List;

import com.atwangsi.user.model.TbIntegralRule;

public interface IntegralService {

	List<TbIntegralRule> getAllIntegralRules();

	List<TbIntegralRule> getRuleByRuleId(Integer ruleId);

	Boolean deleteById(Integer ruleId);

	Boolean updateRule(TbIntegralRule rule);

	Boolean addRule(TbIntegralRule rule);

}
