package com.liysite.others;

public class PositionFive extends OntamaPosition {

	public PositionFive() {
		attach();
		/*setPosition("five");*/
		setPosition("���λ");
	}
	
	@Override
	public void attach() {
		OntamaAttr hp = new AttrHP();
		positionList.add(hp);
	}

}
