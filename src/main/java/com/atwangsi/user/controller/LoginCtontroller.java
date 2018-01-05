package com.atwangsi.user.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.atwangsi.base.model.AppContant;
import com.atwangsi.user.model.TbPermission;
import com.atwangsi.user.model.TbUser;
import com.atwangsi.user.service.PermissionService;
import com.atwangsi.user.service.UserService;

@Controller
public class LoginCtontroller {

	@Autowired
	private UserService userService;

	@Autowired
	private PermissionService permissionService;

	/**
	 * 显示登录页 整合页面ok
	 * 
	 * @param username
	 * @param password
	 * @return
	 */
	@RequestMapping(value = "login.html")
	public ModelAndView showLogin(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("login");
		String parameter = request.getParameter("msg");
		if (!StringUtils.isEmpty(parameter)) {
			request.setAttribute("msg", parameter);
		}
		return mv;
	}

	/**
	 * 登录操作 整合页面ok
	 * 
	 * @param user
	 * @param session
	 * @param attributes
	 * @return
	 */
	@RequestMapping(value = "userlogin", method = { RequestMethod.POST, RequestMethod.GET })
	public String login(TbUser user, HttpSession session, RedirectAttributes attributes) {

		// 清除之前的session
		clearLoginSession(session);
		// 执行登录操作,存入session中
		TbUser loginUser = userService.login(user);
		// 通过判断ticket值来决定用户是否登录
		if (StringUtils.isEmpty(loginUser)) {
			// 登录失败
			attributes.addAttribute("msg", "用户名或密码有误!d");

			return "redirect:/login.html";
		} else {
			// 登录成功
			session.setAttribute(AppContant.LOGIN_USER, loginUser);
			return "redirect:/indexcommen.html";
		}
	}


	/**
	 * 登录之后来到主页 整合页面ok
	 * 
	 * @param session
	 * @param attributes
	 * @return
	 */
	@RequestMapping("/indexcommen.html")
	public String showIndexcommen(HttpSession session, RedirectAttributes attributes) {

		// 获取域对象中的登录信息
		TbUser loginUser = (TbUser) session.getAttribute(AppContant.LOGIN_USER);

		if (loginUser == null) {
			attributes.addAttribute("msg", "您尚未登录，请重新登录！");
			return "redirect:/login.html";
		}
		if (session.getAttribute(AppContant.MANAGER_MENUS) == null) {
			List<TbPermission> menus = this.permissionService.getUserMenus(loginUser.getUserId());
			// 登录成功的情况
			session.setAttribute(AppContant.MANAGER_MENUS, menus);
		}

		return "indexcommen";

	}

	/**
	 * 退出登录的操作
	 * 
	 * @param session
	 * @return
	 */
	@RequestMapping("logout.html")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login.html";

	}

	private void clearLoginSession(HttpSession session) {
		session.removeAttribute(AppContant.LOGIN_USER);
		session.removeAttribute(AppContant.MANAGER_MENUS);
	}

}
