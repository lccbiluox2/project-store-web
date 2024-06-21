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

<title>My JSP 'footer.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<link rel="stylesheet" type="text/css" href="index/css/footer.css">
</head>
<body class="body">
	<div id="footer">
		<div id="footer_left">
			<dl>
				<dt>新手指南</dt>
				<dd>
					<a href="#">新用户注册</a>
				</dd>
				<dd>
					<a href="#">会员等级折扣</a>
				</dd>
				<dd>
					<a href="#">关于发票</a>
				</dd>
				<dd>
					<a href="#">月结政策</a>
				</dd>
				<dd>
					<a href="#">积分奖励计划</a>
				</dd>
			</dl>
			<dl>
				<dt>支付配送</dt>
				<dd>
					<a href="#">支付方式</a>
				</dd>
				<dd>
					<a href="#">配送范围及时间</a>
				</dd>
				<dd>
					<a href="#">签收注意事项</a>
				</dd>
			</dl>
			<dl>
				<dt>售后服务</dt>
				<dd>
					<a href="#">退换货政策</a>
				</dd>
				<dd>
					<a href="#">售后服务说明</a>
				</dd>
			</dl>
			<dl>
				<dt>购物条款</dt>
				<dd>
					<a href="#">常见问题</a>
				</dd>
				<dd>
					<a href="#">注册服务条款</a>
				</dd>
				<dd>
					<a href="#">隐私条款</a>
				</dd>
			</dl>
		</div>
	</div>
	<div id="footer1">
		<a href="#">关于我们</a> <a href="#">联系我们</a> <a href="#">友情链接</a> <a
			href="#">帮助中心</a>
	</div>
	<div id="footer2">
		<a href="#">版权所有：新乡学院计算机与信息工程学院</a>
	</div>
</body>
</html>