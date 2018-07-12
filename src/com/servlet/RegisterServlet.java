package com.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pojo.StoreInfo;
import com.pojo.UserInfo;
import com.service.RegisterService;
import com.serviceImpl.RegisterServiceImpl;
import com.sun.corba.se.impl.protocol.giopmsgheaders.ReplyMessage_1_0;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet{
	
	RegisterService rs=new RegisterServiceImpl();
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 req.setCharacterEncoding("UTF-8");
		 resp.setCharacterEncoding("UTF-8");
		 
		 UserInfo userInfo=new UserInfo();
		 
		String nickname=req.getParameter("nickname");
		String password=req.getParameter("password");
		String tel=req.getParameter("tel");
		String idcard=req.getParameter("idcard");
		String sex=req.getParameter("sex");
		
		userInfo.setNickname(nickname);
		userInfo.setPassword(password);
		userInfo.setTel(tel);
		userInfo.setIdcard(idcard);
		userInfo.setSex(sex);
		
		if(rs.register(userInfo)==0) {
			System.out.println("插入失败");
		}else {
			//查找商店信息
			
			req.getSession().setAttribute("userInfo", userInfo);
			resp.sendRedirect("store/homePage.jsp");
		}
				
		
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}

}
