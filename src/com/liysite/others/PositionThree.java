package com.liysite.others;

public class PositionThree extends OntamaPosition {

	public PositionThree() {
		attach();
		/*setPosition("three");*/
		setPosition("����λ");
	}
	
	@Override
	public void attach() {
		OntamaAttr def = new AttrDEF();
		positionList.add(def);
	}

}
