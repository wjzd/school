package com.service;

import java.util.List;

import com.pojo.MenuInfo;
import com.pojo.StoreInfo;

public interface StoreService {
	
	/**
	 * 查询商店信息
	 * @return
	 */
	List<StoreInfo> store();
	
	/**
	 * 查询商店的菜单
	 * @param id
	 * @return
	 */
	StoreInfo menu(int id);
	
	/**
	 * 根据商店id查询商店信息
	 * @param id
	 * @return
	 */
	StoreInfo storeInfo(int id);

}
