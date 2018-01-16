package com.atwangsi.user.service.imp;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atwangsi.user.dao.TbIntegralRuleMapper;
import com.atwangsi.user.model.TbIntegralRule;
import com.atwangsi.user.model.TbInteractInterflow;
import com.atwangsi.user.service.IntegralService;

@Service
public class IntegralServiceImpl implements IntegralService {
	
	@Autowired
	private TbIntegralRuleMapper ruleMapper;

	@Override
	public List<TbIntegralRule> getAllIntegralRules() {
		// TODO Auto-generated method stub
		return this.ruleMapper.selectByExample(null);
	}

	@Override
	public List<TbIntegralRule> getRuleByRuleId(Integer ruleId) {
		// TODO Auto-generated method stub
		List<TbIntegralRule> list = new ArrayList<>();
		list.add(this.ruleMapper.selectByPrimaryKey(ruleId));
		return list;
	}

	@Override
	public Boolean deleteById(Integer ruleId) {
		// TODO Auto-generated method stub
		return this.ruleMapper.deleteByPrimaryKey(ruleId) > 0;
	}

	@Override
	public Boolean updateRule(TbIntegralRule rule) {
		// TODO Auto-generated method stub
		return this.ruleMapper.updateByPrimaryKeySelective(rule) > 0;
	}

	@Override
	public Boolean addRule(TbIntegralRule rule) {
		// TODO Auto-generated method stub
		return this.ruleMapper.insertSelective(rule) > 0;
	}

	//查询所有显示
	@Override
	public List<TbIntegralRule> selectwhole() {
		
		return this.ruleMapper.selectByExample(null);
	}

	@Override
	public List<TbInteractInterflow> getAllIntegralByRecord(Integer id) {
		// TODO Auto-generated method stub
		
		return null;
	}

}
