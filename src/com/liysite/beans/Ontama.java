package com.liysite.beans;

import java.util.ArrayList;
import java.util.List;

public class Ontama {
	
	/*Ontama 随机生成属性*/
	private List<String> attrs = new ArrayList<String>();
	
	private String star;
	private String position;
	
	public String getStar() {
		return star;
	}
	public void setStar(String star) {
		this.star = star;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}

	
	public void addAttr(String attr) {
		attrs.add(attr);
	}
	
	public String getAttr(int i){
		if(i<attrs.size())
			return attrs.get(i);
		else
			return "overstep";
	}
	
	public int getSize() {
		return attrs.size();
	}
	
}
