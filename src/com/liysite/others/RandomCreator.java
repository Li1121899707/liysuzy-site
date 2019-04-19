package com.liysite.others;

import java.util.HashSet;
import java.util.Set;

public class RandomCreator {
	/**
     * ���ܣ����ָ����Χ��N�����ظ�����
     * 
     * @param min ָ����Χ��Сֵ
     * @param max ָ����Χ���ֵ
     * @param n ���������
     */
    public int[] randomSome(int min, int max, int n) {
        Set<Integer> set = new HashSet<Integer>();
        int[] array = new int[n];
        for (; true;) {
            // ����Math.random()����
            int num = (int) (Math.random() * (max - min)) + min;

            // ����ͬ��������HashSet��
            set.add(num);
            // ����������С��ָ�����ɵĸ���������õݹ�������ʣ�����������������ѭ����ֱ���ﵽָ����С
            if (set.size() >= n) {
                break;
            }
        }
        int i = 0;
        for (int a : set) {
            array[i] = a;
            i++;
        }
        return array;
    }
    
    /**
     * ����һ��ָ�����������
     */
    public int randomOne(int min, int max) {
    	max++;
    	int result = (int) (Math.random() * (max - min)) + min;
    	return result;
    }
}
