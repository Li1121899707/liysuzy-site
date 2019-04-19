package com.liysite.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.liysite.beans.Onmyoji;
import com.liysite.service.OnmyojiVoiceService;
import com.liysite.util.PageUtil;

@Controller
@RequestMapping("/onmyojiVoice")
public class OnmyojiVoiceController {
	
	@Autowired
	private OnmyojiVoiceService onmyojiVoiceService;
	
	@RequestMapping("/list")
	public String list(HttpServletRequest request, Model model) {
		int pageIndex = 1;
		int pageSize = 8;
		
		PageUtil<Onmyoji> pageUtil = new PageUtil<Onmyoji>();
		List<Onmyoji> list = new ArrayList<Onmyoji>();
		
		if(request.getParameter("pageIndex")!=null) {
			pageIndex = Integer.parseInt((String)request.getParameter("pageIndex"));
		}
		
		pageUtil.setPageIndex(pageIndex);
		
		int pageNumber = onmyojiVoiceService.pagecount();
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
		list = onmyojiVoiceService.selectOnmyojiVoiceToPage(index);
		
		pageUtil.setList(list);
		
		model.addAttribute("pageUtil", pageUtil);
		
		return "/onmyoji_voice_manage";
	}
}
