package com.service;

import java.util.List;

import com.pojo.StoreInfo;
import com.pojo.UserInfo;

public interface RegisterService {
	
	/**
	 * 注册插入数据
	 * @param userInfo
	 * @return
	 */
	int register(UserInfo userInfo);
}
