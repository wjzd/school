package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.User;
import org.hibernate.dialect.function.VarArgsSQLFunction;

import com.pojo.UserInfo;
import com.service.LoginService;
import com.serviceImpl.LoginServiceImpl;

import net.sf.json.JSONObject;

@WebServlet("/login")
public class LoginServlet extends HttpServlet{
	
	LoginService ls=new LoginServiceImpl();
	
	/**
	 * 短信登录
	 */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String tel=req.getParameter("tel");
		
		UserInfo userInfo=ls.selectLogin(tel);
		int num=0;
		
		if(userInfo!=null) {
			num=1;
			req.getSession().setAttribute("userInfo", userInfo);
		}else{
			num=0;
		}
		
		JSONObject json=new JSONObject();
		json.put("num", num);
		
		PrintWriter out=resp.getWriter();
		out.print(json);
		out.flush();
		out.close();
		
	}
	
	/**
	 * 账号密码登录
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//账号密码登录
		String tel=req.getParameter("tel");
		String password=req.getParameter("password");
		
		//账号密码登录查询用户信息
		UserInfo userInfo=ls.login(tel,password);
		if(userInfo==null) {
			//如果用户不存在重定向到登录页面
			resp.sendRedirect("store/login.jsp");
		}else {
			//如果用户存在重定向到主页面
			req.getSession().setAttribute("userInfo", userInfo);
			resp.sendRedirect("store/homePage.jsp");
		}
	}

}
