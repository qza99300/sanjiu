package com.atwangsi.user.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.atwangsi.base.model.AppContant;
import com.atwangsi.base.model.ResultVO;
import com.atwangsi.user.model.TbIntegralRule;
import com.atwangsi.user.model.TbInteractInterflow;
import com.atwangsi.user.service.IntegralService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

/**
 * 积分规则模块
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
	 * 修改积分规则
	 * @param json
	 * @return
	 */
	@RequestMapping(value="updates", produces = { "application/json; charset=utf-8" })
	@ResponseBody
	public String updates(String json) {
		Map<String, String> lists = new HashMap<String, String>();// 存放结果
		
		List<HashMap> list = JSON.parseArray(json, HashMap.class);
		Boolean bool=false;
		for (int i = 0; i < list.size(); i++) {
			TbIntegralRule tr=new TbIntegralRule();
			tr.setRuleId(Integer.valueOf(list.get(i).get("ruleId").toString()));
			tr.setRuleNum(Integer.valueOf(list.get(i).get("ruleNum").toString()));
			bool = this.integralService.updateRule(tr);
			
		}
		if(bool) {
			lists.put("msg", "修改成功!");
		}else {
			lists.put("msg", "修改失败!");
		}
		return JSONArray.toJSONString(lists);// 转换为json格式
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
	
	
	/**
	 * 查询所有积分规则
	 * @return
	 */
	@RequestMapping(value="updateshow",produces = { "application/json; charset=utf-8" })
	@ResponseBody
	public String updateshow() {
		JSONArray jsonData = new JSONArray();
		JSONObject jo = null;
		
		List<TbIntegralRule> tbIntegralRule=integralService.selectwhole();
		for (TbIntegralRule tr : tbIntegralRule) {
			jo = new JSONObject();
			jo.put("ruleId", tr.getRuleId());
			jo.put("ruleName", tr.getRuleName());
			jo.put("ruleNum", tr.getRuleNum());
			jsonData.add(jo);
		}
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("rows", jsonData);// 记录
		System.out.println(jsonObject.toJSONString());
		return jsonObject.toJSONString();
	}
	
	


}
