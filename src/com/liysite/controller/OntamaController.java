package com.liysite.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.liysite.beans.Ontama;
import com.liysite.beans.OntamaDetail;
import com.liysite.beans.OntamaType;
import com.liysite.others.OntamaProduction;
import com.liysite.others.RandomCreator;
import com.liysite.service.OntamaTypeService;

@Controller
@RequestMapping("/yysontamas")
public class OntamaController {

	@Autowired
	private OntamaTypeService ontamaTypeService;

	// ����һ������
	@RequestMapping("/production")
	public String ontamaProduction(Model model) {

		/** OntamaProduction��������������� */
		OntamaProduction ontamaProduction = new OntamaProduction();
		// �õ����У��Ǽ���λ�á������ԡ��������б�Ķ���
		Ontama ontama = ontamaProduction.production();

		/** ��ȡ���ݿ⣬��������������� */
		OntamaType ontamaType = ontamaTypeService.selectAllOntamaType();

		// �������������б�������ĸ������ԣ�������������������Ը����Եĳ�ʼֵ�Ǽ������ɣ�ʵ�������������������ɵģ�������һ�������ڡ�
		List<OntamaDetail> ontamaDetailList = new ArrayList<OntamaDetail>();
		for (int i = 0; i < ontama.getSize(); i++)
			ontamaDetailList.add(ontamaTypeService.selectOneOntamaDetail(ontama.getStar(), ontama.getAttr(i), i));

		model.addAttribute("ontamaProduction", ontama);
		model.addAttribute("ontamaType", ontamaType);
		model.addAttribute("ontamaDetailList", ontamaDetailList);
		return "/yys_ontama_production";
	}

	// ˢ��ʮ
	@RequestMapping("/someProduction")
	public String ontamaSomeProduction(Model model) {
		List<OntamaProductionForm> ontamaProductionForms = new ArrayList<OntamaProductionForm>();
		RandomCreator randomCreator = new RandomCreator();
		int num = 0;
		do {
			/** OntamaProduction��������������� */
			OntamaProduction ontamaProduction = new OntamaProduction();
			// �õ����У��Ǽ���λ�á������ԡ��������б�Ķ���
			Ontama ontama = ontamaProduction.production();
			
			/** ��ȡ���ݿ⣬��������������� */
			OntamaType ontamaType = ontamaTypeService.selectAllOntamaType();
			
			//�õ������id���Ǽ�Ӣ�ģ����࣬λ��
			OntamaProductionForm form = new OntamaProductionForm();
			form.setOntamaId(num);
			form.setOntamaStarEn(ontama.getStar());
			form.setOntamaTypeZh(ontamaType.getOntamaTypeZh());
			form.setPosition(ontama.getPosition());
			form.setTwoEffect(ontamaType.getOntamaTypeTwoEffect());
			form.setFourEffect(ontamaType.getOntamaTypeFourEffect());
			
			/** ��ȡ���ݿ⣬������������и����� */
			List<OntamaDetail> ontamaDetailList = new ArrayList<OntamaDetail>();
			for (int i = 0; i < ontama.getSize(); i++)
				ontamaDetailList.add(ontamaTypeService.selectOneOntamaDetail(ontama.getStar(), ontama.getAttr(i), i));
			
			//���ÿ�����Ե�ֵ�Լ����Ƶ�form��
			for (int j = 0; j < ontamaDetailList.size(); j++) {
				form.setAttr(j, ontamaDetailList.get(j).getOntamaAttrZh());
				form.setAttrNum(j, ontamaDetailList.get(j).getOntamaPrimeAttrnumInitnum());
			}
				
			form.setOntamaStarZh(ontamaDetailList.get(0).getOntamaStarZh());
			form.setAttrSumNum(ontamaDetailList.size());
			
			ontamaProductionForms.add(form);
			num++;
		}while((randomCreator.randomOne(1, 100) < 70) || num<2);// ��ʮ��������
			
		model.addAttribute("ontamaProduction", ontamaProductionForms);
		
		return "/yys_ontama_list";
	}
	
}
