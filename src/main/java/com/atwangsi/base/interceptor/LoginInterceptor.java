package com.atwangsi.base.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.atwangsi.base.model.AppContant;

public class LoginInterceptor implements HandlerInterceptor {

	/**
	 * 拦截
	 */
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		//检查是否登陆了，如果没登陆则跳到登陆页面
		HttpSession session = request.getSession();
		Object attribute = session.getAttribute(AppContant.LOGIN_USER);
		if(attribute!=null){
			return true;
		}
		request.setAttribute("msg", "你还没有登陆！请先登陆！");
		request.getRequestDispatcher("/login.html").forward(request, response);
		
		return false;
	}

	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
	}

	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
	}

}
