package com.liysite.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.liysite.beans.UserInfo;
import com.liysite.service.LoginService;


@Controller
@RequestMapping("/login")/*模块的请求路径*/
public class LoginController {
	
	//自动注入，按类型匹配完成注入过程。注入即赋值的过程。
	@Autowired
	private LoginService loginService;
	
	@RequestMapping("/loginValidate")
	public String list(LoginForm loginForm, Model model) {//Model 相当于Map
		
		List<UserInfo> resultList = loginService.selectUserInfoByInfo(loginForm);
		System.out.println(resultList.size());
		
		int status = 0;
		if(resultList.size()!=0) {
			status = 1;
		}
		//借助Model将数据传递给视图。
		model.addAttribute("status", status);
		return "/login";
	}
}
