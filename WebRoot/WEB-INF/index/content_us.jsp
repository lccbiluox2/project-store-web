<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'content_us.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="index/css/content_us.css">

<script>
	function show(target) {
		var target = document.getElementById(target);
		target.style.display = "block";
	}
	function hid(target) {
		var target = document.getElementById(target);
		target.style.display = "none";
	}
</script>
</head>
<body class="body">
	<div id="body2">
		<div id="top1">
			<div id="top1_1">
				<div id="top1_left" style="background-color:#F00">
					<a href="#">收藏</a>
				</div>
				<div id="top1_right">
					<a href="#">[登录]</a> <a href="#">[注册]|</a> <a href="#">我的订单|</a> <a
						href="#">客户服务</a> <a href="#">我的账户</a>
				</div>
			</div>
		</div>
		<div id="top">
			<div id="logo">
				<a href="#" onmouseover="show('logo_2');"
					onmouseout="hid('logo_2');">全部商品分类</a>
				<ul class="logo1" id="logo_2">
					<li><a href="#">书写工具</a>
					</li>
					<li><a href="#">办公用纸</a>
					</li>
					<li><a href="#">桌面用品</a>
					</li>
					<li><a href="#">文管用品</a>
					</li>
					<li><a href="#">本簙便签</a>
					</li>
					<li><a href="#">财政/行政用品</a>
					</li>
					<li><a href="#">展示用品</a>
					</li>
					<li><a href="#">打印耗材/电脑周边</a>
					</li>
					<li><a href="#">办公生活用品</a>
					</li>
					<li><a href="#">办公设备/家具</a>
					</li>
				</ul>
			</div>
			<div id="search">
				<input type="text" placeholder="请输入关键字" class="search1" /> <input
					type="button" class="btn" name="btn" value="搜索" />
			</div>
			<div id="shouye">
				<ul>
					<li><a href="#">首页</a>
					</li>
					<li><a href="#">限时抢购</a>
					</li>
					<li><a href="#">积分商品</a>
					</li>
					<li><a href="#">清单及价格</a>
					</li>
					<li><a href="#">联系我们</a>
					</li>
				</ul>
			</div>
		</div>
		<div id="lianxi">
			<div id="peisong">
				<a href="#">专业办公用品 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;文具销售配送</a>
			</div>
			<div id="hotwords">
				<strong>热门搜索：</strong> <a href="#" title="插线板">插线板</a> <a href="#"
					title="订书机">订书机</a> <a href="#" title="档案盒">档案盒</a> <a href="#"
					title="计算器">计算器</a> <a href="#" title="复印纸">复印纸</a> <a href="#"
					title="笔记本">笔记本</a> 
			</div>
		</div>
		<div id="menu">
			<div>
				<a href="#"><img src="index/img/content_us/bg1.jpg" />
				</a>
			</div>
		</div>
		<div id="content">
			<iframe src="${pageContext.request.contextPath }/toJspPage?whatPage=index/map" name="content" width="1295px" height="500" >
				
			</iframe>
			
		</div>
		<div id="footer">
			<iframe src="${pageContext.request.contextPath }/toJspPage?whatPage=index/footer" name="content" width="1295px" height="300" >
				
			</iframe>
		</div>

	</div>




</body>
</html>
