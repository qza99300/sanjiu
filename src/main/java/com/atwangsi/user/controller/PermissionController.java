package com.atwangsi.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
/**
 * 系统管理--权限管理
 * @author ou
 *
 */
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.atwangsi.base.model.ResultVO;
import com.atwangsi.user.model.TbPermission;
import com.atwangsi.user.service.PermissionService;

/**
 * 系统管理--权限管理  测试ok
 * 测试ok
 * @author ou
 *
 */
@RequestMapping("per")
@Controller
public class PermissionController {
	
	@Autowired
	private PermissionService permissionService;
	
	/**
	 * 查看所有的权限
	 * @return
	 */
	@RequestMapping("permissions")
	@ResponseBody
	public List<TbPermission> permissions(){
		return permissionService.getAllPermissions();
	}
	
	/**
	 * 查看角色权限
	 * @param roleId
	 * @return
	 */
	@RequestMapping("/roleperm")
	@ResponseBody
	public ResultVO<List<TbPermission>> rolesPermissions(@RequestParam("roleId")Integer roleId){
		List<TbPermission> permissions = permissionService.getRolePermissions(roleId);
		return ResultVO.success("查询成功！", permissions, null);
	}
	/**
	 * 修改角色权限
	 * @param roleId
	 * @param permissionIds
	 * @return
	 */
	@RequestMapping("update")
	@ResponseBody
	public ResultVO<Object> updatePermissions(@RequestParam("roleId")Integer roleId,
			@RequestParam("permissionIds")String permissionIds){

		permissionService.updatePermissions(roleId,permissionIds);
		
		return ResultVO.success("权限分配成功！", null, null);
	}
	
	
}
