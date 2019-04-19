package com.liysite.others;

public class PositionFour extends OntamaPosition {

	public PositionFour() {
		attach();
		/*setPosition("four");*/
		setPosition("ËÄºÅÎ»");
	}
	
	@Override
	public void attach() {
		OntamaAttr atkAdd = new AttrATKAdd();
		OntamaAttr hpAdd = new AttrHPAdd();
		OntamaAttr defAdd = new AttrDEFAdd();
		OntamaAttr effectHit = new AttrEffectHit();
		OntamaAttr effectRes = new AttrEffectRes();
		
		positionList.add(atkAdd);
		positionList.add(hpAdd);
		positionList.add(defAdd);
		positionList.add(effectHit);
		positionList.add(effectRes);
	}

}
