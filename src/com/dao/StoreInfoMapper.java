package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.MenuInfo;
import com.pojo.StoreInfo;

public interface StoreInfoMapper {
	
	/**
	 * 查询商店信息
	 * @return
	 */
	List<StoreInfo> store();
	
	
	/**
	 * 根据商店id查询商店的菜单
	 * @param id
	 * @return
	 */
	StoreInfo menu(int id);
	
	/**
	 * 根据id查询商店信息
	 * @param id
	 * @return
	 */
	StoreInfo storeInfo(int id);

	
	
}
