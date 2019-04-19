package com.liysite.others;

import java.util.ArrayList;
import java.util.List;

public abstract class OntamaPosition {
	public List<OntamaAttr> positionList = new ArrayList<OntamaAttr>();
	public RandomCreator randomCreator = new RandomCreator();

	private String position;

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public abstract void attach();

	public String getRandomPrimeAttr() {
		if (1 == positionList.size()) {
			return positionList.get(0).getAttrDiscription();
		} else if (0 == positionList.size())
			return "获取主属性错误！";
		else {
			int randomPrimeAttr = randomCreator.randomOne(0, positionList.size() - 1);
			return positionList.get(randomPrimeAttr).getAttrDiscription();
		}
	}
}
