$(function(){
	
	//页面加载时查询商店信息
	$.post("store",function(result){
		
		var json=eval("("+result+")");
		var list=json.list;
		var xun=Math.ceil(list.length);
		for(var i=0;i<xun/4;i++){
			var tr=$("<tr></tr>")
			for(var j=i*4;j<list.length;j++){
				var td=$("<td class='storetd'><p class='stid'>"+list[j].id+"</p><img src='"+list[j].storeimg+"'/><div>"+
						"<span class='store_name'>"+list[j].storename+"</span><br/><span class='star'>" +
						"★★★★★&nbsp;</span><span>月售"+list[j].storesales+"单</span><br /><span>免配送费</span>" +
						"</div><span class='time'>"+list[j].storetime+"分钟</span></td>");
				td.appendTo(tr);
				
				if(j==i*4+3){
					break;
				}
				
			}
			tr.appendTo(".all_store");
		}
		
		//点击商店时进入购买商店的菜单页面
		$(".storetd").click(function(){
			var storeid=$(this).find(".stid").text();
			$.post("menu","storeid="+storeid,function(){
				location.href="store/store.jsp";
			});
		})
		
	});
	//个人中心
	$(".personalCenter").mouseover(function(){
		$(".personalCenter dd").show();
		$(".personalCenter dd").mouseover(function(){
			$(this).css("background","#dddbd6")
		})
		$(".personalCenter dd").mouseout(function(){
			$(this).css("background","#fbeec2")
		})
	})
	$(".personalCenter").mouseout(function(){
		$(".personalCenter dd").hide();
	})
	//商家中心
	$(".merchant").mouseover(function(){
		$(".merchant dd").show();
		$(".merchant dd").mouseover(function(){
			$(this).css("background","#dddbd6")
		})
		$(".merchant dd").mouseout(function(){
			$(this).css("background","#fbeec2")
		})
	})
	$(".merchant").mouseout(function(){
		$(".merchant dd").hide();
	})
	//轮播图
	$(".activity_left").click(function(){
		$(".roll").animate({"marginLeft":-600+"px"},1000,function(){
			$(".roll tr td").eq(0).appendTo(".roll tr");
			$(".roll").css("marginLeft","0px");
		})
	})
	$(".activity_right").click(function(){
		$(".roll").css("marginLeft","-600px");
		$(".roll tr td").eq(3).prependTo(".roll tr");
		$(".roll").animate({"marginLeft":"0px"},1000);
	});
	

})
