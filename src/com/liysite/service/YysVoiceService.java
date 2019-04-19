package com.liysite.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.liysite.beans.Onmyoji;
import com.liysite.mapper.YysVoiceMapper;

@Service
public class YysVoiceService {
	@Autowired
	private YysVoiceMapper yysVoiceMapper;
	
	public List<Onmyoji> selectYysVoiceToPage(int index, int shiid, String vttype) {
		return yysVoiceMapper.selectYysVoiceToPage(index, shiid, vttype);
	}
	
	public int pagecount(int shiid, String vttype) {
		return yysVoiceMapper.pagecount(shiid, vttype);
	}
	
	public List<Onmyoji> getShiShenJson() {
		return yysVoiceMapper.getShiShenJson();
	}
}
