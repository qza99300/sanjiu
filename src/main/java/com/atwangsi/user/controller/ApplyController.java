package com.atwangsi.user.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.atwangsi.base.model.AppContant;
import com.atwangsi.base.model.ResultVO;
import com.atwangsi.base.utils.FileDown;
import com.atwangsi.base.utils.HDYXUtils;
import com.atwangsi.user.model.TbActivityApply;
import com.atwangsi.user.model.TbUser;
import com.atwangsi.user.service.ApplyService;
import com.atwangsi.user.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

/**
 * 报名明细
 * @author ou
 *
 */
@Controller
@RequestMapping("apply")
public class ApplyController {
	
	@Autowired
	private ApplyService applyService;
	
	@Autowired
	private UserService userService;

	/**
	 * 模糊查询
	 * @param pageNum
	 * @param pageSize
	 * @param activityTitle
	 * @return
	 */
	@RequestMapping("querryByLike")
	@ResponseBody
	public PageInfo<TbActivityApply> querryByLike(
			@RequestParam(value = "pn", defaultValue = "1") Integer pageNum,
			@RequestParam(value = "ps", defaultValue = "7") Integer pageSize,
			@RequestParam("title") String title) {
		
		PageHelper.startPage(pageNum, pageSize);
		
		List<TbActivityApply> list =this.applyService.querryByLike(title);
		
		return new PageInfo<>(list, AppContant.PAGE_SIZE);
		
	}
	
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
	 * 根据活动id查询所有报名信息，并写入文件导出
	 * @param activityId
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "fileExportByActivityId", method = {RequestMethod.POST,RequestMethod.GET})
	@ResponseBody
	public ResultVO<Object> fileDownByActivityIdLike(@RequestParam("activityId") Integer activityId,HttpServletResponse response){
		//定义的文件名
		String fileName = "活动报名信息";
		//第三个参数：需要导出的字段  
		
		//获取活动表头信息
		HSSFWorkbook workbook = FileDown.fileDown(HDYXUtils.activityDownFile());
		//查询数据
		List<TbActivityApply> list = this.applyService.querryByActivityId(activityId);
		//文件写入查询出来的数据
		HDYXUtils.intoActivityMsgtoFile(workbook,list);
		//提交到response
		HDYXUtils.subResponse(fileName,workbook,response);
		
		return ResultVO.success("下载成功", null, null);
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
	 * 添加报名的信息，对用户区域校验
	 * @param activityApply
	 * @return
	 */
	@RequestMapping("add")
	@ResponseBody
	public ResultVO<Object> addApply(TbActivityApply activityApply){
		
		activityApply.setCreateDate(new Date());
		
		//获取当前用户信息
		TbUser user = this.userService.querryUserById(activityApply.getUserId());
		//区域校验
		if (user.getArea1().equals(activityApply.getArea())) {
			return ResultVO.fail("报名失败,您不是该区域人员！", null, null);
		}
		//执行报名操作
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

