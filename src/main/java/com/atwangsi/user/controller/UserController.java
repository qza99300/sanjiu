package com.atwangsi.user.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.atwangsi.base.model.AppContant;
import com.atwangsi.base.model.ResultVO;
import com.atwangsi.base.utils.StringUtil;
import com.atwangsi.user.model.TbExchangeRecord;
import com.atwangsi.user.model.TbRole;
import com.atwangsi.user.model.TbUser;
import com.atwangsi.user.service.RoleService;
import com.atwangsi.user.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

/**
 * 主要的方法 新增用户——saveUser() 删除用户——deleteUser() 修改用户——updateUser()
 * 查询用户——queryUserList()
 * 
 * @author ou
 *
 */
@Controller
@RequestMapping("user")
public class UserController {

	@Autowired
	private UserService userService;

	@Autowired
	private RoleService roleService;
	
	
	
	
	/**
	 * 模糊查询-根据用户名称来进行模糊查询
	 * @param pageNum
	 * @param pageSize
	 * @param 
	 * @return
	 */
	@RequestMapping("querryByLike")
	@ResponseBody
	public PageInfo<TbUser> querryByLike(
			@RequestParam(value = "pn", defaultValue = "1") Integer pageNum,
			@RequestParam(value = "ps", defaultValue = "7") Integer pageSize,
			@RequestParam("userName") String userName) {
		
		PageHelper.startPage(pageNum, pageSize);
		
		List<TbUser> list =this.userService.querryByLike(userName);
		
				return new PageInfo<>(list, AppContant.PAGE_SIZE);
	}

	/**
	 * 增加用户 ok 但是username不能做到唯一用户，待处理
	 * 
	 * @param user
	 * @return
	 */
	@RequestMapping(value = "add")
	@ResponseBody
	public ResultVO<Object> saveUser(TbUser user) {
		
		user.setIntegralCount(10);
		user.setCreateDate(new Date());

		try {
			// 执行用户保存操作
			Boolean bool = this.userService.saveUser(user);
			if (bool) {
				// bool为真返回成功添加的状态
				return ResultVO.success("用户添加成功", null, null);
			} else {
				// 返回添加失败的状态
				return ResultVO.fail("添加失败", null, null);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 返回空值，代表没有添加成功
		return ResultVO.fail("添加失败", null, null);
	}

	/**
	 * 删除用户 
	 * 
	 * @param user
	 * @return
	 */
	@RequestMapping(value = "delUser")
	@ResponseBody
	public ResultVO<Object> deleteUser(@RequestParam("userIds") String userIds) {
		
		if (StringUtil.isEmpty(userIds)) {
			return ResultVO.fail("请勿乱点", null, null);
		}
		
		try {
			// 执行删除操作
			this.userService.deleteByIds(userIds);
			return ResultVO.success("删除成功！", null, null);
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 删除失败返回
		return ResultVO.fail("删除失败！", null, null);
	}

	/**
	 * 更新修改用户 测试ok
	 * 
	 * @return
	 */
	@RequestMapping("updateUser")
	@ResponseBody
	public ResultVO<Object> updateUser(TbUser user) {
		
		if (user == null) {
			return ResultVO.fail("提交异常，请联系管理员！", null, null);
		}

		try {
			this.userService.updateUser(user);
			return ResultVO.success("用户信息修改成功！", null, null);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ResultVO.fail("修信息修改失败！", null, null);
	}

	/**
	 * 查询所有的用户信息 测试ok
	 * 
	 * @return
	 */
	@RequestMapping("querry")
	@ResponseBody
	public PageInfo<TbUser> userList(@RequestParam(value = "pn", defaultValue = "1") Integer pageNum,
			@RequestParam(value = ("ps"), defaultValue = "7") Integer pageSize,
			@RequestParam(value="userId", required = false) Integer userId) {

		PageHelper.startPage(pageNum, pageSize);
		if (userId == null) {
			return new PageInfo<>(this.userService.getAllUser(), AppContant.PAGE_SIZE);
		}
		
		return new PageInfo<>(this.userService.querryUserOne(userId),AppContant.PAGE_SIZE);
	}
	
	/**
	 * 根据用户id查询用户信息
	 * json
	 * @param userId
	 * @return
	 */
	@RequestMapping("querryById")
	@ResponseBody
	public ResultVO<Object> querryById(@RequestParam("userId") Integer userId){
		
		List<TbUser> userlist = this.userService.querryUserOne(userId);
		
		return ResultVO.success("查询成功！", userlist.get(0), null);
		
	}
	
	/**
	 * 根据用户id查询(页面跳转）
	 * @param userId
	 * @return
	 */
	@RequestMapping("querryUser")
	public String querryOne(@RequestParam("userId") Integer userId,HttpSession session){
		if (userId == null) {
			return "userList";
		}
		
		TbUser user = this.userService.querryUserById(userId);
		
		if (user != null) {
			session.setAttribute("user", user);
			return "querryUser";
		}
		return "userList";
		
	}

	/**
	 * 给用户添加角色
	 */
	@RequestMapping("/addRole")
	@ResponseBody
	public ResultVO<Object> addRoles(@RequestParam("userId") Integer userId, @RequestParam("roleIds") String roleIds) {
		// 添加角色
		if (StringUtil.isEmpty(roleIds)) {
			return ResultVO.fail("别乱提交数据", null, null);
		}
		boolean flag = roleService.addUserRole(userId, roleIds);
		if (flag) {
			return ResultVO.success("角色添加完成", null, null);
		}
		return ResultVO.fail("角色添加失败", null, null);

	}

	@RequestMapping("removeRole")
	@ResponseBody
	public ResultVO<Object> deleteRoleById(@RequestParam("userId") Integer userId,
			@RequestParam("roleIds") String roleIds) {

		if (userId == null || StringUtil.isEmpty(roleIds)) {
			return ResultVO.fail("别乱提交数据", null, null);
		}

		Boolean bool = this.roleService.deleteRoleById(userId, roleIds);

		if (bool) {
			return ResultVO.success("角色删除成功!", null, null);
		}
		return ResultVO.success("角色删除成功!", null, null);

	}

	/**
	 * 查询用户的角色，userid空时查询所有的角色
	 * 
	 * @param userId
	 * @param model
	 * @return
	 */
	@RequestMapping("userRole")
	@ResponseBody
	public List<TbRole> rolehtml(@RequestParam(value = "userId", required = false) Integer userId, Model model) {
		// 1、拿到用户id
		if (userId == null) {
			// 所有角色
			List<TbRole> roles = roleService.getAllRoles();
			model.addAttribute("roles", roles);
			return roles;
		}

		// 获取用户已经有的角色
		List<TbRole> userRoles = roleService.getUserRoles(userId);

		model.addAttribute("userRoles", userRoles);

		return userRoles;
	}
	
	/**
	 * 密码修改
	 * @param oldPassword
	 * @param loginname
	 * @param userId
	 * @param password
	 * @return
	 */
	@RequestMapping("updatePossword")
	@ResponseBody
	public ResultVO<Object> updatePassword(
			@RequestParam("oldPassword") String oldPassword, 
			TbUser user){
	
			if (user == null) {
				return ResultVO.fail("提交异常，请联系管理员！", null, null);
			}
			Boolean bool = this.userService.updatePassword(oldPassword,user);
			if (bool) {
				System.err.println("修改成功");
				return ResultVO.success("密码修改成功！", null, null);
			}
			
			return ResultVO.fail("密码修改失败", null, null);
		
	}


}
