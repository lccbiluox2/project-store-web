<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>管理员界面</title>
</head>

<frameset rows="100,*,76" frameborder="no" border="0" framespacing="0">
  <frame src="${pageContext.request.contextPath }/toJspPage?whatPage=/admin/oneTop" name="topFrame" scrolling="no" noresize="noresize" id="topFrame" />
  <frame src="${pageContext.request.contextPath }/toJspPage?whatPage=/admin/oneCenter" name="mainFrame" id="mainFrame" />
  
</frameset>
<noframes>
<body>
</body>
</noframes>
</html>