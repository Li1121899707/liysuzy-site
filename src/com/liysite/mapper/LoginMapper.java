package com.liysite.mapper;

import java.util.List;

import com.liysite.beans.UserInfo;

//MyBatis���Խӿڼ������ļ�����ʽ���б�̡��󲿷ִ��붼�������ļ��С�
//�ӿ�ֻ��������Ӧ����Ϊ�����ܶ����ݿ���к��ֲ�����
public interface LoginMapper {
	//������Ŀ���ƻ������ͽ��в�ѯ���Բ�ѯ����Ӧ�Ĺ�����Ŀ��Ϣ��
	public List<UserInfo> selectUserInfoByInfo(UserInfo userInfo);
}
