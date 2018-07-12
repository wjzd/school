package com.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.dao.StoreInfoMapper;
import com.dao.UserInfoMapper;
import com.pojo.StoreInfo;
import com.pojo.UserInfo;
import com.service.RegisterService;
import com.util.MyBatisSession;

public class RegisterServiceImpl implements RegisterService{
	
	MyBatisSession ms=new MyBatisSession();

	/**
	 * 用户注册
	 */
	@Override
	public int register(UserInfo userInfo) {
		SqlSession sqlSession=ms.sqlSession().openSession();
		int num=sqlSession.getMapper(UserInfoMapper.class).register(userInfo);
		sqlSession.commit();
		sqlSession.close();
		return num;
	}
	
	

}
