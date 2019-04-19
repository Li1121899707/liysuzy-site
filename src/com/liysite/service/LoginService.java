package com.liysite.service;
/*
 *@Serviceע�����ڱ�עҵ�����ࡣ
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
		//Form�����ֻ�ܳ�����ҵ��㣬����������ڳ־ò�
		//��Form�����еı����ݿ�����ʵ�����
		//�����
		//�������Ҫ���������ݴ���ŵ�Controller
		UserInfo userInfo = new UserInfo();
		BeanUtils.copyProperties(loginForm, userInfo);
/*		if(userInfo.getUserPhone()!=null && !userInfo.getUserPhone().equals("")) {
			userInfo.setUserPhone("%" + userInfo.getUserPhone() + "%");
		}*/
		
		return loginMapper.selectUserInfoByInfo(userInfo);
	}
}
