package com.atwangsi.user.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.atwangsi.base.model.AppContant;
import com.atwangsi.base.model.ResultVO;
import com.atwangsi.user.model.TbExchangeRecord;
import com.atwangsi.user.service.RecordService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

/**
 * 积分兑换明细
 * @author ou
 *
 */
@RequestMapping("record")
@Controller
public class RecordController {
	
	@Autowired
	private RecordService recordService;
	
	/**
	 * 添加
	 * @param product
	 * @return
	 */
	@RequestMapping("add")
	@ResponseBody
	public ResultVO<Object> addRecord(TbExchangeRecord record) {
		record.setCreateDate(new Date());
		Boolean bool = this.recordService.addRecord(record);
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
	public ResultVO<Object> deleteRecordById(@RequestParam("rid") Integer id) {

		// 预判断
		if (id == null) {
			return ResultVO.fail("订单id异常", null, null);
		}

		Boolean bool = this.recordService.deleteRecordById(id);

		if (bool) {
			return ResultVO.success("删除成功", null, null);
		}

		return ResultVO.fail("删除失败，请重新删除！", null, null);

	}
	
	/**
	 * 修改
	 * @param product
	 * @return
	 */
	@RequestMapping("update")
	@ResponseBody
	public ResultVO<Object> updateRecord(TbExchangeRecord record) {

		// 预判断
		if (record.getId() == null) {
			return ResultVO.fail("修改异常", null, null);
		}

		Boolean bool = this.recordService.updateRecord(record);

		if (bool) {
			return ResultVO.success("修改成功", null, null);
		}

		return ResultVO.fail("修改失败，请重新修改！", null, null);

	}
	
	/**
	 * 查询所有
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	@RequestMapping("querry")
	@ResponseBody
	public PageInfo<TbExchangeRecord> queryAll(@RequestParam(value = "pn", defaultValue = "1") Integer pageNum,
			@RequestParam(value = "ps", defaultValue = "7") Integer pageSize) {
		
		PageHelper.startPage(pageNum, pageSize);
		
			return new PageInfo<>(this.recordService.queryAll(), AppContant.PAGE_SIZE);

	}
	
	@RequestMapping(value="querryByPhone")
	@ResponseBody
	public PageInfo<TbExchangeRecord> queryById(
			@RequestParam("convertPhone") String phone ) {
		return new PageInfo<>(this.recordService.querryByRecordPhone(phone));
		
	}
	
	/**
	 * 根据id查询
	 * @param id
	 * @return
	 */
	@RequestMapping(value="querryById",method=RequestMethod.GET)
	@ResponseBody
	public PageInfo<TbExchangeRecord> queryById(
			@RequestParam(value = "rId") Integer id ) {
		return new PageInfo<>(this.recordService.querryByRecordId(id));
		
	}
	
	/**
	 * 根据兑换状态进行查询
	 * @param pageNum
	 * @param pageSize
	 * @param convertStatus
	 * @return
	 */
	@RequestMapping("status")
	@ResponseBody
	public PageInfo<TbExchangeRecord> querryByStatus(@RequestParam(value = "pn", defaultValue = "1") Integer pageNum,
			@RequestParam(value = "ps", defaultValue = "7") Integer pageSize,
			@RequestParam(value = "convertStatus") Integer convertStatus ){
		
		PageHelper.startPage(pageNum, pageSize);
		
		return new PageInfo<>(this.recordService.selectRecord(convertStatus));
		
	}
	
	

}
