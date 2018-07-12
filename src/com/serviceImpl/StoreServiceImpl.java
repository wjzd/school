package com.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.dao.StoreInfoMapper;
import com.dao.UserInfoMapper;
import com.pojo.MenuInfo;
import com.pojo.StoreInfo;
import com.service.StoreService;
import com.util.MyBatisSession;

public class StoreServiceImpl implements StoreService{

	MyBatisSession ms=new MyBatisSession();
	@Override
	public List<StoreInfo> store() {
		SqlSession sqlSession=ms.sqlSession().openSession();
		List<StoreInfo> list=sqlSession.getMapper(StoreInfoMapper.class).store();
		
		sqlSession.close();
		return list;
	}
	/**
	 * 查询商店的菜单
	 */
	@Override
	public StoreInfo menu(int id) {
		SqlSession sqlSession=ms.sqlSession().openSession();
		StoreInfo store=sqlSession.getMapper(StoreInfoMapper.class).menu(id);
		
		sqlSession.close();
		return store;
	}
	
	/**
	 * 根据商店id查询商店的基本信息
	 */
	@Override
	public StoreInfo storeInfo(int id) {
		SqlSession sqlSession=ms.sqlSession().openSession();
		StoreInfo store=sqlSession.getMapper(StoreInfoMapper.class).storeInfo(id);
		
		sqlSession.close();
		return store;	
		}

}
