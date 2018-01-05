package com.atwangsi.user.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.atwangsi.base.model.AppContant;
import com.atwangsi.base.model.ResultVO;
import com.atwangsi.user.model.TbExchangeOrder;
import com.atwangsi.user.service.OrderService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

/**
 * 客户管理--订单管理
 * 
 * @author ou
 *
 */
@RequestMapping("order")
@Controller
public class OrderController {

	@Autowired
	private OrderService orderService;

	/**
	 * 查询所有的订单
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	@RequestMapping("querry")
	@ResponseBody
	public PageInfo<TbExchangeOrder> queryAll(@RequestParam(value = "pn", defaultValue = "1") Integer pageNum,
			@RequestParam(value = "ps", defaultValue = "7") Integer pageSize,
			@RequestParam(value = "userId", required=false) Integer userId ) {
		
		PageHelper.startPage(pageNum, pageSize);
		
		if (userId == null) {
			return new PageInfo<>(this.orderService.queryAll(), AppContant.PAGE_SIZE);
		}
		
		return new PageInfo<>(this.orderService.querryByUserId(userId));

	}
	
	/**
	 * 根据订单id跳转详细订单
	 * @param id
	 * @return
	 */
	@RequestMapping("querryOne")
	public String querryOne(@RequestParam("id") Integer id ,HttpSession session ){
		
		if (id == null) {
			return "user-module/orderList";
		}
		
		TbExchangeOrder order =this.orderService.querryOne(id);
		
		if (order != null) {
			session.setAttribute("order", order);
			return "user-module/orderUpdate";
		}
		return "user-module/orderList";
		
	}
	
	@RequestMapping("querryById")
	@ResponseBody
	public PageInfo<TbExchangeOrder> querryById(
			@RequestParam(value = "pn", defaultValue = "1") Integer pageNum,
			@RequestParam(value = "ps", defaultValue = "7") Integer pageSize,
			@RequestParam(value = "id") Integer id ){
		
		PageHelper.startPage(pageNum, pageSize);
		
		List<TbExchangeOrder> list = new ArrayList<>();
		
		if (id == null) {
			return null;
		}
		
		list.add(this.orderService.querryOne(id));
		
		return new PageInfo<>(list, AppContant.PAGE_SIZE);
	}

	/**
	 * 修改订单的权限
	 * 
	 * @param order
	 * @return
	 */
	@RequestMapping("update")
	@ResponseBody
	public ResultVO<Object> updateOrder(TbExchangeOrder order) {

		// 预判断
		if (order == null) {
			return ResultVO.fail("订单修改异常", null, null);
		}

		Boolean bool = this.orderService.updateOrder(order);

		if (bool) {
			return ResultVO.success("修改成功", null, null);
		}

		return ResultVO.fail("修改失败，请重新修改！", null, null);

	}

	/**
	 * 批量删除订单的操作
	 * 
	 * @param orderIds
	 * @return
	 */
	@RequestMapping("delete")
	@ResponseBody
	public ResultVO<Object> deleteOrderByIds(@RequestParam("ids") String ids) {

		// 预判断
		if (ids.isEmpty()) {
			return ResultVO.fail("订单id异常", null, null);
		}

		Boolean bool = this.orderService.deleteOrderByIds(ids);

		if (bool) {
			return ResultVO.success("删除成功", null, null);
		}

		return ResultVO.fail("删除失败，请重新删除！", null, null);

	}

	/**
	 * 新增/保存订单
	 * 
	 * @param order
	 * @return
	 */
	@RequestMapping("add")
	@ResponseBody
	public ResultVO<Object> saveOrder(TbExchangeOrder order) {
		order.setCreateDate(new Date());
		Boolean bool = this.orderService.saveOrder(order);
		if (bool) {
			return ResultVO.success("添加成功", null, null);
		}

		return ResultVO.fail("添加失败，请重新添加！", null, null);

	}

}
