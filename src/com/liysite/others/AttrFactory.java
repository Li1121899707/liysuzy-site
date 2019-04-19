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
	 * ������ӵ�list�С���Ϊ���Ժ����㿪��ԭ��
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
	 * ��ȡ������
	 */
	public List<String> getSideAttrs() {
		List<String> result = new ArrayList<String>();
		int sideAttrNum = randomCreator.randomOne(1, 4);
		System.out.println("������������"  + sideAttrNum);
		int[] array = randomCreator.randomSome(0, oattrs.size(), sideAttrNum);
		for(int i=0; i<array.length; i++) {
			result.add(oattrs.get(array[i]).getAttrDiscription());
			/*System.out.println(oattrs.get(array[i]).getAttrDiscription());*/
		}
		/*System.out.println("���ȣ�"  + result.size());*/
		return result;
	}
}
