package com.dao;

import java.util.List;

import com.pojo.Shlocation;

public interface LocationMapper {
	
	/**
	 * 根据用户id查询收货地址
	 * @param userid
	 * @return
	 */
	List<Shlocation> location(int userid);
	
	/**
	 * 根据地址的id修改地址
	 * @param locationid
	 * @return
	 */
	int xiugai(Shlocation lShlocation);
	
	/**
	 * 添加收货地址
	 * @return
	 */
	int tjlocation(Shlocation lShlocation);

}
