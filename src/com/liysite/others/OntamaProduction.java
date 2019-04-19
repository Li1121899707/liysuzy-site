package com.liysite.others;

import java.util.ArrayList;
import java.util.List;

import com.liysite.beans.Ontama;

public class OntamaProduction {
	private String star = "unknown";
	public List<OntamaPosition> positions = new ArrayList<OntamaPosition>();
	public RandomCreator randomCreator = new RandomCreator();

	/*构造方法*/
	public OntamaProduction() {
		attach();
	}
	
	/*星级的get set方法*/
	public String getStar() {
		return star;
	}

	public void setStar(String star) {
		this.star = star;
	}
	
	/*添加位置对象到list,为接下来的随机做准备*/
	public void attach() {
		OntamaPosition one = new PositionOne();
		OntamaPosition two = new PositionTwo();
		OntamaPosition three = new PositionThree();
		OntamaPosition four = new PositionFour();
		OntamaPosition five = new PositionFive();
		OntamaPosition six  = new PositionSix();
		
		positions.add(one);
		positions.add(two);
		positions.add(three);
		positions.add(four);
		positions.add(five);
		positions.add(six);
	}
	
	/*获取随机的星级，星级没有单独写类存放西g*/
	public void getRandomStar() {
		//调用random生成器类，生成特定的数字或数字序列
		OntamaRandomCreator creator = new OntamaRandomCreator();
		int result = creator.randomOntamaStar();
		switch (result) {
		case 4:
			setStar("FOUR");
			break;
		case 5:
			setStar("FIVE");
			break;
		case 6:
			setStar("SIX");
			break;

		default:
			break;
		}
	}
	
	/*生产御魂，得到御魂的星级、位置、主属性、副属性*/
	public Ontama production() {
		/** 获取御魂星级*/
		// 生成随机星级的
		getRandomStar();
		// 获取星级的描述
		String ontamaStar = getStar();
		
		/** 获取御魂位置*/
		// 生成随机位置
		int randomPosition  = randomCreator.randomOne(0, positions.size()-1);
		// 获得位置的描述
		String ontamaPosition = positions.get(randomPosition).getPosition();
		
		/** 获取御魂主属性*/
		// 调用OntamaPosition类的方法获取主属性的描述。如果该位置只有一个主属性，会直接返回；如果该位置多于一个主属性，
		// 则又会进行一次随机
		String ontamaPrimeAttr = positions.get(randomPosition).getRandomPrimeAttr();
		
		/** 获取御魂副属性*/
		// 构造副属性生产类
		AttrFactory attrFactory = new AttrFactory();
		// 获取副属性生产类返回的副属性序列
		List<String> ontamaSideAttr = attrFactory.getSideAttrs();
		
		/** 构造御魂（结果）*/
		List<String> result = new ArrayList<String>();
		// 添加 星级
		result.add(ontamaStar);
		// 添加 位置
		result.add(ontamaPosition);
		// 添加主属性
		result.add(ontamaPrimeAttr);
		// 添加副属性
		for(int i=0; i<ontamaSideAttr.size(); i++) 
			result.add(ontamaSideAttr.get(i));
		
		Ontama ontama = new Ontama();
		ontama.setStar(ontamaStar);
		ontama.setPosition(ontamaPosition);
		ontama.addAttr(ontamaPrimeAttr);
		
		for(int i=0; i<ontamaSideAttr.size(); i++)
			ontama.addAttr(ontamaSideAttr.get(i));
		
		return ontama;
	}
	
}
