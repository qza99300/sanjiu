package com.atwangsi.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.atwangsi.base.model.AppContant;
import com.atwangsi.base.model.ResultVO;
import com.atwangsi.user.model.TbRole;
import com.atwangsi.user.service.RoleService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

/**
 * 系统管理--角色管理  测试ok
 * @author ou
 *
 */
@RequestMapping("role")
@Controller
public class RoleController {
	
	@Autowired
	private RoleService roleService;
	
	/**
	 * 查看所有的角色
	 * @return
	 */
	@RequestMapping("roles")
	@ResponseBody
	public PageInfo<TbRole> roles(@RequestParam(value="pn",defaultValue="1") Integer pageNum,
			@RequestParam(value=("ps"),defaultValue="7") Integer pageSize,
			@RequestParam(value="roleId",required = false) Integer roleId){
		
		PageHelper.startPage(pageNum, pageSize);

		if (roleId == null) {
			List<TbRole> roles = roleService.getAllRoles();
			return new PageInfo<>(roles,AppContant.PAGE_SIZE);
		}
		
		List<TbRole> role = this.roleService.getRoleById(roleId);
		
		return new PageInfo<>(role);
		
	}
	
	
	/**
     * 删除(ajax的方式)
     * @param ids
     * @return
     */
	@RequestMapping("delete")
	@ResponseBody
	public ResultVO<Object> deleteRoles(@RequestParam("roleId") Integer roleId,
                                        @RequestParam(value="pn",defaultValue = "1") Integer pn){
      boolean flag =  roleService.removeRoleByRoleId(roleId);
      if (flag){
          return ResultVO.success("删除成功",null,null);
      }
		return ResultVO.fail("删除失败",null,null);
	}
	
	/**
	 * 添加用户页面
	 * @param role
	 * @return
	 */
	@RequestMapping("add")
	@ResponseBody
	public ResultVO<Object> add(TbRole role){
		
		boolean flag = this.roleService.registRole(role);
		if(flag){
			return ResultVO.success("角色添加成功", null, null);
		}
		return ResultVO.fail("角色添加失败，请重新添加！", null, null);
	}

	/**
	 * 修改角色
	 * @param role
	 * @param session
	 * @return
	 */
	@RequestMapping("update")
	@ResponseBody
	public ResultVO<Object> updateRole(TbRole role){
		
		if (role.getRoleId() == null) {
			return ResultVO.fail("别乱提交数据", role, null);
		}
		Boolean bool = this.roleService.updateRole(role);
		
		if (bool) {
			return ResultVO.success("修改成功", null, null);
		}
		return ResultVO.fail("别乱提交数据", role, null);
	}

}
