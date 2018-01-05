package com.atwangsi.base.model;

public class ResultPW {
	
	private String oldPassword;
	
	private Integer userId;
	
	private String loginname;
	
	private String password;
	
	public ResultPW() {
		super();
	}

	public ResultPW(String oldPassword, Integer userId, String loginname, String password) {
		super();
		this.oldPassword = oldPassword;
		this.userId = userId;
		this.loginname = loginname;
		this.password = password;
	}

	public String getOldPassword() {
		return oldPassword;
	}

	public void setOldPassword(String oldPassword) {
		this.oldPassword = oldPassword;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getLoginname() {
		return loginname;
	}

	public void setLoginname(String loginname) {
		this.loginname = loginname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
