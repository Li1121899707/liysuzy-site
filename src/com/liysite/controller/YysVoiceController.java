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
import org.springframework.web.bind.annotation.ResponseBody;

import com.liysite.beans.Onmyoji;
import com.liysite.service.YysVoiceService;
import com.liysite.util.PageUtil;

@Controller
@RequestMapping("/yysvoices")
public class YysVoiceController {

	@Autowired
	private YysVoiceService yysVoiceService;

	@RequestMapping("/{shiid}/{vttype}/list")
	public String list(@PathVariable("shiid") Integer shiid, @PathVariable("vttype") String vttype,
			HttpServletRequest request, Model model) {
		int pageIndex = 0;
		int pageSize = 1;

		PageUtil<Onmyoji> pageUtil = new PageUtil<Onmyoji>();
		List<Onmyoji> list = new ArrayList<Onmyoji>();

		if (request.getParameter("pageIndex") != null) {
			pageIndex = Integer.parseInt((String) request.getParameter("pageIndex"));
		}

		pageUtil.setPageIndex(pageIndex);

		int pageNumber = yysVoiceService.pagecount(shiid, vttype);
		pageUtil.setPageNumber(pageNumber);
		pageUtil.setPageSize(pageSize);

		if ((int) pageUtil.getPageNumber() % (int) pageUtil.getPageSize() == 0) {
			pageUtil.setPageCount((int) Math.ceil((double) (pageUtil.getPageNumber() / pageUtil.getPageSize())));
		} else {
			pageUtil.setPageCount((int) Math.ceil((double) (pageUtil.getPageNumber() / pageUtil.getPageSize())) + 1);
		}

		int index = (pageIndex - 1) * pageSize;
		list = yysVoiceService.selectYysVoiceToPage(pageIndex, shiid, vttype);

		pageUtil.setList(list);

		model.addAttribute("pageUtil", pageUtil);
		model.addAttribute("shiidlistnull", shiid);
		return "yys_voice_list";
	}

	@RequestMapping("/about")
	public String aboutTransport() {
		return "yys_voice_about";
	}

	@RequestMapping("/getShiShenJson")
	public @ResponseBody List<ShiShenForm> getShiShenJson() {
		List<Onmyoji> shishenlist = yysVoiceService.getShiShenJson();
		List<ShiShenForm> shiShenForms = new ArrayList<ShiShenForm>();
		
		for (Onmyoji list : shishenlist) {
			ShiShenForm shenForm = new ShiShenForm();
			BeanUtils.copyProperties(list, shenForm);
			shiShenForms.add(shenForm);
		}
		
		return shiShenForms;
	}
}
