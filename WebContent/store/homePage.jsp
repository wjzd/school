<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<base href="<%=basePath%>"/>   
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>订餐网主页</title>
<script type="text/javascript" src="js/jquery-3.0.0.js"></script>
<script type="text/javascript" src="js/homePage.js"></script>
<link rel="stylesheet" type="text/css" href="css/homePage.css">
</head>
<body>
	<div class="headline">
		<p>欢迎使用校园订餐网</p>
		<table>
			<tr>
				<td class="nametd">
				<c:choose>
					<c:when test="${!empty userInfo }">
						<span class="welcom">欢迎您</span><span>&nbsp;${userInfo.nickname }</span>
						
					</c:when>
					<c:otherwise>
						<a href="store/login.jsp" target="_blank">立即登录</a>
						<a href="store/register.jsp" target="_blank">&nbsp;注册</a>
					</c:otherwise>
				</c:choose>	
				</td>
				<td>
					<c:if test="${!empty userInfo }">
						<a href="store/login.jsp" target="_blank">注销</a>
					</c:if>
					
				</td>
			</tr>
		</table>
		<dl class="personalCenter">
			<dt>个人中心</dt>
			<dd>我的订单</dd>
			<dd>我的收藏</dd>
			<dd>个人设置</dd>
		</dl>
		<dl class="merchant">
			<dt>商家中心</dt>
			<dd><a href="login.html">商家登录</a></dd>
			<dd>免费开店</dd>
			<dd>找兼职</dd>
		</dl>
		<a href="store/complain.jsp" target="_blank" class="complain">诚信举报</a>
		<a href="" target="_blank" class="service">联系客服</a>
	</div>
	<!--当前位置 -->
	<div class="location">
		<span>当前位置：</span>
		<span>重庆是渝北区桃源大道1000号</span>
	</div>
	<!--搜索 -->
	<div class="search">
		<input type="text" class="o_search" placeholder="请输入商家名或菜名"/>
		<img src="img/search.png">
	</div>
	<hr class="hr"/>
	<!--活动栏-->
	<div class="activity">

		<!--活动图片 -->
		<table class="roll">
			<tr>
				<td><img src="img/activityImg/t01050f5b517691837a.jpg"></td>
				<td><img src="img/activityImg/t0147df791b39becb0a.jpg"/></td>
				<td><img src="img/activityImg/t01b6bde289d35f7e96.jpg"></td>
				<td><img src="img/activityImg/t01be434e64b5ee06bb.jpg"></td>
			</tr>
		</table>
	<!--左按钮-->
	<div class="button activity_left"><</div>
	<!--右按钮-->
	<div class=" button activity_right">></div>
	</div>
	<!--二维码-->
	<div class="two_photo">
		<img  src="img/t013c8fe41ac31288e9.png"/><br/>
		<span>手机APP</span>
	</div>
	
	<!--商品分类-->
	<div class="commodity_class">
		<table class="com_table">
			<tr>
				<td><span>全部商家</span></td>
				<td><span>美食</span></td>
			</tr>
			<tr>
				<td><span>特色菜系</span></td>
				<td><span>异国料理</span></td>
			</tr>
			<tr>
				<td><span>小吃夜宵</span></td>
				<td><span>甜品饮品</span></td>
			</tr>
			<tr>
				<td><span>果蔬生鲜</span></td>
				<td><span>校园超市</span></td>
			</tr>
			<tr>
				<td><span>鲜花绿植</span></td>
				<td><span>其它</span></td>
			</tr>
		</table>
	</div>
	<!--具体商店信息-->
	
	<table class="all_store">
		<!-- <tr>
			<td>
				<img src="img/store/t01009505774c874875.jpg"/>
				<div>
					<span class="store_name">一号窗口</span><br/>
					<span class="star">★★★★★&nbsp;</span>
					<span>月售1111单</span><br />
					<span>免配送费</span>
				</div>
				<span class="time">45分钟</span>
			</td>
			<td>
				<img src="img/store/t012cffad8cb9b56af6.jpg"/>
				<div>
					<span class="store_name">同学汇</span><br/>
					<span class="star">★★★★★&nbsp;</span>
					<span>月售988单</span><br />
					<span>免配送费</span>
				</div>
				<span class="time">39分钟</span>
			</td>
			<td>
				<img src="img/store/t013b648463a6dfb79d.jpg"/>
				<div>
					<span class="store_name">渝味轩</span><br/>
					<span class="star">★★★★★&nbsp;</span>
					<span>月售2109单</span><br />
					<span>免配送费</span>
				</div>
				<span class="time">40分钟</span>
			</td>
			<td>
				<img src="img/store/t01e866e1c12459cff9.jpg"/>
				<div>
					<span class="store_name">斌哥冒菜</span><br/>
					<span class="star">★★★★★&nbsp;</span>
					<span>月售911单</span><br />
					<span>免配送费</span>
				</div>
				<span class="time">41分钟</span>
			</td>
		</tr> -->
		
	</table>
	<!--页末-->
	<hr  class="finally_hr"/>
	<div class="finally">
		<table>
			<tr>
				<th>用户帮助</th>
				<th>商务合作</th>
				<th>关于我们</th>
				<td>24小时客服热线：1010110</td>
			</tr>
			<tr>
				<td>常见问题</td>
				<td>我要开店</td>
				<td>订餐介绍</td>
				<td>关注我们：<img src="img/YQKBDM3JBGQWH4)4SR`OXBM.jpg"/>
							<img src="img/M6(9X8F1LAIJ_$$1()HB7LG.jpg"/>
				</td>
			</tr>
			<tr>
				<td></td>
				<td>加盟指南</td>
				<td>加入我们</td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td>市场合作</td>
				<td>联系我们</td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td>开放品台</td>
				<td>规则中心</td>
				<td></td>
			</tr>
		</table>
	</div>
</body>
</html>
