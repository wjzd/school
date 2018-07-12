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
<title>注册</title>
<link rel="stylesheet" href="css/register.css" />
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/register.js"></script>
</head>
<body>
	<form method="post" action="register" charset="UTF-8">
	<table>
		<tr class="com">
			<td>昵&nbsp; 称:</td>
			<td><input type="text" class="nickname" name="nickname"/><span class="namespan"></span></td>
		</tr>
		<tr class="com">
			<td>密&nbsp; 码:</td>
			<td>
				<input type="password" class="password1" name="password"/><span class="pd1"></span>
			</td>
		</tr>
		<tr class="com">
			<td>确认密码:</td>
			<td>
				<input type="password" class="password2"/><span class="pd2"></span>
			</td>
		</tr>
		<tr class="com">
			<td>电话号码:</td>
			<td>
				<input type="text" class="tel" name="tel"/><span class="telspan"></span>
			</td>
		</tr>
		<tr class="com">
			<td>身份证号:</td>
			<td>
				<input type="text" class="idcard" name="idcard"/><span class="idspan"></span>
			</td>
		</tr>
		<!--选择性别-->
		<tr>
			<td>性别:</td>
			<td>
				<input type="radio" name="sex" value="男" class="sex" checked="checked"/>男
				<input type="radio" name="sex" value="女" class="sex"/>女
			</td>
		</tr>
		<!--验证码-->
		<tr class="get_code">
			<td colspan="2">
				<div class="yzmdiv">
					<p class="yzm1 yzm"></p>
					<p class="yzm2 yzm"></p>
					<p class="yzm3 yzm"></p>
					<p class="yzm4 yzm"></p>
				</div>
				<span class="huan">看不清换一张</span>
			</td>
		</tr>
		<tr class="com">
			<td>验证码:</td>
			<td>
				<input type="text" class="yzminput"/>
				<span class="yzmspan"></span>
			</td>
		</tr>
		<!--注册按钮-->
		<tr class="register">
			<td colspan="2">
				<input type="button" value="立即注册" class="liji"/>
			</td>
		</tr>
	</table>
	</form>
</body>
</html>
