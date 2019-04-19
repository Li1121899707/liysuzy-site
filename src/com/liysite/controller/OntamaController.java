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

	// 生成一个御魂
	@RequestMapping("/production")
	public String ontamaProduction(Model model) {

		/** OntamaProduction生成随机御魂属性 */
		OntamaProduction ontamaProduction = new OntamaProduction();
		// 得到含有：星级、位置、主属性、副属性列表的对象
		Ontama ontama = ontamaProduction.production();

		/** 读取数据库，生成随机御魂种类 */
		OntamaType ontamaType = ontamaTypeService.selectAllOntamaType();

		// 构造御魂属性列表，存御魂的各个属性，但是这种情况是主属性副属性的初始值是计算生成，实际情况副属性是随机生成的，但是在一定区间内。
		List<OntamaDetail> ontamaDetailList = new ArrayList<OntamaDetail>();
		for (int i = 0; i < ontama.getSize(); i++)
			ontamaDetailList.add(ontamaTypeService.selectOneOntamaDetail(ontama.getStar(), ontama.getAttr(i), i));

		model.addAttribute("ontamaProduction", ontama);
		model.addAttribute("ontamaType", ontamaType);
		model.addAttribute("ontamaDetailList", ontamaDetailList);
		return "/yys_ontama_production";
	}

	// 刷魂十
	@RequestMapping("/someProduction")
	public String ontamaSomeProduction(Model model) {
		List<OntamaProductionForm> ontamaProductionForms = new ArrayList<OntamaProductionForm>();
		RandomCreator randomCreator = new RandomCreator();
		int num = 0;
		do {
			/** OntamaProduction生成随机御魂属性 */
			OntamaProduction ontamaProduction = new OntamaProduction();
			// 得到含有：星级、位置、主属性、副属性列表的对象
			Ontama ontama = ontamaProduction.production();
			
			/** 读取数据库，生成随机御魂种类 */
			OntamaType ontamaType = ontamaTypeService.selectAllOntamaType();
			
			//得到御魂的id，星级英文，种类，位置
			OntamaProductionForm form = new OntamaProductionForm();
			form.setOntamaId(num);
			form.setOntamaStarEn(ontama.getStar());
			form.setOntamaTypeZh(ontamaType.getOntamaTypeZh());
			form.setPosition(ontama.getPosition());
			form.setTwoEffect(ontamaType.getOntamaTypeTwoEffect());
			form.setFourEffect(ontamaType.getOntamaTypeFourEffect());
			
			/** 读取数据库，构造御魂的所有副属性 */
			List<OntamaDetail> ontamaDetailList = new ArrayList<OntamaDetail>();
			for (int i = 0; i < ontama.getSize(); i++)
				ontamaDetailList.add(ontamaTypeService.selectOneOntamaDetail(ontama.getStar(), ontama.getAttr(i), i));
			
			//添加每个属性的值以及名称到form中
			for (int j = 0; j < ontamaDetailList.size(); j++) {
				form.setAttr(j, ontamaDetailList.get(j).getOntamaAttrZh());
				form.setAttrNum(j, ontamaDetailList.get(j).getOntamaPrimeAttrnumInitnum());
			}
				
			form.setOntamaStarZh(ontamaDetailList.get(0).getOntamaStarZh());
			form.setAttrSumNum(ontamaDetailList.size());
			
			ontamaProductionForms.add(form);
			num++;
		}while((randomCreator.randomOne(1, 100) < 70) || num<2);// 魂十保底两个
			
		model.addAttribute("ontamaProduction", ontamaProductionForms);
		
		return "/yys_ontama_list";
	}
	
}
