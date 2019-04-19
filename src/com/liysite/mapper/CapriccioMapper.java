package com.liysite.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.liysite.beans.Capriccio;


public interface CapriccioMapper {

	public Integer createCapriccioByInfo(Capriccio capriccio);
	public List<Capriccio> selectCapriccioAll();
	public List<Capriccio> selectCapriccioToPage(int index);
	public Integer pagecount();
	public Capriccio selectCapriccioOne(@Param(value="capid")int capid);
	public Integer updateCapriccioOne(Capriccio capriccio);
}
