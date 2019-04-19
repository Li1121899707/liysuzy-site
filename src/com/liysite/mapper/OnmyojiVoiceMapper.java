package com.liysite.mapper;

import java.util.List;


import com.liysite.beans.Onmyoji;

public interface OnmyojiVoiceMapper {
	public List<Onmyoji> selectOnmyojiVoiceToPage(int index);
	public int pagecount();
}
