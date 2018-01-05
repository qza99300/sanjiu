package com.atwangsi.user.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.atwangsi.base.model.AppContant;
import com.atwangsi.base.model.ResultVO;
import com.atwangsi.user.model.TbCollegeSynopsis;
import com.atwangsi.user.service.CollegeService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

/**
 * 学院简介和学院特点
 * 
 * 简介增删查已经做完，测试ok
 * @author ou
 *
 */
@Controller
@RequestMapping("college")
public class CollegeController {
	
	//创建一个collegeservice
	@Autowired
	private CollegeService collegeService;
	
	/**
	 * 获取所有的简介
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	@RequestMapping(value="querry")
	@ResponseBody
	private PageInfo<TbCollegeSynopsis> getCollegeSynopsis(
			@RequestParam(value="pn",defaultValue="1") Integer pageNum,
			@RequestParam(value=("ps"),defaultValue="7") Integer pageSize,
			@RequestParam(value="collegeId",required=false) Integer collegeId){
		
		PageHelper.startPage(pageNum, pageSize);
		
		List<TbCollegeSynopsis> list = new ArrayList<>();
		
		if (collegeId == null) {
			return new PageInfo<>(this.collegeService.getCollegeSynopsis(),AppContant.PAGE_SIZE);
		}
		
		list.add(this.collegeService.queryIntroByid(collegeId));
		
		return new PageInfo<>(list, AppContant.PAGE_SIZE);
	}
	
	@RequestMapping(value = "oneIntro")
	@ResponseBody
	public ResultVO<TbCollegeSynopsis> queryIntroByid(@RequestParam("collegeId") Integer collegeId ){
		
		TbCollegeSynopsis synopsis =this.collegeService.queryIntroByid(collegeId);
		
		if (synopsis == null) {
			//查询失败
			return ResultVO.fail("查询失败，请输入正确的id", null, null);
		}
		//查询成功的操作，返回对象
		return ResultVO.success("查询成功！", synopsis, null);
		
	}
	
	/**
	 * 批量删除简介
	 * @param collegeId
	 * @return
	 */
	@RequestMapping(value="deleteIntro")
	@ResponseBody
	public ResultVO<Object> deleteIntro(@RequestParam("collegeIds") String collegeIds){
		
		Boolean bool = this.collegeService.deleteIntroById(collegeIds);
		
		if (bool) {
			//删除成功
			return ResultVO.success("删除成功", null, null);
		}
		//删除失败
		return ResultVO.fail("删除失败", null, null);
		
		
	}
	
	/**
	 * 保存/新增学院简介
	 * @param college
	 * @return
	 */
	@RequestMapping(value="addIntro")
	@ResponseBody
	public ResultVO<Object> saveCollegeIntro(TbCollegeSynopsis college){
		college.setCreateDate(new Date());
		Boolean bool = this.collegeService.saveCollegeIntro(college);
		
		if (bool) {
			//保存成功，跳转到主页
			return ResultVO.success("添加成功！", null, null);
		}
		//保存失败
		return ResultVO.fail("添加失败!",null, null);
	}
		
		

}
