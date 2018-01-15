package com.atwangsi.base.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class MyListener implements ServletContextListener {


	//初始化项目
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		// TODO Auto-generated method stub
				ServletContext context = sce.getServletContext();
				//获取绝对路径
				context.setAttribute("ctp", context.getContextPath());
//				System.err.println("------------------" + context.getContextPath());
			
	}

	
	//项目销毁
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		}

}
