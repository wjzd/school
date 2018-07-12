$(function(){
	//页面加载时以get提交到payservlet
	$.get("pay",function(result){
		var json=eval("("+result+")");
		var arraynum=json.arraynum;
		var list=json.list;//菜单list
		var store=json.store;//商店信息
		var location=json.llo;//保存地址list
		//给地址赋值
		$(".username").text(location[0].name);
		if(location[0].sex=="男"){
			$(".sexspan").text("先生");
		}else{
			$(".sexspan").text("女士");
		}
		$(".usertel").text(location[0].photo);
		$(".dal").text(location[0].dalocation);
		$(".xx").text(location[0].detail);
		
		
		$(".peim").text(store.peisong);
		$(".store").text(store.storename);
		for(var i=0;i<arraynum.length;i++){
			var tr=$("<tr></tr>");
			
			var td1=$("<td><span class='cainame'>"+list[i].menuname+"</span></td>");
			var td2=$("<td><p class='priceyin'>"+list[i].menuprice+"</p><p class='jian'>-</p>" +
					"<input type='text' value='"+arraynum[i]+"' class='numinput'/>" +
					"<p class='jia'>+</p></td>");
			var td3=$("<td>￥<span class='danjia'>"+list[i].menuprice*arraynum[i]+"</span></td>");
			
			td1.appendTo(tr);
			td2.appendTo(tr);
			td3.appendTo(tr);
			
			tr.appendTo(".menutable");
			
		}
		 pricesum();
	
	
	//增加或减少商品数量
	$(".jian").unbind("click").click(function(){
		//得到单价
		var price=$(this).prev().text();
		//得到当前的数量
		var num1=$(this).next().val();
		var sctr=$(this).parent().parent();
		if(num1>0){
			num1--;
			$(this).next().val(num1);
			//商品总价
			$(this).parent().next().children(".danjia").text(price*num1);
		}else{
			sctr.remove();
		}
		pricesum();
	})
	//点击增加按钮
	$(".jia").unbind("click").click(function(){	
		var price=$(this).prev().prev().prev().text();
		//当前点餐的数量
		var num2=$(this).prev().val();
		num2++;
		$(this).prev().val(num2);
		$(this).parent().next().children(".danjia").text(price*num2);
		pricesum();
	})

	//鼠标放上去显示修改
	$(".nowloacation").hover(function(){
		$(".xiugai").css("color","#53a6f3");
	})
	//鼠标离开时隐藏修改
	$(".nowloacation").mouseleave(function(){
		$(".xiugai").css("color","white");
	})
	
	//点击添加地址
	$(".newlocation").click(function(){
		$(".locationb").text("添加新地址");
		$(".wai").css("display","block");
		$(".tjdiv").css("display","block");
		
		
		//添加后点击保存
		$(".baocun").unbind("click").click(function(){
			
			if(locat().length==6){
				
				$.post("baocun","array="+locat(),function(result){
					var json=eval("("+result+")");
					if(json.num==1){
						
						window.location.reload();//刷新当前页面
					}else{
						alert("添加失败");
					}
					
				})
			}else{
				alert("请正确填写信息");
			}
			
		})
	})
	//点击弹窗里面的×关闭弹窗
	$(".cha").click(function(){
		$(".wai").css("display","none");
		$(".tjdiv").css("display","none");
	})
	
	//点击修改地址
	$(".xiugai").click(function(){
		$(".locationb").text("修改地址");
		var username=$(".username").text();//姓名
		var sex=$(".sexspan").text();//性别
		var usertel=$(".usertel").text();//电话
		var dal=$(".dal").text();//大地址
		var xx=$(".xx").text();//详细地址
		
		$(".ssname").val(username);
		if(sex=="先生"){
			$(".man").attr("checked","true");
		}else{	
			$(".woman").attr("checked","true");
		}
		$(".sstel").val(usertel);
		$(".ssdal").val(dal);
		$(".ssxx").val(xx);
		
		//点击保存
		$(".baocun").unbind("click").click(function(){
			if(locat().length==6){
				locat()[5]=location[0].id;
				$.get("baocun","array="+locat(),function(result){
					var json=eval("("+result+")");
					if(json.num==1){
						
						window.location.reload();//刷新当前页面
					}else{
						alert("修改失败");
					}
					
				})
			}else{
				alert("请填写正确的信息");
			}
		})
		//显示弹窗
		$(".wai").css("display","block");
		$(".tjdiv").css("display","block");	
	})
//	点击在线付款
	$(".zaixian").click(function(){
		$(this).css("border","1px solid #ff8040");
		$(".huodao").css("border","1px solid #aad8f5");
	})
//	点击货到付款
	$(".huodao").click(function(){
		$(this).css("border","1px solid #ff8040");
		$(".zaixian").css("border","1px solid #aad8f5");
	})
	
	//点击确认下单付款
	$(".sure").click(function(){
		var money=$(".moneysum").text();
		alert(money);
	})
	
	
//计算总价和总份数,并且设置按钮样式
function pricesum(){
	//配送费
	var peis=store.peisong;
	peis=parseFloat(peis);
	//得到菜单里面的总份数
	var fssum=0;
	fssum=parseInt(fssum);
	var tlength=$(".menutable tr").length;
	for(var i=0;i<tlength;i++){
		var ptr=$(".menutable tr").eq(i);
		var fstr=ptr.find(".numinput").val();
		fstr=parseInt(fstr);
		fssum=fssum+fstr;//总份数
		
	}
	var pricesum=0;//总价
	pricesum=parseInt(pricesum);
	for(var i=0;i<tlength;i++){
		var ptr=$(".menutable tr").eq(i);
		var danjia=ptr.find(".danjia").text();
		danjia=parseFloat(danjia);
		pricesum=pricesum+danjia;//商品总价，不加配送费
	}
	
	//设置总价总份数
	$(".moneysum").text(pricesum+peis);
	$(".sum").text(fssum);
}

	//判断地址信息是否完整
	function locat(){
		
		var name=$(".ssname").val();
		var sex= $('.sextd input[name="sex"]:checked ').val();
		var tel=$(".sstel").val();
		var dal=$(".ssdal").val();
		var xx=$(".ssxx").val();
		
		if(sex==0){
			sex="女";
		}else{
			sex="男";
		}
		var puserid=$(".puserid").text();
		//判断填写的数据是否为空
		var array=new Array(name,sex,tel,dal,xx,puserid);
		var arrayf=new Array(1);
		var z=0;
		for(var i=0;i<array.length;i++){
			if(array[i]==""){
				
			}else{
				z++;
			}
		}//for
		if(z==array.length){
			return array;
		}else{
			return arrayf;
		}
		
	}//判断收货地址是否完整
	
	
	});//页面加载时自动提交

})
