<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ImgList.jsp' starting page</title>
    
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
    <a href="ImgUploadUI?img_id=1"><img src="index/plungs/mylinght/images/img1.jpg" alt="img1"　width="50" height="50"></a>
    <a href="ImgUploadUI?img_id=2"><img src="index/plungs/mylinght/images/img2.jpg" alt="img2"　width="50" height="50"></a>
    <a href="ImgUploadUI?img_id=3"><img src="index/plungs/mylinght/images/img3.jpg" alt="img3"　width="50" height="50"></a>
    <a href="ImgUploadUI?img_id=4"><img src="index/plungs/mylinght/images/img4.jpg" alt="img4"　width="50" height="50"></a>
  </body>
</html>
