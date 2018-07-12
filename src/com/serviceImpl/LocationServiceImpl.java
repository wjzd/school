package com.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.dao.LocationMapper;
import com.pojo.Shlocation;
import com.service.LocationService;
import com.util.MyBatisSession;

public class LocationServiceImpl implements LocationService{

	MyBatisSession ms=new MyBatisSession();
	@Override
	public List<Shlocation> location(int id) {
		SqlSession sqlSession=ms.sqlSession().openSession();
		
		List<Shlocation> list=sqlSession.getMapper(LocationMapper.class).location(id);
		sqlSession.commit();
		sqlSession.close();
		return list;
	}
	/**
	 * 修改用户的收货地址
	 */
	@Override
	public int xiugai(Shlocation shlocation) {
		SqlSession sqlSession=ms.sqlSession().openSession();
		
		int num=sqlSession.getMapper(LocationMapper.class).xiugai(shlocation);
		sqlSession.commit();
		sqlSession.close();
		return num;
	}
	/**
	 * 添加用户的收货地址
	 */
	@Override
	public int tjlocation(Shlocation shlocation) {
		SqlSession sqlSession=ms.sqlSession().openSession();
		
		int num=sqlSession.getMapper(LocationMapper.class).tjlocation(shlocation);
		sqlSession.commit();
		sqlSession.close();
		return num;
	}

}
