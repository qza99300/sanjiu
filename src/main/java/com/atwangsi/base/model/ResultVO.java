package com.atwangsi.base.model;

import java.util.Map;

public class ResultVO<T> {
	
	private int code = 0;//0成功，1表示失败
	private String msg = "响应成功";//给页面的提示信息
	private T content;//给页面的数据
	private Map<String, Object> ext;//额外自定义的数据
	
	
	
	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public T getContent() {
		return content;
	}

	public void setContent(T content) {
		this.content = content;
	}

	public Map<String, Object> getExt() {
		return ext;
	}

	public void setExt(Map<String, Object> ext) {
		this.ext = ext;
	}

	//成功
	public static<T> ResultVO<T> success(String msg,T obj,Map<String, Object> ext){
		ResultVO<T> resultVO = new ResultVO<T>();
		resultVO.code = 0;
		if(msg != null){
			resultVO.msg = msg;
		}
		resultVO.content = obj;
		resultVO.ext = ext;
		return resultVO;
	};
	
	//失败
	public static<T> ResultVO<T> fail(String msg,T obj,Map<String, Object> ext){
			ResultVO<T> resultVO = new ResultVO<T>();
			resultVO.code = 1;
			if(msg != null){
				resultVO.msg = msg;
			}
			resultVO.content = obj;
			resultVO.ext = ext;
			return resultVO;
	};

}