<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'user_register.jsp' starting page</title>
    
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
  
  <form action="/mystory/addUserRegister">
  	用户名:<input type="text" name="u_name" /><br>
   	密码:<input type="text" name="u_passwd" /><br>
   	确认密码:<input type="text" name="confirm" /><br>
   	手机号:<input type="text" name="u_phone" /><br>
   	邮箱:<input type="text" name="u_email" /><br>
   	<input type="submit" value="提交"> 
  </form>
   
   	
  </body>
</html>
