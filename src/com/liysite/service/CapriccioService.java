package com.liysite.service;

import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.liysite.beans.Capriccio;
import com.liysite.controller.CapriccioForm;
import com.liysite.mapper.CapriccioMapper;

@Service
public class CapriccioService {
	
	@Autowired
	private CapriccioMapper capriccioMapper;
	
	public Integer createCapriccioByInfo(CapriccioForm capriccioForm) {
		Capriccio capriccio = new Capriccio();
		BeanUtils.copyProperties(capriccioForm, capriccio);
		int result = capriccioMapper.createCapriccioByInfo(capriccio);
		System.out.println(capriccio.getCapId());
		return result;
	}
	
	public List<Capriccio> selectCapriccioByInfo() {
		
		return capriccioMapper.selectCapriccioAll();
	}
	
	public List<Capriccio> selectCapriccioToPage(int index){
		return capriccioMapper.selectCapriccioToPage(index);
	}
	
	public int pagecount() {
		return capriccioMapper.pagecount();
	}
	
	public Capriccio selectCapriccioOne(int capid) {
		return capriccioMapper.selectCapriccioOne(capid);
	}
	
	public Integer updateCapriccioOne(Capriccio capriccio) {
		return capriccioMapper.updateCapriccioOne(capriccio);
	}
}
