package com.atwangsi.user.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.atwangsi.base.model.AppContant;
import com.atwangsi.base.model.ResultVO;
import com.atwangsi.base.utils.FileDown;
import com.atwangsi.base.utils.HDYXUtils;
import com.atwangsi.base.utils.StringUtil;
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
	 * 根据省份进行模糊查询，写入文件，导出文件
	 * @param province
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "fileExportByProvince", method = {RequestMethod.POST,RequestMethod.GET})
	@ResponseBody
	public ResultVO<Object> fileDownByProvinceLike(
			@RequestParam("operationId") Integer operationId,
			@RequestParam("province")String province,HttpServletResponse response){
		//定义的文件名
		String fileName = "用户导出信息";
		//第三个参数：需要导出的字段  
		
		//获取用户信息模板
		HSSFWorkbook workbook = FileDown.fileDown(HDYXUtils.userDownFile());
		
		List<TbUser> users = this.userService.querryByLikeByProvince(province,operationId);
		
		HDYXUtils.intoUserMsgtoFile(workbook,users);
		
		//提交到response
		HDYXUtils.subResponse(fileName,workbook,response);
		
		return ResultVO.success("下载完成", null, null);
	}
	
	/**
	 * 根据真实姓名进行模糊查询，写入文件，进行文件导出
	 * @param idName
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "fileExportByIdName", method = {RequestMethod.POST,RequestMethod.GET})
	@ResponseBody
	public ResultVO<Object> fileDownByIdNameLike(@RequestParam("idName")String idName,HttpServletResponse response){
		//定义的文件名
		String fileName = "用户导出信息";
		//第三个参数：需要导出的字段  
		
		//获取用户信息模板
		HSSFWorkbook workbook = FileDown.fileDown(HDYXUtils.userDownFile());
		
		List<TbUser> users = this.userService.querryByLikeByIdName(idName);
		
		HDYXUtils.intoUserMsgtoFile(workbook,users);
		
		//提交到response
		HDYXUtils.subResponse(fileName,workbook,response);
		
		return ResultVO.success("下载完成", null, null);
	}
	
	/**
	 * 根据用户名进行模糊查询，写入文件，进行文件导出操作
	 * @param userName
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "fileExportByUserName", method = {RequestMethod.POST,RequestMethod.GET})
	@ResponseBody
	public ResultVO<Object> fileDownByUserNameLike(@RequestParam("userName")String userName,@RequestParam("operationId") Integer operationId ,HttpServletResponse response){
		//定义的文件名
		String fileName = "用户导出信息";
		//第三个参数：需要导出的字段  
		List<String> list = HDYXUtils.userDownFile();
		list.add("创建时间");
		//获取用户信息模板
		HSSFWorkbook workbook = FileDown.fileDown(list);
		
		List<TbUser> users = this.userService.querryByLike(userName,operationId);
		
		HDYXUtils.intoUserMsgtoFile(workbook,users);
		
		//提交到response
		HDYXUtils.subResponse(fileName,workbook,response);
		
		return ResultVO.success("下载完成", null, null);
	}
	
	/**
	 * 读取文件的数据
	 * 仅限于.xls文件
	 * @param file
	 * @return
	 */
	@RequestMapping(value="importFile" ,method=RequestMethod.POST)
	@ResponseBody
	public ResultVO<Object> importMsg(@RequestParam("file") MultipartFile file,
						@RequestParam("operationId") Integer operationId){
		//执行操作
		ResultVO<Object> result = this.userService.importMsg(file,operationId);
		return result;
	}
	
	/**
	 * 下载用户信息基本模板
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "down", method = {RequestMethod.POST,RequestMethod.GET})
	@ResponseBody
	public ResultVO<Object> fileDown(HttpServletResponse response){
		//定义的文件名
		String fileName = "用户信息导入模板";
		//第三个参数：需要导出的字段  
		//获取用户信息模板
		HSSFWorkbook workbook = FileDown.fileDown(HDYXUtils.userDownFile());
		
		//提交到response
		HDYXUtils.subResponse(fileName,workbook,response);
		
		return ResultVO.success("下载完成", null, null);
	}
	
	/**
	 * 检验练习方式是否唯一
	 * @param phone
	 * @return
	 */
	@RequestMapping("checkoutBypPone")
	@ResponseBody
	public ResultVO<Object> checkoutByPhone(@RequestParam("phone") String phone){
		
		Boolean bool = this.userService.checkoutByPhone(phone);
		if (bool) {
			return ResultVO.success("账号已存在!", null, null);
		}
		return ResultVO.success("账号可以使用!", null, null);
		
	}
	
	/**
	 * 检查用户账号是否唯一
	 * @param loginname
	 * @return
	 */
	@RequestMapping("checkoutByLoginName")
	@ResponseBody
	public ResultVO<Object> checkoutByLoginName(@RequestParam("loginname") String loginname){
		
		Boolean bool = this.userService.checkoutByLoginName(loginname);
		if (bool) {
			return ResultVO.success("账号已存在!", null, null);
		}
		return ResultVO.success("账号可以使用!", null, null);
	}
	
	
	/**
	 * 根据业务id查询所用用户信息
	 * 1为业务，2为客户
	 * @param pageNum
	 * @param pageSize
	 * @param operationId
	 * @return
	 */
	@RequestMapping("querryByOperationId")
	@ResponseBody
	public PageInfo<TbUser> querryByOperationId(
			@RequestParam(value = "pn", defaultValue = "1") Integer pageNum,
			@RequestParam(value = "ps", defaultValue = "7") Integer pageSize,
			@RequestParam("operationId") Integer operationId){
		
		PageHelper.startPage(pageNum, pageSize);
		
		List<TbUser> userList = this.userService.querryByOperationId(operationId);
		
		return new PageInfo<>(userList, AppContant.PAGE_SIZE);
		
	}
	
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
		
//		PageHelper.startPage(pageNum, pageSize);
		
		List<TbUser> list =this.userService.querryByLike(userName);
		
		return new PageInfo<>(list, list.size());
	}

	/**
	 * 增加用户 ok 但是loginname不能做到唯一用户，待处理
	 * 
	 * @param user
	 * @return
	 */
	@RequestMapping(value = "add")
	@ResponseBody
	public ResultVO<Object> saveUser(TbUser user) {
		//创建时间
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
//	@RequestMapping("querryByOperationId")
//	@ResponseBody
//	public PageInfo<TbUser> userList(@RequestParam(value = "pn", defaultValue = "1") Integer pageNum,
//			@RequestParam(value = ("ps"), defaultValue = "7") Integer pageSize,
//			@RequestParam("operationId") Integer operationId) {
//
//		PageHelper.startPage(pageNum, pageSize);
//		if (operationId != null) {
//			return new PageInfo<>(this.userService.querryByOperationId(operationId), AppContant.PAGE_SIZE);
//		}
//		return null;
//	}
//	
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

	/**
	 * 删除用户角色
	 * @param userId
	 * @param roleIds
	 * @return
	 */
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
//	//页面跳转
//	@RequestMapping("updatePossword")
//	public String updatePassword(@RequestParam("oldPassword") String oldPassword, 
//			@RequestParam("userId") Integer userId,RedirectAttributes attributes){
//	
//			if (HDYXUtils.isNull(userId)) {
//				//冲定向到登录页面
//				return "redirect:/updatePassword.html";
//			}
//			Boolean bool = this.userService.updatePassword(oldPassword,userId);
//			if (bool) {
//				attributes.addAttribute("msg", "修改成功");
//				return "/login.html";
//			}
//			
//			return "redirect:/updatePassword.html";
//		
//	}


}
