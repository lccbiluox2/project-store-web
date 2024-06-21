<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>创业</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/index.css">
	
  </head>
  
  <body class="body">
    	<div id="body2">
    		<div id="top">
    			<div id="logo"></div>
    			<div id="search">
    				<table>
    					<tr><td></td><td></td></tr>
    					<tr><td></td><td></td></tr>
    					<tr><td></td><td></td></tr>
    					<tr><td></td><td></td></tr>
    					<tr>
    						<td><input id="searchText" type="text"></td>
    						<td><img alt="" width="100" height="35" src="img/search.jpg"></td>
    					</tr>
    				</table>
    			</div>
    		</div>
    		<div id="menu">
    			<table>
    					<tr class="menu1">
    					<td><a href="index.jsp">首页</a></td>
    					<td><a href="grade/grade.jsp" target="content">书库</a></td>
    					<td><a href="category/category.jsp" target="content">排行榜</a></td>
    					<td><a href="mv/mv.jsp" target="content">作者专区</a></td>
    					<td><a href="random/randorm.jsp" target="content">个人中心</a></td>
    					<td><a href="login.jsp" target="content">免费小说</a></td>
    					<td><a href="register.jsp" target="content">全本小说</a></td>
    					<td><a href="admin/admin_login.jsp" >分类小说</a></td>
    					</tr>
    			</table>
    		</div>
    		
    		<div id="content">	
  				<iframe src="/mystory/getDefaultPage" name="content" width="1195px" height="400" />
    		</div>
    		
    	</div>
  </body>
</html>
