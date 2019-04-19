package com.liysite.others;

public class client {

	public static void main(String[] args) {
		int i = 0;
		while(i!=9) {
			RandomCreator randomCreator = new RandomCreator();
			 i = randomCreator.randomOne(0, 9);
			System.out.print(i);
		}
		

	}

}
