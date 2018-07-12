package com.util;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatisSession {
	
	public static SqlSessionFactory sqlSession() {
		SqlSessionFactory factory=null;
		
		try {
			//通过输入流读取全局配置文件mybatis-configuration.xml
			InputStream is=Resources.getResourceAsStream("mybatis-configuration.xml");
			//通过配置文件创建SqlSessionFactory对象
			factory=new SqlSessionFactoryBuilder().build(is);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return factory;
	}

}
