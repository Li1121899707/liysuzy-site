package com.liysite.others;

import java.util.ArrayList;
import java.util.List;

import com.liysite.beans.Ontama;

public class OntamaProduction {
	private String star = "unknown";
	public List<OntamaPosition> positions = new ArrayList<OntamaPosition>();
	public RandomCreator randomCreator = new RandomCreator();

	/*���췽��*/
	public OntamaProduction() {
		attach();
	}
	
	/*�Ǽ���get set����*/
	public String getStar() {
		return star;
	}

	public void setStar(String star) {
		this.star = star;
	}
	
	/*���λ�ö���list,Ϊ�������������׼��*/
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
	
	/*��ȡ������Ǽ����Ǽ�û�е���д������g*/
	public void getRandomStar() {
		//����random�������࣬�����ض������ֻ���������
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
	
	/*�������꣬�õ�������Ǽ���λ�á������ԡ�������*/
	public Ontama production() {
		/** ��ȡ�����Ǽ�*/
		// ��������Ǽ���
		getRandomStar();
		// ��ȡ�Ǽ�������
		String ontamaStar = getStar();
		
		/** ��ȡ����λ��*/
		// �������λ��
		int randomPosition  = randomCreator.randomOne(0, positions.size()-1);
		// ���λ�õ�����
		String ontamaPosition = positions.get(randomPosition).getPosition();
		
		/** ��ȡ����������*/
		// ����OntamaPosition��ķ�����ȡ�����Ե������������λ��ֻ��һ�������ԣ���ֱ�ӷ��أ������λ�ö���һ�������ԣ�
		// ���ֻ����һ�����
		String ontamaPrimeAttr = positions.get(randomPosition).getRandomPrimeAttr();
		
		/** ��ȡ���긱����*/
		// ���츱����������
		AttrFactory attrFactory = new AttrFactory();
		// ��ȡ�����������෵�صĸ���������
		List<String> ontamaSideAttr = attrFactory.getSideAttrs();
		
		/** �������꣨�����*/
		List<String> result = new ArrayList<String>();
		// ��� �Ǽ�
		result.add(ontamaStar);
		// ��� λ��
		result.add(ontamaPosition);
		// ���������
		result.add(ontamaPrimeAttr);
		// ��Ӹ�����
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
