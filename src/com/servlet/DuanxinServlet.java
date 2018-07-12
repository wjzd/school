package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alicom.dysms.api.SmsDemo;
import com.aliyuncs.exceptions.ClientException;
import com.pojo.UserInfo;
import com.service.LoginService;
import com.serviceImpl.LoginServiceImpl;

import net.sf.json.JSONObject;

@WebServlet("/duanxin")
public class DuanxinServlet extends HttpServlet{
	LoginService ls=new LoginServiceImpl();
	/**
	 * 获取短信验证码
	 */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("获取短信验证码");
		//得到网页传过来的电话号码
		String tel=req.getParameter("tel");
		//生成4位随机数
		int num=(int)((Math.random()*9+1)*1000);
		//调用短信接口方法
		SmsDemo sDemo=new SmsDemo();
//		try {
//			sDemo.sendSms(tel, num);
//		} catch (ClientException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
		
		JSONObject json=new JSONObject();
		
		json.put("code", num);
		
		PrintWriter out=resp.getWriter();
		out.print(json);
		
		System.out.println("tel:"+tel);
		System.out.println("num:"+num);
		
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
//		String tel=req.getParameter("tel");
//		
//		UserInfo userInfo=ls.selectLogin(tel);
//		System.out.println("验证号码是否注册："+userInfo);
//		System.out.println("telpd："+userInfo);
//		//JSON传值
//		int telpd=0;
//		if(userInfo==null) {
//			telpd=0;
//		}else {
//			telpd=1;
//		}
//		System.out.println("telpd："+telpd);
//		JSONObject json=new JSONObject();
//		json.put("telpd", telpd);
//		
//		PrintWriter out=resp.getWriter();
//		out.println(json);
//		
	}

}
