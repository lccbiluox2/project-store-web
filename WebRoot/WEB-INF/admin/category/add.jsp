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
    
    <title>My JSP 'add.jsp' starting page</title>
    
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
  <form action="/mystory/categoryAdd.do">
    <table>
    	<tr>
    		<td>名字</td>
    		<td><input type="text" name="c_name"/></td>
    	</tr>
    	<tr>
    		<td>上级类别</td>
    		<td>
    		<select name="c_pid">
    			<option value="0">请选择上级类别</option>
    			<c:forEach items="${categoryList }" var="category">
    				<option value="${category.c_id }" <c:if test="${category.c_id == id }">selected</c:if>>${category.c_name }</option>
    			</c:forEach>
    		
    		</select>
    		</td>
    	</tr>
    </table>
    <input type="submit" value="添加"/>
    </form>
  </body>
</html>
