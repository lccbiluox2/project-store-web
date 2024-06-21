<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'admin_login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="admin/css/admin_login.css">
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>

<script type="text/javascript">
	function addUser(){
		var form = document.forms[0];
		
		form.action="/mystory/getAdmin";
		form.method="post";
		form.submit();
	}
</script>

  </head>
  
  <body class="body">
    	<div class="loginForm">
    		<form action="" method="post">
				<input type="text" name="admin.a_name" value="${admin.a_name}"/>
				<input type="password" name="admin.a_passwd" value="${admin.a_password}"/>
				<input type="button" value="添加" onclick="addUser()">
			</form>
    	</div>
  </body>
</html>
