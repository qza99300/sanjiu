package com.atwangsi.user.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.atwangsi.base.model.AppContant;
import com.atwangsi.base.model.ResultVO;
import com.atwangsi.user.model.TbActivityManage;
import com.atwangsi.user.service.ActivityManageService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
/**
 * 培训活动--活动管理
 * 基本crud，已经测试ok
 * @author ou
 *
 */
@RequestMapping("activity")
@Controller
public class ActivityManageController {

	@Autowired
	private ActivityManageService activityManageService;

	/**
	 * 模糊查询-根据标题来进行模糊查询
	 * @param pageNum
	 * @param pageSize
	 * @param activityTitle
	 * @return
	 */
	@RequestMapping("querryByLike")
	@ResponseBody
	public PageInfo<TbActivityManage> querryByLike(
			@RequestParam(value = "pn", defaultValue = "1") Integer pageNum,
			@RequestParam(value = "ps", defaultValue = "7") Integer pageSize,
			@RequestParam("activityTitle") String activityTitle) {
		
		PageHelper.startPage(pageNum, pageSize);
		
		List<TbActivityManage> list =this.activityManageService.querryByLike(activityTitle);
		
				return new PageInfo<>(list, AppContant.PAGE_SIZE);
	}
	
	
	/**
	 * 查看所有的活动
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	@RequestMapping("querryAll")
	@ResponseBody
	public PageInfo<TbActivityManage> querryAllActivity(@RequestParam(value = "pn", defaultValue = "1") Integer pageNum,
			@RequestParam(value = "ps", defaultValue = "7") Integer pageSize) {
		PageHelper.startPage(pageNum, pageSize);
		
		List<TbActivityManage> list = this.activityManageService.querryAll();
		
		PageInfo<TbActivityManage> pageInfo = new PageInfo<>(list, AppContant.PAGE_SIZE);
		
		return pageInfo;
	}
	
	/**
	 * 根据用户id查询
	 * @param pageNum
	 * @param pageSize
	 * @param activityId
	 * @return
	 */
	@RequestMapping("querryOne")
	@ResponseBody
	public PageInfo<TbActivityManage> querryOneActivity(
			@RequestParam(value = "pn", defaultValue = "1") Integer pageNum,
			@RequestParam(value = ("ps"), defaultValue = "7") Integer pageSize,
			@RequestParam(value = "activityId" , required=false) Integer activityId){
		
		PageHelper.startPage(pageNum, pageSize);
		
		List<TbActivityManage> activityManage = this.activityManageService.querryOne(activityId);
		
		PageInfo<TbActivityManage> pageInfo = new PageInfo<>(activityManage);
		
		return pageInfo;
	}
	
	/**
	 * 修改显示内容
	 * @param activityId
	 * @return
	 */
	@RequestMapping(value="displayActivity", produces = { "application/json; charset=utf-8" })
	@ResponseBody
	public String displayActivity(String activityId) {
		TbActivityManage tm=activityManageService.selectByPrimaryKey(Integer.parseInt(activityId));
		JSONObject jo = new JSONObject();
		jo.put("activityId", tm.getActivityId());
		jo.put("activityTitle", tm.getActivityTitle());
		jo.put("activityNum", tm.getActivityNum());
		jo.put("activityStatus", tm.getActivityStatus());
		jo.put("remark", tm.getRemark());
		jo.put("department", tm.getDepartment());
		jo.put("area", tm.getArea());
		jo.put("activityMatter", tm.getActivityMatter());
		return jo.toJSONString();
	}

	/**
	 * 修改活动
	 * 
	 * @param activityManage
	 * @return
	 */
	@RequestMapping("update")
	@ResponseBody
	public ResultVO<Object> updateActivity(TbActivityManage activityManage) {
		// 预检测
		if (activityManage == null) {
			return ResultVO.fail("活动不能修改为空值", null, null);
		}
		Boolean bool = this.activityManageService.updateActivity(activityManage);

		if (bool) {
			return ResultVO.success("修改成功！", null, null);
		}

		return ResultVO.fail("修改失败！", null, null);

	}

	/**
	 * 删除活动
	 * 
	 * @param activityIds
	 * @return
	 */
	@RequestMapping("delete")
	@ResponseBody
	public ResultVO<Object> deleteActivityByIds(@RequestParam("activityIds") String activityIds) {

		// 预检测
		if (activityIds.isEmpty()) {
			return ResultVO.fail("id值为空", null, null);
		}

		Boolean bool = this.activityManageService.deleteActivityByIds(activityIds);

		if (bool) {
			return ResultVO.success("删除成功！", null, null);
		}

		return ResultVO.fail("删除失败！", null, null);

	}

	/**
	 * 新增/保存活动
	 * 
	 * @param activityManage
	 * @return
	 */
	@RequestMapping("add")
	@ResponseBody
	public ResultVO<Object> saveActivity(TbActivityManage activityManage) {
		
		activityManage.setCreateDate(new Date());

		Boolean bool = this.activityManageService.saveActivity(activityManage);

		if (bool) {
			return ResultVO.success("添加成功！", null, null);
		}

		return ResultVO.fail("添加失败！", null, null);

	}

}
