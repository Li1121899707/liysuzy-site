package com.liysite.beans;

public class UserInfo {
	private Integer userId;
	private String userName;
	private String userPhone;
	private String userPwd;

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

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

	@Override
	public String toString() {
		return "UserInfo [userId=" + userId + ", userName=" + userName + ", userPhone=" + userPhone + ", userPwd="
				+ userPwd + "]";
	}

}
