<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'brand_detail.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<script type="text/javascript">
	function addBrand(){
		var form = document.forms[0];
		form.action="/mystory/addBrand";
		form.method="post";
		form.submit();
	}
</script>

  </head>
  
  <body>
  
  
  
  <form action="" method="post">
	<table width="90%" border="2">
	 	<tr>
	 		<td>品牌名称</td>
	 		<td align = "center">
	 			<input type="text" name="b_name" value="${brand.b_name }"/>
	 		</td>   
	 	</tr>
	 	<tr>
	 		<td>
	 			<input type="button" value="添加商标" onclick="addBrand()">
	 		</td>
	 		<td>取消修改</td>  
	 	</tr>	
   </table>		
</form>
  
   </body>
</html>
  