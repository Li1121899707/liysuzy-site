package com.liysite.others;

public class PositionSix extends OntamaPosition {

	public PositionSix() {
		attach();
		/*setPosition("six");*/
		setPosition("ÁùºÅÎ»");
	}
	
	@Override
	public void attach() {
		OntamaAttr atkAdd = new AttrATKAdd();
		OntamaAttr hpAdd = new AttrHPAdd();
		OntamaAttr defAdd = new AttrDEFAdd();
		OntamaAttr crit = new AttrCrit();
		OntamaAttr critDmg = new AttrCritDMG();
		
		positionList.add(atkAdd);
		positionList.add(hpAdd);
		positionList.add(defAdd);
		positionList.add(crit);
		positionList.add(critDmg);

	}

}
