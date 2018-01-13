package com.atwangsi.base.utils;

public class StringUtil {

	/**
	 * 检测字符串是否为null
	 * @param inStr
	 * @return
	 */
	public static boolean isEmpty(String inStr) {
		// TODO Auto-generated method stub
		if(inStr == null)
			return true;
		if(inStr.trim().equals(""))
			return true;
		
		return false;
	}

	
}
