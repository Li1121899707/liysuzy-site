package com.liysite.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/*
 * ²à±ßÀ¸ Ò³ÃæÌø×ª×ª»»
 */

@Controller
@RequestMapping("/sidenav")
public class SideNavController {
	
	@RequestMapping("/admin_index")
	public String navAdminIndex() {
		return "/admin_index";
	}
	
	@RequestMapping("/capriccio_add")
	public String navCapriccioAdd() {
		return "/capriccio_add";
	}
	
	@RequestMapping("/capriccio_manage")
	public String navCapriccioManage() {
		return "/capriccio_manage";
	}
	
	@RequestMapping("/music_add")
	public String navMusicAdd() {
		return "/music_add";
	}
	
	@RequestMapping("/music_manage")
	public String navMusicManage() {
		return "/music_manage";
	}
	
	@RequestMapping("/onmyoji_voice_manage")
	public String navOnmyojiVoiceManage() {
		return "/onmyoji_voice_manage";
	}

}
