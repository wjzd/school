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
<title>登录</title>
<link rel="stylesheet" href="css/login.css" type="text/css"/>
<script type="text/javascript" src="js/jquery-3.2.1.min.js" ></script>
<script type="text/javascript" src="js/login.js" ></script>
</head>
<body>
	<div class="div">
		<div class="zhdiv">
			<div class="zhanghao">账号登录</div>
			<div class="duanxin">短信登录</div>
		</div>
		
		<form method="get" action="login">
		<table class="table">
			<tr>
				<td class="input1">
					<img src="img/未标题-1.jpg" class="img"/>
					<input type="text" class="tel" name="tel"/>
					<span class="tishi"></span>
				</td>
				
			</tr>
			<tr class="tr2">
				<td class="input1 zd">
					<img src="img/未标题-2.jpg" class="img"/>
					<input type="password" class="password" name="password"/>
				</td>
				
			</tr>
		</table>
		</form>
		<input type="button" value="登  录" class="denglu"/><br/>
		
		
		<a href="store/changePasswd.jsp" class="passwd">忘记密码?</a>
		<a href="store/register.jsp" class="register">我要注册</a>
	</div>
</body>
</html>
