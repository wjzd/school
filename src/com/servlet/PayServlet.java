package com.servlet;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pojo.MenuInfo;
import com.pojo.Shlocation;
import com.pojo.StoreInfo;
import com.service.LocationService;
import com.service.StoreService;
import com.serviceImpl.LocationServiceImpl;
import com.serviceImpl.StoreServiceImpl;
import com.sun.glass.ui.Menu;

import net.sf.json.JSONObject;

@WebServlet("/pay")
public class PayServlet extends HttpServlet{
	//保存商品的数量
	String[] arraynum=null;
	List<MenuInfo> list=new ArrayList<MenuInfo>();
	String storeid=null;
	String user=null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//设置编码格式
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		String[] arrayname=req.getParameter("arrayname").split(",");//菜名
		arraynum=req.getParameter("arraynum").split(",");//菜的数量
		String[] arrayprice=req.getParameter("arrayprice").split(",");//菜的总价
		storeid=req.getParameter("store");
		user=req.getParameter("userid");
		for(int i=0;i<arrayname.length;i++) {
			MenuInfo menu=new MenuInfo();
			menu.setMenuname(arrayname[i]);
			//计算商品的单价
			double price=Double.parseDouble(arrayprice[i])/Integer.parseInt(arraynum[i]);
			menu.setMenuprice(price);
			list.add(menu);
		}
		
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		LocationService location=new LocationServiceImpl();
		
		int stid=Integer.parseInt(storeid);//商店id
		int userid=Integer.parseInt(user);//用户id
		System.out.println("用户id:"+userid);
		List<Shlocation> llo=location.location(userid);//收货地址集合
		
		StoreService service=new StoreServiceImpl();
		StoreInfo storeInfo=service.storeInfo(stid);
		
		JSONObject json=new JSONObject();
		json.put("list", list);
		json.put("arraynum", arraynum);
		json.put("store", storeInfo);
		json.put("llo", llo);
		
		PrintWriter out=resp.getWriter();
		out.print(json);
		out.flush();
		out.close();
	}

}
