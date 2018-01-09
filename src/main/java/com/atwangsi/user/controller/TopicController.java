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
import com.atwangsi.user.model.TbExchangeRecord;
import com.atwangsi.user.model.TbTopicManage;
import com.atwangsi.user.service.TopicService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

/**
 * 信息管理
 * @author ou
 *
 */
@RequestMapping("topic")
@Controller
public class TopicController {
	
	@Autowired
	private TopicService topicService;
	
	/**
	 * 模糊查询-根据兑换人名称来进行模糊查询
	 * @param pageNum
	 * @param pageSize
	 * @param activityTitle
	 * @return
	 */
	@RequestMapping("querryByLike")
	@ResponseBody
	public PageInfo<TbTopicManage> querryByLike(
			@RequestParam(value = "pn", defaultValue = "1") Integer pageNum,
			@RequestParam(value = "ps", defaultValue = "7") Integer pageSize,
			@RequestParam("userName") String userName) {
		
		PageHelper.startPage(pageNum, pageSize);
		
		List<TbTopicManage> list =this.topicService.querryByLike(userName);
		
				return new PageInfo<>(list, AppContant.PAGE_SIZE);
	}
	
	/**
	 * 添加
	 * @param topic
	 * @return
	 */
	@RequestMapping("add")
	@ResponseBody
	public ResultVO<Object> addTopic(TbTopicManage topic) {
		topic.setCreateDate(new Date());
		Boolean bool = this.topicService.addTopic(topic);
		if (bool) {
			return ResultVO.success("添加成功", null, null);
		}

		return ResultVO.fail("添加失败，请重新添加！", null, null);

	}
	
	/**
	 * 删除
	 * @param orderIds
	 * @return
	 */
	@RequestMapping("delete")
	@ResponseBody
	public ResultVO<Object> deleteTopicById(@RequestParam("topicId") Integer topicId) {

		// 预判断
		if (topicId == null) {
			return ResultVO.fail("订单id异常", null, null);
		}

		Boolean bool = this.topicService.deleteTopicById(topicId);

		if (bool) {
			return ResultVO.success("删除成功", null, null);
		}

		return ResultVO.fail("删除失败，请重新删除！", null, null);

	}
	
	/**
	 * 修改
	 * @param topic
	 * @return
	 */
	@RequestMapping("update")
	@ResponseBody
	public ResultVO<Object> updateTopic(TbTopicManage topic) {

		// 预判断
		if (topic.getTopicId() == null) {
			return ResultVO.fail("订单修改异常", null, null);
		}

		Boolean bool = this.topicService.updateTopic(topic);

		if (bool) {
			return ResultVO.success("修改成功", null, null);
		}

		return ResultVO.fail("修改失败，请重新修改！", null, null);

	}
	
	/**
	 * 查询所有
	 * @param pageNum
	 * @param pageSize
	 * @param topicId  有值查一个
	 * @return
	 */
	@RequestMapping("querry")
	@ResponseBody
	public PageInfo<TbTopicManage> queryAll(@RequestParam(value = "pn", defaultValue = "1") Integer pageNum,
			@RequestParam(value = "ps", defaultValue = "7") Integer pageSize,
			@RequestParam(value = "topicId", required=false) Integer topicId ) {
		
		PageHelper.startPage(pageNum, pageSize);
		
		if (topicId == null) {
			return new PageInfo<>(this.topicService.queryAll(), AppContant.PAGE_SIZE);
		}
		
		return new PageInfo<>(this.topicService.querryBytopicId(topicId),AppContant.PAGE_SIZE);

	}

}
