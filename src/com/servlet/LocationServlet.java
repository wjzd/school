package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pojo.Shlocation;
import com.service.LocationService;
import com.serviceImpl.LocationServiceImpl;

import net.sf.json.JSONObject;

@WebServlet("/baocun")
public class LocationServlet extends HttpServlet{
	
	LocationService lt=new LocationServiceImpl();
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//添加地址
		String array=req.getParameter("array");
		String [] location=array.split(",");
		
		Shlocation sh=new Shlocation();
		sh.setName(location[0]);
		sh.setSex(location[1]);
		sh.setPhoto(location[2]);
		sh.setDalocation(location[3]);
		sh.setDetail(location[4]);
		sh.setUserid(Integer.parseInt(location[5]));
		int num=lt.tjlocation(sh);
		System.out.println("添加印象行数："+num);
		JSONObject json=new JSONObject();
		json.put("num", num);
		
		PrintWriter out=resp.getWriter();
		out.print(json);
		out.flush();
		out.close();
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//修改地址
		
		String array=req.getParameter("array");
		String [] location=array.split(",");
		
		Shlocation sh=new Shlocation();
		sh.setName(location[0]);
		sh.setSex(location[1]);
		sh.setPhoto(location[2]);
		sh.setDalocation(location[3]);
		sh.setDetail(location[4]);
		sh.setUserid(Integer.parseInt(location[5]));
		int num=lt.xiugai(sh);
		System.out.println("修改地址印象行数："+num);
		JSONObject json=new JSONObject();
		json.put("num", num);
		
		PrintWriter out=resp.getWriter();
		out.print(json);
		out.flush();
		out.close();
		
	}

}
