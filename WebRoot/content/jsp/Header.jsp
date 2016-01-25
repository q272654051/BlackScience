<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>河北百众机电</title>
<link href="content/css/style.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="content/js/jquery-1.9.1.min.js"></script>
</head>
<body>
<div id="header">
<div class="logo"><img src="content/image/logo.png"></div>
<div class="biaoyu"><img src="content/image/biaoyu.jpg"></div>
<div class="lianxi"><div class="ditu"><a href="mainController/index">网站首页</a>|<a>网站地图</a></div>
<div class="tell">TEL：<span>0311-66175058</span></div>
</div></div>
<div style="clear:both"></div>
<div id="nav">
<div class="conent">
<ul id="titles">
<li><a href="aboutController/about">关于百众</a></li>
<li><a href="newsController/news">新闻展会</a></li>
<li><a href="productsController/products">产品展示</a></li>
<li><a href="industryController/industry">行业应用</a></li>
<li><a href="schemeController/scheme">解决方案</a></li>
<li><a href="serviceController/service">客服服务</a></li>
<li><a href="chanceController/chance">工作机会</a></li>
<li style="background:none;"><a href="contactController/contact">联系我们</a></li>
</ul>
</div>
</div>
<div class="banner" id="banner" >
	<a href="" class="d1" style="background:url(content/image/banner1.jpg) center no-repeat;"></a>
	<a href="" class="d1" style="background:url(content/image/banner2.jpg) center no-repeat;"></a>
	<a href="" class="d1" style="background:url(content/image/banner3.jpg) center no-repeat;"></a>
	<a href="" class="d1" style="background:url(content/image/banner1.jpg) center no-repeat;"></a>
	<a href="" class="d1" style="background:url(content/image/banner2.jpg) center no-repeat;"></a>
	<div class="d2" id="banner_id">
		<ul>
		<li></li>
	    <li></li>
	    <li></li>
		<li></li>
		<li></li>
		</ul>
	</div>
<script type="text/javascript">
function banner(){
	var bn_id = 0;
	var bn_id2= 1;
	var speed33=5000;
	var qhjg = 1;
    var MyMar33;
	$("#banner .d1").hide();
	$("#banner .d1").eq(0).fadeIn("slow");
	if($("#banner .d1").length>1)
	{
		$("#banner_id li").eq(0).addClass("nuw");
		function Marquee33(){
			bn_id2 = bn_id+1;
			if(bn_id2>$("#banner .d1").length-1)
			{
				bn_id2 = 0;
			}
			$("#banner .d1").eq(bn_id).css("z-index","2");
			$("#banner .d1").eq(bn_id2).css("z-index","1");
			$("#banner .d1").eq(bn_id2).show();
			$("#banner .d1").eq(bn_id).fadeOut("slow");
			$("#banner_id li").removeClass("nuw");
			$("#banner_id li").eq(bn_id2).addClass("nuw");
			bn_id=bn_id2;
		};
	
		MyMar33=setInterval(Marquee33,speed33);
		
		$("#banner_id li").click(function(){
			var bn_id3 = $("#banner_id li").index(this);
			if(bn_id3!=bn_id&&qhjg==1)
			{
				qhjg = 0;
				$("#banner .d1").eq(bn_id).css("z-index","2");
				$("#banner .d1").eq(bn_id3).css("z-index","1");
				$("#banner .d1").eq(bn_id3).show();
				$("#banner .d1").eq(bn_id).fadeOut("slow",function(){qhjg = 1;});
				$("#banner_id li").removeClass("nuw");
				$("#banner_id li").eq(bn_id3).addClass("nuw");
				bn_id=bn_id3;
			}
		})
		$("#banner_id").hover(
			function(){
				clearInterval(MyMar33);
			}
			,
			function(){
				MyMar33=setInterval(Marquee33,speed33);
			}
		)	
	}
	else
	{
		$("#banner_id").hide();
	}
}

$(function(){
	$(function(){
		var title = $(".tittle span").html() + "";
		var obj_lis = $("#titles li a");
		 for(var i=0;i<obj_lis.length;i++){
			var str = obj_lis[i];
			var str2 = str.innerText;
			    str2 += "";
			if (str2.indexOf(title) > -1){
				obj_lis[i].className = "hover";
			}
		} 
	});
});
</script>
<script type="text/javascript">banner()</script>
</div>
<!--搜索-->
<div id="search">
<div class="coen1">
<div class="left"><span>他们都在搜：</span><a>自立袋机型</a>、<a>给袋式机型</a>、<a>高速机型</a>、<a>标准机型</a></div>
<div class="sear_right"><input type="text" class="text" value="请输入关键词搜索" onfocus="if(value == '请输入关键词搜索'){value = ''} " onblur="if(value == ''){value = '请输入关键词搜索'}"/><input type="button" class="button_sear"  value=""/></div>
</div></div>