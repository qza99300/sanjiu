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

import com.atwangsi.base.model.AppContant;
import com.atwangsi.base.model.ResultVO;
import com.atwangsi.user.model.TbConsignee;
import com.atwangsi.user.model.TbUser;
import com.atwangsi.user.service.ConsigneeService;
import com.atwangsi.user.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

/**
 * 客户管理--地址管理模块
 * 基本增删改查，测试ok
 * @author ou
 *
 */
@RequestMapping("consignee")
@Controller
public class ConsigneeController {

	@Autowired
	private ConsigneeService consigneeService;
	
	@Autowired
	private UserService userService;
	
	/**
	 * 根据收货人名称来进行模糊查询
	 * @param pageNum
	 * @param pageSize
	 * @param consigneeName
	 * @return
	 */
	@RequestMapping("querryByLike")
	@ResponseBody
	public PageInfo<TbConsignee> querryByLike(
			@RequestParam(value = "pn", defaultValue = "1") Integer pageNum,
			@RequestParam(value = "ps", defaultValue = "7") Integer pageSize,
			@RequestParam("consigneeName") String consigneeName) {
		
		PageHelper.startPage(pageNum, pageSize);
		
		Map<String,Object> map = new HashMap<>();
		
		List<TbConsignee> list =this.consigneeService.querryByLike(consigneeName);
		
		
		return new PageInfo<>(list, AppContant.PAGE_SIZE);
	}

	
	/**
	 * 添加收货人地址
	 * @param consignee
	 * @return
	 */
	@RequestMapping("add")
	@ResponseBody
	public ResultVO<Object> saveConsignee(TbConsignee consignee){
		
		consignee.setCreateDate(new Date());
		
		Boolean bool = this.consigneeService.saveConsignee(consignee);
		
		if (bool) {
			//删除成功
			return ResultVO.success("添加成功", null, null);
		}
		//失败的删除
		return ResultVO.fail("添加失败", null, null);
		
	}
	
	/**
	 * 删除收货人地址
	 * @param consigneeIds
	 * @return
	 */
	@RequestMapping("delete")
	@ResponseBody
	public ResultVO<Object> deleteById(@RequestParam("consigneeIds") String consigneeIds){
		
		if (consigneeIds.isEmpty()) {
			return ResultVO.fail("用户id为空！", null, null);
		}
		
		Boolean bool = this.consigneeService.deleteById(consigneeIds);
		
		if (bool) {
			//删除成功
			return ResultVO.success("删除成功", null, null);
		}
		//失败的删除
		return ResultVO.fail("删除失败", null, null);
		
	}
	
	/**
	 * 修改地址
	 * @param consignee
	 * @return
	 */
	@RequestMapping("update")
	@ResponseBody
	public ResultVO<Object> updateConsigneeById(TbConsignee consignee){
		
		Boolean bool = this.consigneeService.updateConsignee(consignee);
		
		if (bool) {
			//修改成功
			return ResultVO.success("修改成功!", null, null);
		}
		//修改失败
		return ResultVO.success("修改失败，请联系管理员", null, null);
		
	}

	/**
	 * 查看所有的收货人地址
	 * @param pageNum
	 * @param pageSize
	 * @param consigneeId  有值查一个
	 * @return
	 */
	@RequestMapping("querry")
	@ResponseBody
	public PageInfo<TbConsignee> querryAllConsignee(@RequestParam(value = "pn", defaultValue = "1") Integer pageNum,
			@RequestParam(value = "ps", defaultValue = "7") Integer pageSize,
			@RequestParam(value="consigneeId", required = false) Integer consigneeId) {
		
		PageHelper.startPage(pageNum, pageSize);
		
		if (consigneeId == null) {
			
			return new PageInfo<>(this.consigneeService.querryAllConsignee(), AppContant.PAGE_SIZE);
			
		}
		
		return new PageInfo<>(this.consigneeService.querryById(consigneeId), AppContant.PAGE_SIZE);

	}
	
	/**
	 * 测试查询
	 * @param pageNum
	 * @param pageSize
	 * @param consigneeId
	 * @return
	 */
	@RequestMapping("querryall")
	@ResponseBody
	public ResultVO<List<TbUser>> querryAllConsigneeText(@RequestParam(value = "pn", defaultValue = "1") Integer pageNum,
			@RequestParam(value = "ps", defaultValue = "7") Integer pageSize,
			@RequestParam(value="consigneeId", required = false) Integer consigneeId) {
		
		PageHelper.startPage(pageNum, pageSize);
		
		Map<String, Object> resultMap = new HashMap<>();
		List<TbUser> user = this.userService.getAllUser();
//		List<TbConsignee> consignee = this.consigneeService.querryAllConsignee();
		PageInfo<TbConsignee> conInfo = new PageInfo<>(this.consigneeService.querryAllConsignee(), AppContant.PAGE_SIZE);
		
		resultMap.put("conInfo", conInfo);
//		resultMap.put("user", user);
		return ResultVO.success("查询成功", user, resultMap);
		
		
	}
	
	/**
	 * 查看一个用户的所有地址
	 * @param userId
	 * @return
	 */
	@RequestMapping("querryOne")
	@ResponseBody
	public PageInfo<TbConsignee> querryOneConsignee(
						@RequestParam(value = "pn", defaultValue = "1") Integer pageNum,
						@RequestParam(value = ("ps"), defaultValue = "7") Integer pageSize, 
						@RequestParam(value="userId",required=false) Integer userId){
		
		PageHelper.startPage(pageNum, pageSize);
		
		List<TbConsignee> consignees = this.consigneeService.querryOneConsignee(userId);
		
		PageInfo<TbConsignee> pageInfo = new PageInfo<>(consignees);
		
		return pageInfo;
		
	}

}

