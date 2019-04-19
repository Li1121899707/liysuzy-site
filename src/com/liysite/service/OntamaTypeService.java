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

		// ���ݵ������ܼ����ж�ˢʲô���꣬��ĩ����ˢ��ʮ��������
		if (week.equals("All"))
			ontamaTypes = ontamaTypeMapper.selectAllOntamaTypeWeekend("1");
		else
			ontamaTypes = ontamaTypeMapper.selectAllOntamaTypeWorkingDay(week);

		System.out.print("�ɹ������ݿ��ȡ��");
		RandomCreator randomCreator = new RandomCreator();
		System.out.print(ontamaTypes.size());
		int selectOneKind = randomCreator.randomOne(0, ontamaTypes.size()-1);
		System.out.print(selectOneKind);
		OntamaType type = new OntamaType();
		type = ontamaTypes.get(selectOneKind);

		return type;
	}

	// ��ȡ������ϸ��Ϣ����������ĳ�ʼֵ���ӵ㡢������������������������
	public OntamaDetail selectOneOntamaDetail(String star, String attrName, int num) {
		OntamaDetail ontamaDetail = new OntamaDetail();
		ontamaDetail = ontamaTypeMapper.selectOneOntamaDetail(star, attrName);
		if (0 == num)
			return ontamaDetail;
		else {

			// ��Ϊ�ٷֱ���ֵ��ʱ��
			if (ontamaDetail.getOntamaPrimeAttrnumInitnum() < 1) {
				if (star.equals("SIX"))
					ontamaDetail.setOntamaPrimeAttrnumInitnum(ontamaDetail.getOntamaPrimeAttrnumInitnum() / 3);
				else
					ontamaDetail.setOntamaPrimeAttrnumInitnum(ontamaDetail.getOntamaPrimeAttrnumAddnum());
			}
			// ��Ϊ�ǰٷֱ���ֵ��ʱ��
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
