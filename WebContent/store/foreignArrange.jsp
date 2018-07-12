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
		<link rel="stylesheet" href="css/allStore.css" />
	</head>
	<body>
		<table class="all_store">
			<tr>
				<td>
					<img src="img/store/u=25253996,1491244803&fm=200&gp=0.jpg"/>
					<div>
						<span class="store_name">韩式料理</span><br/>
						<span class="star">★★★★★&nbsp;</span>
						<span>月售2111单</span><br />
						<span>免配送费</span>
					</div>
					<span class="time">51分钟</span>
				</td>
				<td>
					<img src="img/store/下载.jpg"/>
					<div>
						<span class="store_name">土耳其烤肉饭</span><br/>
						<span class="star">★★★★★&nbsp;</span>
						<span>月售1311单</span><br />
						<span>免配送费</span>
					</div>
					<span class="time">49分钟</span>
				</td>
				<td>
					<img src="img/store/t01def3d6139ebf871f.jpg"/>
					<div>
						<span class="store_name">渝源</span><br/>
						<span class="star">★★★★★&nbsp;</span>
						<span>月售811单</span><br />
						<span>免配送费</span>
					</div>
					<span class="time">31分钟</span>
				</td>
				<td>
					<img src="img/store/u=2017437166,3998383978&fm=27&gp=0.jpg"/>
					<div>
						<span class="store_name">醉疯狂烤肉饭</span><br/>
						<span class="star">★★★★★&nbsp;</span>
						<span>月售911单</span><br />
						<span>免配送费</span>
					</div>
					<span class="time">45分钟</span>
				</td>
			</tr>
		</table>
	</body>
</html>
