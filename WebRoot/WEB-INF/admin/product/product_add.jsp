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
    <form action="productAdd" method="post"  enctype="multipart/form-data">
    	name:<input type="text" name="p_name"/><br/>
    	属性：<input type="text" name="p_attr"/><br/>
    	会员价：<input type="text" name="p_vip_price"/><br/>
    	市场价：<input type="text" name="p_shop_price"/><br/>  	
		类别：<select name="c_id">
			<option value="0">请选择类别</option>
			<c:forEach items="${categoryList }" var="category">
				<option value="${category.c_id }">${category.c_name }</option>
			</c:forEach>
		</select><br/>
		品牌：<select name="p_b_id">
			<option value="0">请选择品牌</option>
			<c:forEach items="${brandList }" var="brand">
				<option value="${brand.b_id }">${brand.b_name }</option>
			</c:forEach>
		</select><br/>
    	库存量<input type="number" name="p_goods_surplus"/><br/>
    	说明：<textarea rows="20" cols="10" name="p_description"></textarea><br/>
    	图片：<input type="file" name="p_img_id"/><br/>
    	<input type="submit" value="添加"/>
    </form>
    
    
  </body>
</html>
