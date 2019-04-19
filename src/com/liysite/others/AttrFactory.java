package com.liysite.others;

import java.util.ArrayList;
import java.util.List;

public class AttrFactory {
	public List<OntamaAttr> oattrs = new ArrayList<OntamaAttr>();
	public RandomCreator randomCreator = new RandomCreator();
	
	public AttrFactory() {
		attach();
	}
	
	/*
	 * 属性添加到list中。（为了以后满足开闭原则）
	 */
	public void attach() {
		OntamaAttr atk = new AttrATK();
		OntamaAttr atkAdd = new AttrATKAdd();
		OntamaAttr crit = new AttrCrit();
		OntamaAttr critDmg = new AttrCritDMG();
		OntamaAttr def = new AttrDEF();
		OntamaAttr defAdd = new AttrDEFAdd();
		OntamaAttr effectHit = new AttrEffectHit();
		OntamaAttr effectRes = new AttrEffectRes();
		OntamaAttr hp = new AttrHP();
		OntamaAttr hpAdd = new AttrHPAdd();
		OntamaAttr spd = new AttrSPD();
		
		
		oattrs.add(atkAdd);
		oattrs.add(atk);
		oattrs.add(crit);
		oattrs.add(critDmg);
		oattrs.add(def);
		oattrs.add(defAdd);
		oattrs.add(effectHit);
		oattrs.add(effectRes);
		oattrs.add(hp);
		oattrs.add(hpAdd);
		oattrs.add(spd);
	}
	
	/*
	 * 获取副属性
	 */
	public List<String> getSideAttrs() {
		List<String> result = new ArrayList<String>();
		int sideAttrNum = randomCreator.randomOne(1, 4);
		System.out.println("副属性条数："  + sideAttrNum);
		int[] array = randomCreator.randomSome(0, oattrs.size(), sideAttrNum);
		for(int i=0; i<array.length; i++) {
			result.add(oattrs.get(array[i]).getAttrDiscription());
			/*System.out.println(oattrs.get(array[i]).getAttrDiscription());*/
		}
		/*System.out.println("长度："  + result.size());*/
		return result;
	}
}
