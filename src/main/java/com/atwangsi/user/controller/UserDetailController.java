package com.atwangsi.user.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.atwangsi.base.model.AppContant;
import com.atwangsi.base.model.ResultVO;
import com.atwangsi.user.model.TbUserIntegralDetail;
import com.atwangsi.user.service.UserDetailService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@RequestMapping("detail")
@Controller
public class UserDetailController {
	
	@Autowired
	private UserDetailService userDetailService;

	/**
	 * 根据用户id查询当前用户积分明细
	 * @param pageNum
	 * @param pageSize
	 * @param userId
	 * @return
	 */
	@RequestMapping("querryByUserId")
	@ResponseBody
	public PageInfo<TbUserIntegralDetail> querryByUserId(
			@RequestParam(value = "pn", defaultValue = "1") Integer pageNum,
			@RequestParam(value = "ps", defaultValue = "7") Integer pageSize,
			@RequestParam("userId") Integer userId ){
		
		PageHelper.startPage(pageNum, pageSize);
		List<TbUserIntegralDetail> list = this.userDetailService.querryByUserId(userId);
		return new PageInfo<>(list, AppContant.PAGE_SIZE);
	}
	
	/**
	 * 添加记录
	 * @param userIntegralDetail
	 * @return
	 */
	@RequestMapping("add")
	@ResponseBody
	public ResultVO<Object> addUserDetail(TbUserIntegralDetail userIntegralDetail){
		userIntegralDetail.setCreateDate(new Date());
		Boolean bool = this.userDetailService.add(userIntegralDetail);
		
		if (bool) {
			// 返回成功添加的状态
			return ResultVO.success("更新成功", null, null);
		} else {
			// 返回添加失败的状态
			return ResultVO.fail("更新失败", null, null);
		}
	}
	
	
	
	
}
