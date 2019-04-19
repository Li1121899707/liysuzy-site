package com.liysite.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.liysite.beans.Onmyoji;
import com.liysite.mapper.OnmyojiVoiceMapper;

@Service
public class OnmyojiVoiceService {
	@Autowired
	private OnmyojiVoiceMapper onmyojiVoiceMapper;
	
	public List<Onmyoji> selectOnmyojiVoiceToPage(int index) {
		return onmyojiVoiceMapper.selectOnmyojiVoiceToPage(index);
	}
	
	public int pagecount() {
		return onmyojiVoiceMapper.pagecount();
	}
}
