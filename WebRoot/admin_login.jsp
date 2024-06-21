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
	
	 <!-- jQuery的js -->
	 <script type="text/javascript" src="index/js/jquery-2.1.1/jquery.js" ></script>
	 <script type="text/javascript" src="index/js/jquery-2.1.1/jquery.min.js" ></script>
	
	 <script type="text/javascript" src="admin/js/admin_login.js" ></script>
	
	<link rel="stylesheet" type="text/css" href="admin/css/admin_login.css">
	

	<script type="text/javascript">
		function addUser(){
			var form = document.forms[0];
			alert("aa"+form);
			form.action="/mystory/getAdmin";
			form.method="post";
			form.submit();
		}
	</script>

  </head>
  
<body id="body">
	<div id="body2">
  	    <div id="top"></div>
  	    <div id="center">
  	    	<div id="center-left">
  	    		<br><br><br><br>
  	    		<form action="" method="post">
				    <strong>用户名：</strong>
				    	<input class="input_text" type="text" name="admin.a_name" value="${admin.name}" placeholder="请输入用户名"  autofocus="autofocus"/></br></br></br>
					<strong>密&nbsp;码：</strong>&nbsp;
					<input class="input_text" type="password" name="admin.a_passwd" value="${admin.password}"  placeholder="请输入密码" autofocus="autofocus"/></br></br>
					<br>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="input_button" type="button" value="登录" onclick="addUser()"/>&nbsp; &nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;<input class="input_button" type="reset" value="取消" />
				</form>
  	    	</div>
  	    </div>
	</div>	
  </body>
</html>
	
