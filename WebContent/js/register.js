$(function(){
	yzm();
	var num1;
	var num2;
	var num3;
	var num4;
	var num;
	
	var span1=false;
	var span2=false;
	var span3=false;
	var span4=false;
	
	//获得昵称
	$(".nickname").blur(function(){
		var nickname=$(".nickname").val();
		if(nickname.length==0){
			$(".namespan").text("*昵称不能为空");
			$(".namespan").css("color","red");
			span1=false;
		}else if(nickname.length>0&&nickname.length<6){
			$(".namespan").text("√");
			$(".namespan").css("color","green");
			span1=true;
		}else{
			$(".namespan").text("*昵称过长");
			$(".namespan").css("color","red");
			span1=false;
		}
	});
	//	获得密码
	var password1;
	$(".password1").blur(function(){
		password1=$(".password1").val();
		if(password1.length==0){
			$(".pd1").text("*不能为空");
			$(".pd1").css("color","red");
		}else if(password1.length>0&&password1.length<6){
			$(".pd1").text("*密码过短");
			$(".pd1").css("color","red");
		}else if(password1.length>=6&&password1.length<=10){
			$(".pd1").text("√");
			$(".pd1").css("color","green");
		}else{
			$(".pd1").text("*密码过长");
			$(".pd1").css("color","red");
		}
		
	});
	//判断两次密码是否相同
	var password2;
	$(".password2").blur(function(){
		password2=$(".password2").val();
		if(password1!=null&&password1==password2){
			$(".pd2").text("√");
			$(".pd2").css("color","green");
			span2=true;
		}else{
			$(".pd2").text("*两次密码不同");
			$(".pd2").css("color","red");
			span2=false;
		}
	});
	//	电话号码
	
	$(".tel").blur(function(){
		var tel=$(".tel").val();
		if(tel.length==0){
			$(".telspan").text("*不能为空");
			$(".telspan").css("color","red");
			span3=false;
		}else if(tel.length==11){
			//判断是否有非法字符
			for(var i=0;i<tel.length;i++){
				var j=tel.substring(i,i+1);
				var regu = "[0-9]";
	            var re = new RegExp(regu);
	            if (j.search(re) == -1) {
	            	$(".telspan").text("*只能是数字");
	            	$(".telspan").css('color','red');
	            	span3=false;
	            }else{
	            	var head=/^1[3-9]\d{9}/;
	            	if(head.test(tel)==false){
	            		$(".telspan").text("*格式错误");
	            		$(".telspan").css('color','red');
	            		span3=false;
	            	}else{

		            	$(".telspan").text("√");
		            	$(".telspan").css('color','green');
		            	span3=true;
		            	
	            	}
	            }
			}
		}else{
			$(".telspan").text("*只能11位");
			$(".telspan").css("color","red");
			span3=false;
		}
	})
	
	//判断身份证号码
	$(".idcard").blur(function(){
		var idcard=$(".idcard").val();
		if(idcard.length==0){
			$(".idspan").text("*身份证不能为空");
			$(".idspan").css('color','red');
			span4=false;
		}else if(idcard.length==18){
			var id=/\d{6}[12]\d{3}[01]\d[0123]\d{5}/;
			if(id.test(idcard)==true){
				$(".idspan").text("√");
				$(".idspan").css('color','green');
				span4=true;
				
			}else{
				$(".idspan").text("*格式错误");
				$(".idspan").css('color','red');
				span4=false;
			}
		}else{
			$(".idspan").text("*身份证只能是18位");
			$(".idspan").css('color','red');
			span4=false;
		}
	})
	
	
//	换一个验证码
	$(".huan").click(function(){
		yzm();
	})
//	提交注册
	$(".liji").click(function(){
//		文本框验证码
		var yzm=$(".yzminput").val();
		if(num==yzm){
			if(span1&&span2&&span3&&span4){
				$("form").submit();
			}else{
				alert("请正确填写内容");
			}
		}else{
			$(".yzmspan").text("*验证码错误");
			$(".yzmspan").css("color","red");
			$(".huan").click();
		}

	})
//	随机生成验证码
	function yzm(){
		num1=parseInt(10*Math.random());
		num2=parseInt(10*Math.random());
		num3=parseInt(10*Math.random());
		num4=parseInt(10*Math.random());
		$(".yzm1").text(num1);
		$(".yzm2").text(num2);
		$(".yzm3").text(num3);
		$(".yzm4").text(num4);
		num=num1+""+num2+""+num3+""+num4;
		
	}
	
	//判断是否含有汉字
	function hz(password1){
		var strlen = 0;
		for(i=0;i<password1.length;i++){
			if(password1.charCodeAt(i) > 255){
				
			}else{
				strlen++;
			}
		}//for
		return strlen;
	}
	
})