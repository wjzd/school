<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<base href="<%=basePath%>"/>  
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>完成订单</title>
	<link rel="stylesheet" href="css/pay.css" />
	<script type="text/javascript" src="js/jquery-3.2.1.min.js" ></script>
	<script type="text/javascript" src="js/pay.js" ></script>
</head>
<body>
<div class="puserid" style="display:none">${userInfo.id }</div>
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
	<!--下单div-->
	<div class="xiadiv">
		
		
			<table class="xtable">
				<tr>
					<td class="dingdan">
						<span>订单详情</span>
					</td>
					<td colspan="2">
						<a href="store/store.jsp" class="fanhui">返回商家修改</a>		
					</td>
					
				</tr>
				<tr class="xiangqing">
					<td><span>商品</span></td>
					<td>份数</td>
					<td>
						<span>小计(元)</span>
					</td>
				</tr>
			</table>
			<table class="menutable">
				<!-- <tr>
					<td><span class="cainame">干锅牛肉</span></td>
					<td>
						<p class="priceyin">15</p>
						<p class="jian">-</p>
						<input type="text" value="1" class="numinput"/>
						<p class="jia">+</p>
					</td>
					<td>￥<span class="danjia">36</span></td>
				</tr> -->
				
			</table>
			<p class="peisong">配送费：<span class="zz">￥</span><span class="peim"></span></p>
			<div class="pricesum">
				<p class="moneyfh">￥<span class="moneysum"></span></p>
				<p>共<span class="sum"></span>份商品</p>
			</div>
		
	</div>
	<!--下单的菜品div-->
	<div class="xiadan">
		<p class="shouhuo">收货地址</p>
		<p class="newlocation">添加新地址</p>
		<!--收货地址-->
		<div class="nowloacation">
			<img src="img/f43b185ce51075e209c88e7ca0e05ce1.png"/>
			<p class="user">
				<span class="username"></span><span class="sexspan"></span>&nbsp;&nbsp;&nbsp;
				<span class="usertel"></span>
			</p>
			<p class="userl"><span class="dal"></span><span class="xx"></span></p>
			<p class="xiugai">修改×</p>
			<div class="sanjiao"></div>
		</div>
		<!--显示更多地址-->
		<p class="gengduo">显示更多地址<</p>
		<!--付款方式-->
		<p>付款方式</p>
		<!--在线支付-->
		<div class="zaixian">
			<p class="zhifu">在线支付</p>
			<p class="fangshi">支持支付宝、微信、QQ钱包及银行卡</p>
			<div class="san1"></div>
		</div>
		<!--在线支付-->
		<div class="huodao">
			<p class="zhifu">货到付款</p>
			<p class="fansghi">送货上门后在付款</p>
			<div class="san2"></div>
		</div>
		<!---->
		<table class="xinxi">
			<tr>
				<td colspan="2"><span class="biaoti">选择优惠</span></td>
				
			</tr>
			<tr>
				<td>&nbsp;&nbsp;使用红包</td>
				<td>无可用红包</td>
			</tr>
			<tr>
				<td>&nbsp;&nbsp;使用优惠券</td>
				<td>网站不支持<span>(仅手机端可用)</span></td>
			</tr>
			<tr>
				<td colspan="2"><span class="biaoti">其他信息</span></td>
				
			</tr>
			<tr>
				<td>&nbsp;&nbsp;配送方式</td>
				<td>本订单由[<span class="store">渝味轩</span>]提供配送</td>
			</tr>
		
			<tr>
				<td>&nbsp;&nbsp;发票信息</td>
				<td><div class="fapiao">仅在手机APP中支持开发票</div></td>
			</tr>
			<tr>
				<td>&nbsp;&nbsp;订单备注</td>
				<td><input type="text" class="beizhu"/></td>
			</tr>
		</table>
		<div class="sure">确认下单</div>
	</div>
	<!--弹窗-->
	<div class="wai">
	</div>
	<!--添加地址div-->
	<div class="tjdiv">
		<div class="cha">×</div>
		<p class="locationb">添加新地址</p>
		<table class="locationt">
			<tr>
				<td>姓名</td>
				<td><input type="text" placeholder="请输入您的姓名" class="ssname"/></td>
			</tr>
			<tr>
				<td>性别</td>
				<td class="sextd">
					<input type="radio" value="1" name="sex" class="sex man" checked="checked"/>先生
					<input type="radio" value="0" name="sex" class="sex woman"/>女士
				</td>
			</tr>
			<tr>
				<td>地址</td>
				<td><input type="text" placeholder="请输入小区、大厦或学校" class="ssdal"/></td>
			</tr>
			<tr>
				<td>详细地址</td>
				<td><input type="text" placeholder="请输入单元、门牌号" class="ssxx"/></td>
			</tr>
			<tr>
				<td>手机号</td>
				<td><input type="text" placeholder="请输入您的手机号" class="sstel"/></td>
			</tr>
			<tr>
				<td></td>
				<td>
					<div class="baocun">保存</div>
				</td>
			</tr>
		</table>
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
