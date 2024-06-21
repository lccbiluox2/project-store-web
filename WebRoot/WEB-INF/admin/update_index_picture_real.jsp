<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'update_index_picture_real.jsp' starting page</title>
    
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
  	<p>
  		请注意这里的图片大小必须为 宽度 680像素  高度 382像素
  	</p>
  	<br>
    <form action="/mystory/ImgUpload" method="post"  enctype="multipart/form-data">
		修改图片id:<input type="text" name="id" value="${parameter }"/><br/>
		上传照片:<input type="file" name="myFile" ><br/>
		<input type="submit" value="添加" >
	</form>
  </body>
</html>
