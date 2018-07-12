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
<title>商店</title>
<link rel="stylesheet" href="css/store.css" />
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/store.js" ></script>
</head>
<body>
	<div class="storeyin" style="display:none">${sessionScope.store.id }</div>
	<div class="userid" style="display:none">${userInfo.id }</div>
	<!--头部div-->
		<div class="headdiv">
			<img src="img/u=3785936750,1249281355&fm=27&gp=0.png" class="logo"/>
			<table class="headtable">
				<tr>
					<td><span class="homespan"><a href="store/homePage.jsp" class="fhsy">首页</a></span></td>
					<td><span class="orderspan">我的订单</span></td>
					<td><span class="joinspan">入驻加盟</span></td>
					<td>
						<input type="text" class="headinput" placeholder="请输入菜名"/>
						<div class="headgo">&nbsp;&nbsp;Go</div>
					</td>
				</tr>
			</table>
		</div>
		<!--中间div-->
		<div class="middlediv">
			<!--商店基本信息div-->
			<div class="storeinfodiv">
				<img src="img/store/t013b648463a6dfb79d.jpg" class="storeimg"/>
				<p class="storenamespan p1"></p>
				<p class="storeevaluate p1">★★★★★</p>
				<table class="infotable">
					<tr>
						<td>平均送餐时间</td>
						<td>起送</td>
						<td>配送费</td>
						<td class="sc hrtd">收藏本店</td>
					</tr>
					<tr>
						<td><span class="tdspan pstime"></span>分钟</td>
						<td><span class="tdspan qsmoney">23</span>元</td>
						<td><span class="tdspan psmoney">4</span>元</td>
						<td class="xintd hrtd"><span class="xin">❤</span></td>
					</tr>
				</table>
			</div>
			<!--商店菜品种类div-->
			<div class="storekind">
				<!--菜单评价食品安全档案-->
				<table class="kindtable">
					<tr>
						<td><p class="caidan">菜单</p></td>
						<td><p class="pingjia">评价</p></td>
						<td><p class="dangan" style="width: 100px;">食品安全档案</p></td>
					</tr>
				</table>
				<hr/>
				<table class="cdtable">
					<tr>
						<td><span>米饭</span></td>
						<td><span>刚出生的好吃不</span></td>
						<td><span>房产税等会</span></td>
						<td><span>吃饭不舍得</span></td>
						<td><span>快乐玛丽</span></td>
					</tr>
					<tr>
						<td><span>得我</span></td>
						<td><span>的施工方百度</span></td>
						<td><span>是发大V</span></td>
						<td><span>你看见</span></td>
						<td><span>房产税都能看见</span></td>
					</tr>
					
				</table>
			</div>
			<!--每个菜单的内容-->
			
			<div class="caidaninfo">
				<p class="cpname">米饭</p>
				<table class="cptable">
					<!-- <tr>
						<td>
							<ul>
								<li class="liimg"><img src="img/store/t012cffad8cb9b56af6.jpg"/></li>
								<li class="liimg cainame">青花椒肉片</li>
								<li>
									<p class="price">￥<span class="caiprice">16</span></p>
									<div class="buypre">
										<div class="buy">+</div>
									</div>
								</li>
							</ul>
							
						</td>
						<td>
							<ul>
								<li class="liimg"><img src="img/store/t012cffad8cb9b56af6.jpg"/></li>
								<li class="liimg cainame">莲白肉丝</li>
								<li>
									<p class="price">￥<span class="caiprice">11</span></p>
									<div class="buypre">
										已售卖完
									</div>
								</li>
							</ul>
						</td>
						<td class="lasttd">
							<ul>
								<li class="liimg"><img src="img/store/t012cffad8cb9b56af6.jpg"/></li>
								<li class="liimg cainame">麻婆豆腐</li>
								<li>
									<p class="price">￥<span class="caiprice">19</span></p>
									<div class="buypre">
										<div class="buy">+</div>
									</div>
								</li>
							</ul>
						</td>
					</tr> -->
				</table>
			</div>
		</div>
	<!--购物车清单-->
	<div class="qddiv">
		<div class="qdhead">
			<p>购物车</p>
			<p class="shanchu">×清空菜品</p>
		</div>
		<!--点餐table-->
		<table class="qdtable">
			
		</table>
		<div class="psdiv">
			配送费(不计入起送价)
			<p class="psp">￥<span class="psprice"></span></p>
		</div>
		<div class="zjdiv">
			共<span class="numspan"> 0 </span>份,总价<span class="pricefh"> ￥</span>
			<span class="zjprice">13</span>&nbsp;&nbsp;
		</div>
	</div>
	<div class="xiadan">
		<!--购物车图标-->
		<div class="gwclogo">
			<img src="img/a88df95233e3c689.png"/>
		</div>
		
		<!--去结算-->
		<div class="jsdiv">
			<p>差<span class="money"></span>元起送</p>
		</div>
	</div>
	<!--结束部分-->
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
