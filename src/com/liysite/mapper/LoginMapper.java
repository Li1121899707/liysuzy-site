package com.liysite.mapper;

import java.util.List;

import com.liysite.beans.UserInfo;

//MyBatis是以接口加配置文件的形式进行编程。大部分代码都在配置文件中。
//接口只负责定义相应的行为，即能对数据库进行何种操作。
public interface LoginMapper {
	//根据项目名称或者类型进行查询，以查询出对应的工资项目信息。
	public List<UserInfo> selectUserInfoByInfo(UserInfo userInfo);
}
