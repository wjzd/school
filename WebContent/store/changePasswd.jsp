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
		<title></title>
		<link rel="stylesheet" href="css/changePassword.css" />
	</head>
	<body>
		<div class="one_div">
			<table>
				<tr class="tr">
					<td>手 机 号:</td>
					<td>
						<input type="text"/>
						<a href="#" class="gain_code">获取验证码</a>
					</td>
				</tr>
				<tr class="tr">
					<td>验 证 码:</td>
					<td>
						<input type="text">
					</td>
				</tr>
				<tr class="tr">
					<td>设置密码:</td>
					<td>
						<input type="text"/>
					</td>
				</tr>
			</table>
			<input type="button" value="重 置 密 码" class="pwdButton"/>
		</div>
	</body>
</html>
