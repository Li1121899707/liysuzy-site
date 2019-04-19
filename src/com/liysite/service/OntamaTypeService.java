package com.liysite.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.liysite.beans.OntamaDetail;
import com.liysite.beans.OntamaType;
import com.liysite.mapper.OntamaTypeMapper;
import com.liysite.others.OntamaDate;
import com.liysite.others.RandomCreator;

@Service
public class OntamaTypeService {

	@Autowired
	private OntamaTypeMapper ontamaTypeMapper;

	public OntamaType selectAllOntamaType() {
		List<OntamaType> ontamaTypes = new ArrayList<OntamaType>();
		OntamaDate ontamaDate = new OntamaDate();
		String week = ontamaDate.getOntamaWeek();

		// 根据当天是周几来判断刷什么御魂，周末可以刷魂十所有御魂
		if (week.equals("All"))
			ontamaTypes = ontamaTypeMapper.selectAllOntamaTypeWeekend("1");
		else
			ontamaTypes = ontamaTypeMapper.selectAllOntamaTypeWorkingDay(week);

		System.out.print("成功从数据库读取！");
		RandomCreator randomCreator = new RandomCreator();
		System.out.print(ontamaTypes.size());
		int selectOneKind = randomCreator.randomOne(0, ontamaTypes.size()-1);
		System.out.print(selectOneKind);
		OntamaType type = new OntamaType();
		type = ontamaTypes.get(selectOneKind);

		return type;
	}

	// 获取御魂详细信息，包括御魂的初始值、加点、御魂中文名、属性中文名等
	public OntamaDetail selectOneOntamaDetail(String star, String attrName, int num) {
		OntamaDetail ontamaDetail = new OntamaDetail();
		ontamaDetail = ontamaTypeMapper.selectOneOntamaDetail(star, attrName);
		if (0 == num)
			return ontamaDetail;
		else {

			// 当为百分比数值的时候
			if (ontamaDetail.getOntamaPrimeAttrnumInitnum() < 1) {
				if (star.equals("SIX"))
					ontamaDetail.setOntamaPrimeAttrnumInitnum(ontamaDetail.getOntamaPrimeAttrnumInitnum() / 3);
				else
					ontamaDetail.setOntamaPrimeAttrnumInitnum(ontamaDetail.getOntamaPrimeAttrnumAddnum());
			}
			// 当为非百分比数值的时候
			else {
				if (ontamaDetail.getOntamaPrimeAttrnumInitnum() < 20)
					ontamaDetail.setOntamaPrimeAttrnumInitnum(ontamaDetail.getOntamaPrimeAttrnumAddnum());
				else
					ontamaDetail.setOntamaPrimeAttrnumInitnum(ontamaDetail.getOntamaPrimeAttrnumInitnum() / 3);
			}
		}

		return ontamaDetail;

	}

}
