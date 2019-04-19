package com.liysite.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
/*SpringMVC �������ֿ�������һ���Ǻ��Ŀ���������web.xml�ļ�������
 * 						��һ����ҵ������������ɿ������Լ���������ά����
 * 
 * ҵ�������ͨ����@Controllerע�����Ρ�
 * @RequestMapping ע���������η�����Ҳ���������࣬����ͨ��
 * ��ע���ƶ�Ҫ���������·����
 * ҵ��������еķ�����Ϊҵ����Ʒ�����ҵ����Ʒ������ص����߼���ͼ����
 * ����Ӧ����ʵ��������ͼ��
 * 
 * Restful �����
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
