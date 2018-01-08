package com.atwangsi.user.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.atwangsi.base.model.ResultVO;
import com.atwangsi.user.model.TbActivityApply;
import com.atwangsi.user.service.ApplyService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("apply")
public class ApplyController {
	
	@Autowired
	private ApplyService applyService;

	/**
	 * 根据用户id查询所有的报名信息
	 * @param pageNum
	 * @param pageSize
	 * @param userId
	 * @return
	 */
	@RequestMapping("userId")
	@ResponseBody
	public PageInfo<TbActivityApply> querryByUserId(
			@RequestParam(value = "pn", defaultValue = "1") Integer pageNum,
			@RequestParam(value = "ps", defaultValue = "7") Integer pageSize,
			@RequestParam("userId") Integer userId){
		
		PageHelper.startPage(pageNum, pageSize);
		
		return new PageInfo<>(this.applyService.querryByUserId(userId));
		
	}
	/**
	 * 根据活动id查询所有报名信息
	 * @param pageNum
	 * @param pageSize
	 * @param activityId
	 * @return
	 */
	@RequestMapping("activityId")
	@ResponseBody
	public PageInfo<TbActivityApply> querryByActivityId(
			@RequestParam(value = "pn", defaultValue = "1") Integer pageNum,
			@RequestParam(value = "ps", defaultValue = "7") Integer pageSize,
			@RequestParam("activityId") Integer activityId){
		
		PageHelper.startPage(pageNum, pageSize);
		
		return new PageInfo<>(this.applyService.querryByActivityId(activityId));
		
	}
	
	/**
	 * applyId 如果为空，那么查询所有报名信息
	 * 根据报名id查询报名信息
	 * @param pageNum
	 * @param pageSize
	 * @param applyId 
	 * @return
	 */
	@RequestMapping("querry")
	@ResponseBody
	public PageInfo<TbActivityApply> querry(
			@RequestParam(value = "pn", defaultValue = "1") Integer pageNum,
			@RequestParam(value = "ps", defaultValue = "7") Integer pageSize,
			@RequestParam(value="applyId",required=false) Integer applyId){
		
		PageHelper.startPage(pageNum, pageSize);
		
		if (applyId == null) {
			return new PageInfo<>(this.applyService.querryAll());
		}
		
		return new PageInfo<>(this.applyService.querryOne(applyId));
	}
	
	/**
	 * 添加报名的信息
	 * @param activityApply
	 * @return
	 */
	@RequestMapping("add")
	@ResponseBody
	public ResultVO<Object> addApply(TbActivityApply activityApply){
		
		activityApply.setCreateDate(new Date());
		
		Boolean bool = this.applyService.addApply(activityApply);
		
		if (bool) {
			return ResultVO.success("报名成功！", null, null);
		}
		return ResultVO.fail("报名失败！", null, null);
				
	}
	
	/**
	 * 根据Id删除报名信息
	 * @param applyId
	 * @return
	 */
	@RequestMapping("delete")
	@ResponseBody
	public ResultVO<Object> deleteApply(@RequestParam("applyId") Integer applyId){
		
		if (applyId == null) {
			return ResultVO.fail("别乱提交数据", null, null);
		}
		Boolean bool = this.applyService.deleteApplyById(applyId);
		
		if (bool) {
			return ResultVO.success("删除成功！", null, null);
		}
		return ResultVO.fail("删除失败！", null, null);
	}
	
	/**
	 * 更新修改用户信息
	 * @param activityApply
	 * @return
	 */
	@RequestMapping("update")
	@ResponseBody
	public ResultVO<Object> updateApply(TbActivityApply activityApply){
		//预判断
		if (activityApply.getApplyId() == null) {
			return ResultVO.fail("参数有误！请联系技术！", null, null);
		}	
		
		Boolean bool = this.applyService.updateApply(activityApply);
		
		if (bool) {
			return ResultVO.success("修改成功！", null, null);
		}
		return ResultVO.fail("修改失败！", null, null);
		
	}
	
	/**
	 * 修改显示内容
	 * @param activityId
	 * @return
	 */
	@RequestMapping(value="displayActivity", produces = { "application/json; charset=utf-8" })
	@ResponseBody
	public String displayActivity(String applyId) {
		TbActivityApply ap=applyService.selectByPrimaryKey(Integer.parseInt(applyId));
		JSONObject jo = new JSONObject();
		jo.put("applyId", ap.getApplyId());
		jo.put("createBy", ap.getCreateBy());
		jo.put("activityId", ap.getActivityId());
		jo.put("activityTitle", ap.getActivityTitle());
		jo.put("department", ap.getDepartment());
		jo.put("area", ap.getArea());
		jo.put("userId", ap.getUserId());
		jo.put("createDate", ap.getCreateDate());
		return jo.toJSONString();
	}
}
