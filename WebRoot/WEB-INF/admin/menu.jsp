<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'menu.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="admin/css/menu.css">
  </head>

  <body>
  	<div id="body">
  		<div id="top"></div>
  		<div id="content">
  			<div class="content-menuitems">
  				<a href="/mystory/brandManage?offset=1&pagesize=3&orientation=1" target="main">品牌管理</a>
  			</div>
  			<div class="content-menuitems">
  				<a href="/mystory/categoryList" target="main">类别管理</a>
  			</div>
  			<div class="content-menuitems">
  				<a href="/mystory/productList?offset=1&pagesize=3&orientation=1" target="main">商品管理</a>
  			</div>
  			<div class="content-menuitems">
  				<a href="/mystory/userManage?offset=1&pagesize=3&orientation=1" target="main">用户管理</a>
  			</div>
  		</div>
  	</div>
   
   
   
   
  </body>
</html>
