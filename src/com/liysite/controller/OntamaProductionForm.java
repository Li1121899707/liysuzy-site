package com.liysite.controller;

public class OntamaProductionForm {
	private Integer ontamaId;
	private String ontamaStarEn;
	private String ontamaStarZh;
	private String ontamaTypeZh;
	private String position;
	private String attr1;
	private String attr2;
	private String attr3;
	private String attr4;
	private String attr5;
	private Float attrNum1 = (float) 0;
	private Float attrNum2 = (float) 0;
	private Float attrNum3 = (float) 0;
	private Float attrNum4 = (float) 0;
	private Float attrNum5 = (float) 0;
	private Integer attrSumNum;
	private String twoEffect;
	private String fourEffect;

	public Integer getOntamaId() {
		return ontamaId;
	}
	public void setOntamaId(Integer ontamaId) {
		this.ontamaId = ontamaId;
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
	public String getOntamaTypeZh() {
		return ontamaTypeZh;
	}
	public void setOntamaTypeZh(String ontamaTypeZh) {
		this.ontamaTypeZh = ontamaTypeZh;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getAttr1() {
		return attr1;
	}
	public void setAttr1(String attr1) {
		this.attr1 = attr1;
	}
	public String getAttr2() {
		return attr2;
	}
	public void setAttr2(String attr2) {
		this.attr2 = attr2;
	}
	public String getAttr3() {
		return attr3;
	}
	public void setAttr3(String attr3) {
		this.attr3 = attr3;
	}
	public String getAttr4() {
		return attr4;
	}
	public void setAttr4(String attr4) {
		this.attr4 = attr4;
	}
	public String getAttr5() {
		return attr5;
	}
	public void setAttr5(String attr5) {
		this.attr5 = attr5;
	}
	public Integer getAttrSumNum() {
		return attrSumNum;
	}
	public void setAttrSumNum(Integer attrSumNum) {
		this.attrSumNum = attrSumNum;
	}
	public String getTwoEffect() {
		return twoEffect;
	}
	public void setTwoEffect(String twoEffect) {
		this.twoEffect = twoEffect;
	}
	
	public String getFourEffect() {
		return fourEffect;
	}
	public void setFourEffect(String fourEffect) {
		this.fourEffect = fourEffect;
	}
	public Float getAttrNum1() {
		return attrNum1;
	}
	public void setAttrNum1(Float attrNum1) {
		this.attrNum1 = attrNum1;
	}
	public Float getAttrNum2() {
		return attrNum2;
	}
	public void setAttrNum2(Float attrNum2) {
		this.attrNum2 = attrNum2;
	}
	public Float getAttrNum3() {
		return attrNum3;
	}
	public void setAttrNum3(Float attrNum3) {
		this.attrNum3 = attrNum3;
	}
	public Float getAttrNum4() {
		return attrNum4;
	}
	public void setAttrNum4(Float attrNum4) {
		this.attrNum4 = attrNum4;
	}
	public Float getAttrNum5() {
		return attrNum5;
	}
	public void setAttrNum5(Float attrNum5) {
		this.attrNum5 = attrNum5;
	}
	public void setAttr(int i, String attr) {
		switch (i) {
		case 0:
			setAttr1(attr);
			break;
		case 1:
			setAttr2(attr);
			break;
		case 2:
			setAttr3(attr);
			break;
		case 3:
			setAttr4(attr);
			break;
		case 4:
			setAttr5(attr);
			break;
		default:
			break;
		}
	}
	
	public String getAttr(int i) {
		String result = "";
		switch (i) {
		case 0:
			result = getAttr1();
			break;
		case 1:
			result = getAttr2();
			break;
		case 2:
			result = getAttr3();
			break;
		case 3:
			result = getAttr4();
			break;
		case 4:
			result = getAttr5();
			break;
		default:
			break;
		}
		return result;
	}
	
	
	public void setAttrNum(int i, Float attrNum) {
		switch (i) {
		case 0:
			setAttrNum1(attrNum);
			break;
		case 1:
			setAttrNum2(attrNum);
			break;
		case 2:
			setAttrNum3(attrNum);
			break;
		case 3:
			setAttrNum4(attrNum);
			break;
		case 4:
			setAttrNum5(attrNum);
			break;
		default:
			break;
		}
	}
	
	public float getAttrNum(int i) {
		float result = 0;
		switch (i) {
		case 0:
			result = getAttrNum1();
			break;
		case 1:
			result = getAttrNum2();
			break;
		case 2:
			result = getAttrNum3();
			break;
		case 3:
			result = getAttrNum4();
			break;
		case 4:
			result = getAttrNum5();
			break;
		default:
			break;
		}
		return result;
	}
}
