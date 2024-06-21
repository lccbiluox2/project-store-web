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
    
    <title>My JSP 'product_update.jsp' starting page</title>
    
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
   	<form action="productUpdate" method="post"  enctype="multipart/form-data">
   		<input type="hidden" name="p_id" value="${product.p_id }"/>
   		<input type="text" name="p_name" value="${product.p_name }"/><br/>
    	<input type="text" name="p_attr" value="${product.p_attr }"/><br/>
    	<input type="text" name="p_vip_price" value="${product.p_vip_price / 100 }"/><br/>
    	<input type="text" name="p_shop_price" value="${product.p_shop_price / 100 }"/><br/>  	
		<select name="c_id">
			<option value="0">请选择类别</option>
			<c:forEach items="${categoryList }" var="category">
				<option value="${category.c_id }" <c:if test="${product.c_id == category.c_id }">selected</c:if>>${category.c_name }</option>
			</c:forEach>
		</select><br/>
		<select name="p_b_id">
			<option value="0">请选择品牌</option>
			<c:forEach items="${brandList }" var="brand">
				<option value="${brand.b_id }" <c:if test="${product.p_b_id == brand.b_id }">selected</c:if>>${brand.b_name }</option>
			</c:forEach>
		</select><br/>
    	<input type="number" name="p_goods_surplus" value="${product.p_goods_surplus }"/><br/>
    	<textarea rows="20" cols="10" name="p_description">${product.p_description }</textarea><br/>
    	<input type="file" name="p_img_id" /><br/>
    	<input type="submit" value="修改"/>
   	
   	
   	</form>
  </body>
</html>
