package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pojo.StoreInfo;
import com.service.StoreService;
import com.serviceImpl.StoreServiceImpl;

import net.sf.json.JSONObject;

@WebServlet("/store")
public class StoreServlet extends HttpServlet{

	StoreService service=new StoreServiceImpl();
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		 resp.setCharacterEncoding("UTF-8");
		List<StoreInfo> list=service.store();
		
		JSONObject json=new JSONObject();
		json.put("list", list);
//		for (StoreInfo storeInfo : list) {
//			System.out.println("商店信息："+storeInfo);
//		}
		PrintWriter out=resp.getWriter();
		out.print(json);
		out.flush();
		out.close();
		
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
}
