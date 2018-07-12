package com.serviceImpl;

import java.io.InputStream;

import org.apache.ibatis.session.SqlSession;

import com.dao.UserInfoMapper;
import com.pojo.UserInfo;
import com.service.LoginService;
import com.util.MyBatisSession;

public class LoginServiceImpl implements LoginService{

	//实例化Sqlsession连接对象
	MyBatisSession ms=new MyBatisSession();
	
	/**
	 * 登录查询电话号码是否注册
	 */
	@Override
	public UserInfo selectLogin(String tel) {
		//SqlSession建立连接
		SqlSession sqlSession=ms.sqlSession().openSession();
		UserInfo userInfo=sqlSession.getMapper(UserInfoMapper.class).selectLogin(tel);
		sqlSession.close();
		return userInfo;
	}

	@Override
	public UserInfo login(String tel, String password) {
		SqlSession sqlSession=ms.sqlSession().openSession();
		UserInfo userInfo=sqlSession.getMapper(UserInfoMapper.class).login(tel,password);
		sqlSession.close();
		return userInfo;
	}

}
