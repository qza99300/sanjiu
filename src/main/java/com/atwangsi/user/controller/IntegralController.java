package com.atwangsi.user.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.atwangsi.base.model.AppContant;
import com.atwangsi.base.model.ResultVO;
import com.atwangsi.user.model.TbIntegralRule;
import com.atwangsi.user.service.IntegralService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

/**
 * 积分模块
 * @author ou
 *
 */
@RequestMapping("integral")
@Controller
public class IntegralController {
	
	@Autowired
	private IntegralService integralService;
	
	/**
	 * 查询所有的积分规则
	 * @param pageNum
	 * @param pageSize
	 * @param ruleId  有值的话查询一个
	 * @return
	 */
	@RequestMapping("querry")
	@ResponseBody
	public PageInfo<TbIntegralRule> getAllIntegralRules(
			@RequestParam(value = "pn", defaultValue = "1") Integer pageNum,
			@RequestParam(value = ("ps"), defaultValue = "7") Integer pageSize,
			@RequestParam(value = "ruleId", required=false) Integer ruleId){
		
		PageHelper.startPage(pageNum, pageSize);
		
		if (ruleId == null) {
			return new PageInfo<>(this.integralService.getAllIntegralRules(),AppContant.PAGE_SIZE);
		}
		
		return new PageInfo<>(this.integralService.getRuleByRuleId(ruleId), AppContant.PAGE_SIZE);
		
	}
	
	/**
	 * 删除
	 * @param ruleId
	 * @return
	 */
	@RequestMapping("delete")
	@ResponseBody
	public ResultVO<Object> deleteById(@RequestParam("ruleId") Integer ruleId){
		
		if (ruleId == null) {
			return ResultVO.fail("提交异常，请联系技术管理！", null, null);
		}
		
		Boolean bool = this.integralService.deleteById(ruleId);
		
		if (bool) {
			return ResultVO.success("删除成功", null, null);
		}

		return ResultVO.fail("删除失败，请重新删除！", null, null);
	}
	
	/**
	 * 修改
	 * @param rule
	 * @return
	 */
	@RequestMapping("update")
	@ResponseBody
	public ResultVO<Object> updateRule(TbIntegralRule rule){
		if (rule.getRuleId() == null) {
			return ResultVO.fail("提交异常，请联系技术管理！", null, null);
		}
		
		Boolean bool = this.integralService.updateRule(rule);
		
		if (bool) {
			return ResultVO.success("修改成功", null, null);
		}

		return ResultVO.fail("修改失败，请重新修改！", null, null);
	}
	
	/**
	 * 添加
	 * @param rule
	 * @return
	 */
	@RequestMapping("add")
	@ResponseBody
	public ResultVO<Object> addRule(TbIntegralRule rule){
		
		rule.setCreateDate(new Date());
		Boolean bool = this.integralService.addRule(rule);
		if (bool) {
			return ResultVO.success("添加成功", null, null);
		}

		return ResultVO.fail("添加失败，请重新添加！", null, null);
		
	}

}
