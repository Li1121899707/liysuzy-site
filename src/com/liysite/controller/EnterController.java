package com.liysite.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
/*SpringMVC 存在两种控制器，一种是核心控制器，在web.xml文件中配置
 * 						另一种是业务控制器，是由开发者自己创建并且维护。
 * 
 * 业务控制器通常由@Controller注解修饰。
 * @RequestMapping 注解用于修饰方法，也可以修饰类，可以通过
 * 该注解制定要处理的请求路径。
 * 业务控制器中的方法称为业务控制方法，业务控制方法返回的是逻辑视图名，
 * 即对应的是实际物理视图。
 * 
 * Restful 风格编程
 */

@Controller
public class EnterController {
	
	@RequestMapping("/enter")
	public String enterValidate() {
		return "/login";
	}
	
	@RequestMapping("/yysvoice")
	public String yysVoiceIndex() {
		return "yys_voice_list";
	}
	
	@RequestMapping("/yysontama")
	public String yysOntamaIndex() {
		return "yys_ontama_list";
	}
	
	@RequestMapping("/yysabout")
	public String aboutValidate() {
		return "/yys_about";
	}
}
