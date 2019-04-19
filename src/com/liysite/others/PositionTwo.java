package com.liysite.others;

public class PositionTwo extends OntamaPosition {

	public PositionTwo() {
		attach();
		/*setPosition("two");*/
		setPosition("¶þºÅÎ»");
	}
	
	@Override
	public void attach() {
		OntamaAttr atkAdd = new AttrATKAdd();
		OntamaAttr hpAdd = new AttrHPAdd();
		OntamaAttr defAdd = new AttrDEFAdd();
		OntamaAttr spd = new AttrSPD();
		
		positionList.add(atkAdd);
		positionList.add(hpAdd);
		positionList.add(defAdd);
		positionList.add(spd);
	}

}
