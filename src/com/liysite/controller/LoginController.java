package com.liysite.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.liysite.beans.UserInfo;
import com.liysite.service.LoginService;


@Controller
@RequestMapping("/login")/*ģ�������·��*/
public class LoginController {
	
	//�Զ�ע�룬������ƥ�����ע����̡�ע�뼴��ֵ�Ĺ��̡�
	@Autowired
	private LoginService loginService;
	
	@RequestMapping("/loginValidate")
	public String list(LoginForm loginForm, Model model) {//Model �൱��Map
		
		List<UserInfo> resultList = loginService.selectUserInfoByInfo(loginForm);
		System.out.println(resultList.size());
		
		int status = 0;
		if(resultList.size()!=0) {
			status = 1;
		}
		//����Model�����ݴ��ݸ���ͼ��
		model.addAttribute("status", status);
		return "/login";
	}
}
