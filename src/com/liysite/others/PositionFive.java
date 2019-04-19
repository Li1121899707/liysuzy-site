package com.liysite.others;

public class PositionFive extends OntamaPosition {

	public PositionFive() {
		attach();
		/*setPosition("five");*/
		setPosition("ŒÂ∫≈Œª");
	}
	
	@Override
	public void attach() {
		OntamaAttr hp = new AttrHP();
		positionList.add(hp);
	}

}
