package com.atwangsi.wechat.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.atwangsi.user.model.TbActivityApply;
import com.atwangsi.user.model.TbActivityManage;
import com.atwangsi.user.model.TbUser;
import com.atwangsi.user.service.ActivityManageService;
import com.atwangsi.user.service.ApplyService;
import com.atwangsi.user.service.UserService;


@Controller
@RequestMapping(value = "ActivityManage")
public class ActivityManagesController {
	
	
	@Autowired
	private ActivityManageService activityManageService;
	
	@Autowired
	private ApplyService applyService;
	
	@Autowired
	private UserService userService;

	
	/**
	 * 从session中获取用户信息
	 * 
	 * @param request
	 * @return SysUser
	 */
	public static String getUser(HttpServletRequest request) {
		return (String) request.getSession(true).getAttribute("code");
	}
	 
	//显示最新活动
	@RequestMapping("ShowAll")
	public String ShowAll(String code,Model model) {
		model.addAttribute("code", code);
		model.addAttribute("list", activityManageService.selectList());
		return "WeChat/activity";
	}
	
	/**
	 * 显示历史信息
	 * @param model
	 * @return
	 */
	@RequestMapping("ShowHistory")
	public String ShowHistory(String code,Model model) {
		model.addAttribute("list", activityManageService.selectHistory());
		model.addAttribute("code", code);
		return "WeChat/History";
	}
	
	//点击报名显示单个信息
	@RequestMapping("enroll")
	public String enroll(String code,String id,Model model) {
		TbActivityManage tm=activityManageService.selectByPrimaryKey(Integer.parseInt(id));
		model.addAttribute("list",tm);
		model.addAttribute("code", code);
		return "WeChat/enroll";
	}

	//新增报名信息
	@ResponseBody
	@RequestMapping("addActivity")
	public String addActivity(String code,String id,HttpServletRequest request) {
		String msg="";
		TbActivityManage tm=activityManageService.selectByPrimaryKey(Integer.parseInt(id));
		TbActivityApply ta=new TbActivityApply();//根据ID查询活动信息
		
		TbUser user=userService.selectweixin(code);//根据微信ID查询用户表
		ta.setActivityId(tm.getActivityId());
		ta.setUserId(user.getUserId());
		ta.setActivityTitle(tm.getActivityTitle());
		ta.setDepartment(tm.getDepartment());
		ta.setArea(tm.getArea());
		ta.setCreateDate(new Date());
		Boolean bool =applyService.addApply(ta);
		
		if (bool) {
			TbActivityManage activityManage=new TbActivityManage();
			activityManage.setActivityId(tm.getActivityId());
			activityManage.setActivityNum(tm.getActivityNum()+1);
			activityManageService.updateActivity(activityManage);
			msg="yes";
			return msg;
		}
		msg="no";
		return msg;
	}
	
	//验证是已经报名过
	@ResponseBody
	@RequestMapping("Prompt")
	public String Prompt(String code,TbActivityApply apply,HttpServletRequest request) {
		TbUser user=userService.selectweixin(code);//根据微信ID查询用户表
		apply.setUserId(user.getUserId());
		TbActivityApply activity=applyService.selectObj(apply);
		if(activity!=null) {
			return "no";
		}
		return "yes";
	}
}
