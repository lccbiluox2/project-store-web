<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">   
    <title>分类</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <table>
   <tr> <th>名字</th><th>上级类别</th><th>操作</th></tr>
   <c:forEach items="${categoryList }" var="category">
   	<tr>
   		<td><a href="categoryList.do?id=${category.c_id }">${category.c_name }</a></td>
   		<td>${category1.c_name }</td>
   		<td><a href="categoryUpdateUI.do?id=${category.c_id }">修改</a></td>
   		<td><a href="categoryDelete.do?id=${category.c_id }" onclick="return confirm('你确定要删除此类和它的子类别吗？');">删除</a></td>
   		
   	</tr>
   </c:forEach>
  
  </table>
  <a href="categoryAddUI.do?id=${category1.c_id }">添加</a>
  <a href="categoryList.do?id=${category1.c_pid }">上一级</a>
   
  </body>
</html>
