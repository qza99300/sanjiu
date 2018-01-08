package com.atwangsi.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.YamlProcessor.ResolutionMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.atwangsi.user.model.TbUser;
import com.atwangsi.user.service.UserService;

/**
 * 通用跳转
 * @author ou
 *
 */
@RequestMapping("page")
@Controller
public class PageController {
	
//	@Autowired
//	private UserService userService;
	
	//通用的controller跳转
	@RequestMapping(value="{pageName}")
	public ModelAndView toPage(@PathVariable("pageName") String pageName){
		ModelAndView view = new ModelAndView(pageName);
		return view;
	}
	
//	@RequestMapping(value="list",method=RequestMethod.GET)
//	@ResponseBody
//	public ResponseEntity<Object> userList(){
////		List<TbUser> list = this.userService.getAllUser();
//		TbUser user = this.userService.querryUserById(1);
//		return ResponseEntity.status(HttpStatus.OK).body(user);
//				
//	}
}
