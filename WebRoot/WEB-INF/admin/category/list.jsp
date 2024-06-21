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
   <c:forEach items="${treeShowList }" var="treeShow">
   	<tr>
   		<td>${treeShow.category.c_name }</td>
   		<td>${treeShow.parent.category.c_name }</td>
   		<td><a href="categoryUpdateUI?id=${treeShow.category.c_id }">修改</a></td>
   		<td><a href="categoryDelete?id=${treeShow.category.c_id }" onclick="return confirm('你确定要删除此类和它的子类别吗？');">删除</a></td>
   	</tr>
   	<tr>
   		 <c:forEach items="${treeShow.childrens }" var="children">
  		 	<tr>
   				<td>${children.category.c_name }</td>
   				<td>${children.parent.category.c_name }</td>
   				<td><a href="categoryUpdateUI?id=${children.category.c_id }">修改</a></td>
   				<td><a href="categoryDelete?id=${children.category.c_id }" onclick="return confirm('你确定要删除此类和它的子类别吗？');">删除</a></td>
   			</tr>
   				<c:forEach items="${children.childrens }" var="children1">
  		 			<tr>
   						<td>${children1.category.c_name }</td>
   						<td>${children1.parent.category.c_name }</td>
   						<td><a href="categoryUpdateUI?id=${children1.category.c_id }">修改</a></td>
   						<td><a href="categoryDelete?id=${children1.category.c_id }" onclick="return confirm('你确定要删除此类和它的子类别吗？');">删除</a></td>
   					</tr>
   			
   				</c:forEach>
   			</c:forEach>
   	</tr>
   	
   </c:forEach>
  
  </table>

   
  </body>
</html>
