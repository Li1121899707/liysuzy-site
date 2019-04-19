package com.liysite.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.liysite.beans.Onmyoji;

public interface YysVoiceMapper {
	public List<Onmyoji> selectYysVoiceToPage(@Param("index") Integer index, @Param("shiid") Integer shiid,
			@Param("vttype") String vttype);

	public int pagecount(@Param("shiid") Integer shiid, @Param("vttype") String vttype);
	
	public List<Onmyoji> getShiShenJson();
}
