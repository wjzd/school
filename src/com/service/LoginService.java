package com.service;

import com.pojo.UserInfo;

public interface LoginService {
	
	/**
	 * 登录查询电话号码是否注册
	 * @param tel
	 * @return
	 */
	UserInfo selectLogin(String tel);
	
	/**
	 * 账号登录判断密码是否正确
	 * @param tel
	 * @param password
	 * @return
	 */
	UserInfo login(String tel,String password);

}
