$(function(){
	
	$.get("menu",function(result){
		var json=eval("("+result+")");
		var store=json.store;
		$(".storenamespan").text(store.storename);
		$(".pstime").text(store.storetime);
		$(".qsmoney").text(store.qs);
		$(".psmoney").text(store.peisong);
		var list=store.menu;
		var xun=Math.ceil(store.menu.length);
		for(var i=0;i<xun/3;i++){
			var tr=$("<tr></tr>")
			for(var j=i*3;j<list.length;j++){
				var td=$("<td><ul><li class='liimg'><img src='"+list[j].menuimg+"'/>" +
						"</li><li class='liimg cainame'>"+list[j].menuname+"</li><li><p class='price'>￥" +
						"<span class='caiprice'>"+list[j].menuprice+"</span></p><div class='buypre'><div class='buy'>+</div>" +
						"</div></li></ul></td>");
				td.appendTo(tr);
				if(j==i*3+2){
					break;
				}
				
			}
			tr.appendTo(".cptable");
		}
		
	
	
	//当前商店起送价格
	var qsmoney=$(".qsmoney").text();
	$(".money").text(qsmoney);
	//当前商店配送费
	var psmoney=$(".psmoney").text();
	psmoney=parseFloat(psmoney);
	$(".psprice").text(psmoney);
	
	//点击添加按钮
	$(".buy").click(function(){
		//得到当前菜品的单价
		var caiprice=$(this).parent().prev().children(".caiprice").text();
		//判断是否已经点过
		var dglength=$(".qdtable tr").length;
		//获得当前菜名
		var cainame=$(this).parent().parent().prev().text();
		//判断当前菜名是否存在
		var ss=0;
		for(var i=0;i<dglength;i++){
			var onetd=$(".qdtable tr").eq(i).children().eq(0).text();
			if(cainame==onetd){
				var numinput=$(".qdtable tr").eq(i).children().eq(1).find(".numinput").val();
				numinput++;
				//更改单个菜品的总数
				$(".qdtable tr").eq(i).children().eq(1).find(".numinput").val(numinput);
				//更改单个菜品的总价
				$(".qdtable tr").eq(i).children().eq(2).find(".danjia").text(numinput*caiprice);
				
				//设置总价和总份数sum()返回的是总价
				
				//判断是否满足配送条件
				pstj(qsmoney,pricesum());
			}else{
				ss++;
			}
		}
		if(ss==dglength){	
			td1=$("<td>"+cainame+"</td>");
			td2=$("<td><p class='jian'>-</p><input type='text' value='1' class='numinput'/><p class='jia'>+</p></td>");
			td3=$("<td>￥<span class='danjia'>"+caiprice+"</span></td>");
			tr=$("<tr></tr>");
			//将td添加到tr中
			td1.appendTo(tr);
			td2.appendTo(tr);
			td3.appendTo(tr);
			//将tr添加到table中
			tr.prependTo(".qdtable");
			
			$(".qddiv").css('display','block');
			
			
		}else{
			
		}
		//设置总价和总份数并返回总价
		
		//判断是否满足配送条件
		pstj(qsmoney,pricesum());
	
		//点击减号按钮
		$(".jian").unbind("click").click(function(){
			//得到当前的数量
			var num1=$(this).next().val();
			var sctr=$(this).parent().parent();
			if(num1>0){
				num1--;
				$(this).next().val(num1);
				sctr=$(this).parent().parent();
				$(this).parent().next().children(".danjia").text(caiprice*num1)
				
				//设置总价和总份数sum()返回的是总价
				
				//判断是否满足配送条件
				pstj(qsmoney,pricesum());
				
			}else{
				sctr.remove();
			}
			//判断表格里是否还有商品
			var trlength=$(".qdtable tr").length;
			if(trlength==0){
					$(".qddiv").css('display','none');
				}
		})
		//点击增加按钮
		$(".jia").unbind("click").click(function(){
			
			//当前点餐的数量
			var num2=$(this).prev().val();
			
			num2++;
			$(this).prev().val(num2);
			//当前菜品的总价
			var sum=caiprice*num2;
			$(this).parent().next().children(".danjia").text(sum);
			
			//设置总价和总份数sum()返回的是总价
			
			//判断是否满足配送条件
			pstj(qsmoney,pricesum());
		})
		//手动输入数量
		$(".numinput").blur(function(){
			var menusum=$(this).val();
			//当前菜品的总价
			var sum=caiprice*menusum;
			$(this).parent().next().find(".danjia").text(sum);
			
			//设置总价和总份数sum()返回的是总价
			
			//判断是否满足配送条件
			pstj(qsmoney,pricesum());
		})
		
		//点击清空购物车按钮
		$(".shanchu").unbind("click").click(function(){
			var sclength=$(".qdtable tr").length;
			for(var i=0;i<sclength;i++){
				
				$(".qdtable tr").eq(0).remove();
			}
			//设置总价和总份数sum()返回的是总价
			//判断是否满足配送条件
			pstj(qsmoney,pricesum());
		})
		
	})//点击购买商品
	
	
	//判断是否满足配送条件
	function pstj(qsmoney,pricesum){
		if(pricesum>qsmoney){
				$(".jsdiv").css('background','#f8c292');
				$(".jsdiv").css('color','black');		
				$(".jsdiv").children().text("立即支付");
				
			}else{
				pricesum=parseFloat(pricesum);
				var mm=qsmoney-pricesum;
				$(".jsdiv").css('background','#bbbdc3');
				$(".jsdiv").css('color','white');
				$(".jsdiv").children().text("差"+mm+"元起送");
			}
	}
	
	//计算总价和总份数,并且设置按钮样式
	function pricesum(){
		//得到菜单里面的总价
		var tlength=$(".qdtable tr").length;
		var pricesum=0;//总价
		pricesum=parseInt(pricesum);
		for(var i=0;i<tlength;i++){
			var ptr=$(".qdtable tr").eq(i);
			var danjia=ptr.find(".danjia").text();
			danjia=parseFloat(danjia);
			pricesum=pricesum+danjia;//商品总价，不加配送费
			
		}
		
		//得到菜单里面的总份数
			fssum=0;
			for(var i=0;i<tlength;i++){
				var ptr=$(".qdtable tr").eq(i);
				var fstr=ptr.find(".numinput").val();
				
				fstr=parseInt(fstr);
				fssum=fssum+fstr;//总份数
			}
			//设置总价总份数
			$(".numspan").text(fssum);
			$(".zjprice").text(pricesum+psmoney);
		return pricesum;
	}

	});//自动get提交	
	
	//点击下单
	$(".jsdiv").click(function(){
		var storeyin=$(".storeyin").text();//商店id
		var userid=$(".userid").text();//当前登录用户id
		var zhifu=$(".jsdiv").children().text();
		if(zhifu=="立即支付"){
			var trlength=$(".qdtable tr").length;
			var arrayname=new Array(trlength);//定义数组保存菜单信息
			var arraynum=new Array(trlength);//定义数组保存菜单信息
			var arrayprice=new Array(trlength);//定义数组保存菜单信息
			//循环得到已点的菜单
			for(var i=0;i<trlength;i++){
				var name=$(".qdtable tr").eq(i).children().eq(0).text();
				var cainum=$(".qdtable tr").eq(i).children().eq(1).find(".numinput").val();
				var sumprice=$(".qdtable tr").eq(i).children().eq(2).find(".danjia").text();
				arrayname[i]=name;
				arraynum[i]=cainum;
				arrayprice[i]=sumprice;
			}
			
			$.post("pay","arrayname="+arrayname+"&arraynum="+arraynum+"&arrayprice="+arrayprice+"&store="+storeyin+"&userid="+userid,function(){
				location.href="store/pay.jsp";
			});
			
			
		}else{
			
		}
		
		
	})//点击下单
	
})
