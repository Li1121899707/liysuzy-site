package com.liysite.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.liysite.beans.Capriccio;
import com.liysite.service.CapriccioService;
import com.liysite.util.PageUtil;
import com.sun.org.apache.xpath.internal.operations.Mod;

@Controller
@RequestMapping("/capriccio")
public class CapriccioController {
	
	@Autowired
	private CapriccioService capriccioService;
	
	@RequestMapping("/create")
	public String create(CapriccioForm capriccioForm, Model model) {
		Integer result = capriccioService.createCapriccioByInfo(capriccioForm);//������Ŀ
		
		if(0 != result){
			return "redirect:/capriccio/create?complete";
		}else {
			model.addAttribute("createFailure", "��������ʧ�ܣ�");
			return "/capriccio_add";
		}
	}
	
	@RequestMapping(value="/create", params= {"complete"}, method=RequestMethod.GET)
	public String createComplete(Model model) {
		model.addAttribute("createSuccess", "��������ɹ�");
		return "/capriccio_manage";
	}
	
	
	/*public String list(Model model) {
		List<Capriccio> list = capriccioService.selectCapriccioByInfo();
		model.addAttribute("selectCapriccioAllResult", list);
		return "/capriccio_manage";
	}*/
	@RequestMapping("/list")
	public String list(HttpServletRequest request, Model model) {
		
		int pageIndex = 1;
		int pageSize = 8;
		
		PageUtil<Capriccio> pageUtil = new PageUtil<Capriccio>();
		List<Capriccio> list = new ArrayList<Capriccio>();
		
		if(request.getParameter("pageIndex")!=null) {
			pageIndex = Integer.parseInt((String)request.getParameter("pageIndex"));
		}
		
		pageUtil.setPageIndex(pageIndex);
		
		int pageNumber = capriccioService.pagecount();
		pageUtil.setPageNumber(pageNumber);
		pageUtil.setPageSize(pageSize);
		
		if((int)pageUtil.getPageNumber() % (int)pageUtil.getPageSize() ==0){
            pageUtil.setPageCount((int) Math.ceil((double) (pageUtil
                    .getPageNumber() / pageUtil.getPageSize())));
        }else{
            pageUtil.setPageCount((int) Math.ceil((double) (pageUtil
                    .getPageNumber() / pageUtil.getPageSize()))+1);
        }
		
		int index = (pageIndex -1) * pageSize;
		list = capriccioService.selectCapriccioToPage(index);
		
		pageUtil.setList(list);
		
		model.addAttribute("pageUtil", pageUtil);
		
		return "/capriccio_manage";
	}
	
	@RequestMapping(value="/{capid}/update", params= {"form"})
	public String updateForm(@PathVariable("capid") Integer capid, Model model) {
		Capriccio capriccio = new Capriccio();
		capriccio = capriccioService.selectCapriccioOne(capid);
		if(capriccio!=null) {
			model.addAttribute("updateInfo", capriccio);
		}else {
			model.addAttribute("updateInfo", "û�������ݿ��ѯ��������Ϣ��");
			return "/capriccio_manage";
		}
		return "/capriccio_change";
	}
	
	/*
	 * ǰ�˴������ĺ�����ݣ����и��£�������³ɹ������ض���complete�������������ʧ�ܣ�������ҳ��ʾ����ʧ��
	 */
	@RequestMapping(value="/{capid}/update", params= {"update"}, method=RequestMethod.POST)
	public String update(@PathVariable("capid") Integer capid , Capriccio capriccio, Model model) {
		System.out.println("+++++++++++++++" + capid);
		System.out.println("+++++++++++++" + capriccio.getCapNote());
		System.out.println("+++++++++++++" + capriccio.getCapMusic());
		System.out.println("+++++++++++++" + capriccio.getCapLink());
		System.out.println("+++++++++++++" + capriccio.getCapFavor());
		capriccio.setCapId(capid);
		Integer result = capriccioService.updateCapriccioOne(capriccio);
		if(result!=0) {
			return "redirect:/capriccio/" + capid + "/update?complete";
		}else {
			model.addAttribute("updateFailure", "������Ŀ����ʧ��!");
			return "/capriccio_change";
		}
	}
	
	@RequestMapping(value="/{capid}/update", params= {"complete"}, method=RequestMethod.GET)
	public String updateComplete(Model model) {
		model.addAttribute("updateSuccess", "���³ɹ���");
		return "redirect:/capriccio/list";
	}
}
