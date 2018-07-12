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
		<link rel="stylesheet" href="css/complain.css" />
	</head>
	<body>
		<div class="one_div">
			<ul>
				<li>建议反馈</li>
				<li><hr class="one_hr"/></li>
				<li>您好！欢迎给我们提出使用过程中遇到的问题或建议</li>
				<li><!--建议文本框-->
					<textarea name="suggest" cols="40" rows="10">
				
					</textarea></li>
				<li>
					<span>联系方式：</span>
					<input type="text" class="photo"/>
				</li>
				<li>
					<input type="button" class="submit" value="马上提交"/>
				</li>
			</ul>
		</div>
		
	</body>
</html>
