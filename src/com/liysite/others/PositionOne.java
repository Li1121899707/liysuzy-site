package com.liysite.others;

public class PositionOne extends OntamaPosition {

	public PositionOne() {
		attach();
		/*setPosition("one");*/
		setPosition("һ��λ");
	}
	
	@Override
	public void attach() {
		OntamaAttr attr = new AttrATK();
		positionList.add(attr);
	}

}
