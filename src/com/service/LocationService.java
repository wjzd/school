package com.service;

import java.util.List;

import com.pojo.Shlocation;

public interface LocationService {
	
	/**
	 * 跟据用户id查询用户的收货地址
	 * @param id
	 * @return
	 */
	List<Shlocation> location(int id);
	
	/**
	 * 修改用户的收货地址
	 * @param shlocation
	 * @return
	 */
	int xiugai(Shlocation shlocation);
	
	/**
	 * 添加收货地址
	 * @param shlocation
	 * @return
	 */
	int tjlocation(Shlocation shlocation);

}
