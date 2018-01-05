package com.atwangsi.base.model;

import org.springframework.stereotype.Component;

@Component
public class Result {
	private int code;//返回的数字
	private String message;//返回的内容
	private Object result;
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Object getResult() {
		return result;
	}
	public void setResult(Object result) {
		this.result = result;
	}
	
}
