package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pojo.MenuInfo;
import com.pojo.StoreInfo;
import com.service.StoreService;
import com.serviceImpl.StoreServiceImpl;
import com.sun.corba.se.impl.protocol.giopmsgheaders.ReplyMessage_1_0;
import com.sun.glass.ui.Menu;

import net.sf.json.JSONObject;

@WebServlet("/menu")
public class MenuServlet extends HttpServlet{

	int id;
	StoreInfo store=new StoreInfo();
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		StoreService ss=new StoreServiceImpl();
		
		id=Integer.parseInt(req.getParameter("storeid"));
		store=ss.menu(id);
		
		req.getSession().setAttribute("store", store);
	}
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException ,IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		List<MenuInfo> list=store.getMenu();
		
		JSONObject json=new JSONObject();
		json.put("store", store);
		
		PrintWriter out=resp.getWriter();
		out.print(json);
		out.flush();
		out.close();
		
		
	}
	
	}
