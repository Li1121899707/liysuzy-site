package com.liysite.controller;

//这样的form类专门用于请求参数。请求参数就是表单控件数据。
public class LoginForm {
	// 成员变量名要求必须与页面中的控件中name属性一致！！！！！！！！！！
	private String userPhone;
	private String userPwd;

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

}
