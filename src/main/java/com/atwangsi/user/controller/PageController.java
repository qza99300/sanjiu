package com.atwangsi.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 通用跳转
 * @author ou
 *
 */
@RequestMapping("page")
@Controller
public class PageController {
	
	//通用的controller跳转
	@RequestMapping(value="{pageName}")
	public ModelAndView toPage(@PathVariable("pageName") String pageName){
		ModelAndView view = new ModelAndView(pageName);
		return view;
	}
}
