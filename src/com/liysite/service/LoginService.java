package com.liysite.service;
/*
 *@Service注解用于标注业务层的类。
 */

import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.liysite.beans.UserInfo;
import com.liysite.controller.LoginForm;
import com.liysite.mapper.LoginMapper;



@Service
public class LoginService {
	
	@Autowired
	private LoginMapper loginMapper;
	
	public List<UserInfo> selectUserInfoByInfo(LoginForm loginForm){
		//Form类最多只能出现在业务层，不允许出现在持久层
		//把Form对象中的表单数据拷贝到实体对象
		//高耦合
		//低耦合需要将拷贝数据代码放到Controller
		UserInfo userInfo = new UserInfo();
		BeanUtils.copyProperties(loginForm, userInfo);
/*		if(userInfo.getUserPhone()!=null && !userInfo.getUserPhone().equals("")) {
			userInfo.setUserPhone("%" + userInfo.getUserPhone() + "%");
		}*/
		
		return loginMapper.selectUserInfoByInfo(userInfo);
	}
}
