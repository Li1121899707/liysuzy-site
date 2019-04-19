package com.liysite.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.liysite.beans.OntamaDetail;
import com.liysite.beans.OntamaType;

public interface OntamaTypeMapper {
	public List<OntamaType> selectAllOntamaTypeWorkingDay(@Param(value="week")String week);
	public List<OntamaType> selectAllOntamaTypeWeekend(@Param(value="week")String week);
	public OntamaDetail selectOneOntamaDetail(@Param(value="star")String star, @Param(value="attrName")String attrName);
}
