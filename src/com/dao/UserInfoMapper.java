package com.dao;

import org.apache.ibatis.annotations.Param;

import com.pojo.UserInfo;

public interface UserInfoMapper {
	
	/**
	 * 登录时查询电话号码是否注册
	 * @param tel
	 * @return
	 */
	UserInfo selectLogin(String tel);
	
	UserInfo login(@Param("tel")String tel,@Param("password")String password);
	
	int register(UserInfo userInfo);

}
