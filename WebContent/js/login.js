$(function(){
	//$(".zhanghao").click();
	$('.zhanghao').trigger("click");
	
	//账号失去焦点
	$(".tel").blur(function(){
		zhlogin();
	})
	//点击短信登录时
	$(".duanxin").click(function(){
		//更改背景样式
		$(this).css('background-color','bisque');
		$(".zhanghao").css('background-color','#7e95c9');
		//修改元素
		$(".tr2").empty();
		var td=$("<td><input type='text' class='dxinput'/><a class='huoqu'>获取短信验证码</a></td>");
		td.appendTo(".tr2");

		//点击获取短信验证码
		var code1;
		$(".huoqu").unbind("click").click(function(){
			var tel=$(".tel").val();
			if(zhlogin()){
				
				//电话号码输入正确
				$.post("duanxin","tel="+tel,function(result){	
					var json=eval("("+result+")");
					code1=json.code;
				});
				
			}else{
				alert("电话号码输入有误");
			}//else
			
		});
		//点击登录按钮
		$(".denglu").unbind("click").click(function(){
			var tel=$(".tel").val();
			var code2=$(".dxinput").val();
			if(code1==code2){
				
				$.post("login","tel="+tel,function(result){
					var json=eval("("+result+")");
					if(json.num==1){
						location.href="store/homePage.jsp";
					}else{
						$(".tishi").text("*未注册");
						$(".tishi").css('color','red');
					}
				});
			}else{
				alert("验证码输入错误");
			}
		})
	});
	//点击账号登录时
	$(".zhanghao").click(function(){
		alert(111);
		//更改背景样式
		$(this).css('background-color','bisque');
		$(".duanxin").css('background-color','#7e95c9');
		//修改元素
		$(".tr2").empty();
		var td=$("<td class='input1 zd'><img src='img/未标题-2.jpg' class='img'/><input type='password' class='password' name='password'/></td>");
		td.appendTo(".tr2");
		
		//点击登录按钮
		$(".denglu").unbind("click").click(function(){
			if(zhlogin()){	
				$("form").submit();
			}else{
				zhlogin();
			}
		})//登录按钮
		
	});
	
	//判断电话号码是否正确
	function zhlogin(){
		var tel=$(".tel").val();
		//判断号码是否是11位
		if(tel.length==0){
			$(".tishi").text("*不能为空");
			$(".tishi").css('color','red');
			return false;
		}else if(tel.length==11){
			//判断是否有非法字符
			for(var i=0;i<tel.length;i++){
				var j=tel.substring(i,i+1);
				
				var regu = "[0-9]";
	            var re = new RegExp(regu);
	            if (j.search(re) == -1) {
	            	$(".tishi").text("*只能是数字");
	            	$(".tishi").css('color','red');
	            	return false;
	            }else{
	            	var head=/^1[3-9]\d{9}/;
	            	if(head.test(tel)==false){
	            		$(".tishi").text("*格式错误");
	            		$(".tishi").css('color','red');
	            		return false;
	            	}else{
		           
		            		$(".tishi").text("√");
			            	$(".tishi").css('color','green');
		            		return true;
		            	
		            	
	            	}//else
	            }
			}
		}else{
			$(".tishi").text("*长度只能是11");
			$(".tishi").css('color','red');
			return false;
		}
	}
	
	//判断电话号码是否已经注册
//	function telr(){
//		var tel=$(".tel").val();
//		$.get("duanxin",{tel:tel},function(result){
//			var json=eval("("+result+")");
//			alert(json.telpd)
//			return json.telpd;
//		});
//		
//	}

})
