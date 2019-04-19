package com.liysite.beans;

public class OntamaDetail {

	/*数据库中Ontama字段*/
	/*yys_ontama_attr表*/
	private Integer ontamaAttrId;	//御魂 属性id
	private String ontamaAttrEn;	//御魂 属性英文名
	private String ontamaAttrZh;	//御魂 属性中文名
	
	/*yys_ontama_prime_attr表*/
	private Integer ontamaPrimeAttrnumId;	//御魂 主属性数值表id
	private Float ontamaPrimeAttrnumInitnum;	//御魂 主属性初始值
	private Float ontamaPrimeAttrnumAddnum;		//御魂 主属性加点
	
	/*yys_ontama_star表*/
	private Integer ontamaStarId;	//御魂 星级id
	private String ontamaStarEn;	//御魂 星级英文
	private String ontamaStarZh;	//御魂 星级中文
	
	public Integer getOntamaAttrId() {
		return ontamaAttrId;
	}
	public void setOntamaAttrId(Integer ontamaAttrId) {
		this.ontamaAttrId = ontamaAttrId;
	}
	public String getOntamaAttrEn() {
		return ontamaAttrEn;
	}
	public void setOntamaAttrEn(String ontamaAttrEn) {
		this.ontamaAttrEn = ontamaAttrEn;
	}
	public String getOntamaAttrZh() {
		return ontamaAttrZh;
	}
	public void setOntamaAttrZh(String ontamaAttrZh) {
		this.ontamaAttrZh = ontamaAttrZh;
	}
	public Integer getOntamaPrimeAttrnumId() {
		return ontamaPrimeAttrnumId;
	}
	public void setOntamaPrimeAttrnumId(Integer ontamaPrimeAttrnumId) {
		this.ontamaPrimeAttrnumId = ontamaPrimeAttrnumId;
	}
	public Float getOntamaPrimeAttrnumInitnum() {
		return ontamaPrimeAttrnumInitnum;
	}
	public void setOntamaPrimeAttrnumInitnum(Float ontamaPrimeAttrnumInitnum) {
		this.ontamaPrimeAttrnumInitnum = ontamaPrimeAttrnumInitnum;
	}
	public Float getOntamaPrimeAttrnumAddnum() {
		return ontamaPrimeAttrnumAddnum;
	}
	public void setOntamaPrimeAttrnumAddnum(Float ontamaPrimeAttrnumAddnum) {
		this.ontamaPrimeAttrnumAddnum = ontamaPrimeAttrnumAddnum;
	}
	public Integer getOntamaStarId() {
		return ontamaStarId;
	}
	public void setOntamaStarId(Integer ontamaStarId) {
		this.ontamaStarId = ontamaStarId;
	}
	public String getOntamaStarEn() {
		return ontamaStarEn;
	}
	public void setOntamaStarEn(String ontamaStarEn) {
		this.ontamaStarEn = ontamaStarEn;
	}
	public String getOntamaStarZh() {
		return ontamaStarZh;
	}
	public void setOntamaStarZh(String ontamaStarZh) {
		this.ontamaStarZh = ontamaStarZh;
	}
	
}
