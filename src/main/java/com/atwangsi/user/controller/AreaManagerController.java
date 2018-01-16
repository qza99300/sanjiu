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
import com.atwangsi.base.utils.HDYXUtils;
import com.atwangsi.user.model.TbAreaManager;
import com.atwangsi.user.service.AreaManagerService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
/**
 * 区域总，对负责区域进行增删改查
 * @author ou
 *
 */
@Controller
public class AreaManagerController {

	@Autowired
	private AreaManagerService areaManagerService;
	
	/**
	 * 模糊查询-根据区总名称来执行操作
	 * @param managerName
	 * @return
	 */
	@RequestMapping("querryByLike")
	@ResponseBody
	public ResultVO<Object> querryByLike(@RequestParam("managerName") String managerName) {
		
		List<TbAreaManager> list =this.areaManagerService.querryByLike(managerName);
		
		return ResultVO.success("查询成功", list, null);
		
		
	}
	
	/**
	 * 根据主键id进行查询
	 * @param areaId
	 * @return
	 */
	@RequestMapping("querryById")
	@ResponseBody
	public ResultVO<Object> querryById(@RequestParam("areaId") Integer areaId){
		//校验
		if (HDYXUtils.isNull(areaId)) {
			return ResultVO.fail("查询失败，请联系技术员！", null, null);
		}
		//执行操作
		TbAreaManager areaManager = this.areaManagerService.querryById(areaId);
		
		//成功返回json对象
		return ResultVO.success("查询成功", areaManager, null);
	}
	
	/**
	 * 查询所有信息
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	@RequestMapping("querry")
	@ResponseBody
	public PageInfo<TbAreaManager> querryAllArea(
			@RequestParam(value = "pn", defaultValue = "1") Integer pageNum,
			@RequestParam(value = "ps", defaultValue = "7") Integer pageSize){
		//分页
		PageHelper.startPage(pageNum, pageSize);
		
		List<TbAreaManager> areaManagers = this.areaManagerService.querryAllArea();
		
		return new PageInfo<>(areaManagers, AppContant.PAGE_SIZE);
	}
	
	/**
	 * 修改
	 * @param areaId
	 * @return
	 */
	@RequestMapping("update")
	@ResponseBody
	public ResultVO<Object> update(TbAreaManager areaManager){
		
		//预判断
		if (areaManager.getAreaId() == null) {
			return ResultVO.fail("更新失败，请联系管理员！", null, null);
		}
		//校验区域省份是否存在
		else if (check(areaManager.getProvince())) {
			return ResultVO.fail("更新失败，该省份已有区总！", null, null);
			
		}
		
		Boolean bool = this.areaManagerService.update(areaManager);
		
		if (bool) {
			return ResultVO.success("删除成功！", null, null);
		}
		return ResultVO.fail("删除失败", null, null);
	}
	
	/**
	 * 删除
	 * @param areaId
	 * @return
	 */
	@RequestMapping("delete")
	@ResponseBody
	public ResultVO<Object> delete(@RequestParam("areaId") Integer areaId){
		
		Boolean bool = this.areaManagerService.delete(areaId);
		
		if (bool) {
			return ResultVO.success("删除成功！", null, null);
		}
		return ResultVO.fail("删除失败", null, null);
	}
	
	/**
	 * 添加
	 * @param areaManager
	 * @return
	 */
	@RequestMapping("add")
	@ResponseBody
	public ResultVO<Object> add(TbAreaManager areaManager){
		
		areaManager.setCreateDate(new Date());
		
		if (check(areaManager.getProvince())) {
			return ResultVO.fail("该省份已有区总，请换个省份绑定！", null, null);
		}
		
		Boolean bool = this.areaManagerService.add(areaManager);
		
		if (bool) {
			return ResultVO.success("绑定成功！", null, null);
		}
		return ResultVO.fail("绑定失败", null, null);
	}
	
	/**
	 * 校验区域省份是否绑定区总
	 * @param province
	 * @return
	 */
	@RequestMapping("check")
	@ResponseBody
	public ResultVO<Object> checkByProvince(@RequestParam("province") String province){
		
		Boolean bool = check(province);
		
		if (bool) {
			return ResultVO.fail("该省份已有区总，请换个省份绑定！", null, null);
		}
		return ResultVO.success("该省份尚未存在区总，可以进行绑定", null, null);
	}
	
	//校验省份是存在   bool为真说明已经存在
	public Boolean check(String province){
		
		Boolean bool = this.areaManagerService.checkByProvince(province);
		
		return bool;
		
	}
	
}
