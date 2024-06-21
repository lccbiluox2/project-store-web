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
    
    <title>My JSP 'product_list.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<link rel="stylesheet" type="text/css" href="admin/brand/css/brandmanage.css">
	
	<script type="text/javascript" src="${pageContext.request.contextPath }/admin/js/jquery.js"></script>
	<script type="text/javascript">
		function gotoPageNum( offset , pagesize , orientation ){
		$(document.forms[0]).append("<input type='hidden' name='offset' value='" + offset +"'>");
		$(document.forms[0]).append("<input type='hidden' name='pagesize' value='" + pagesize +"'>");
		$(document.forms[0]).append("<input type='hidden' name='orientation' value='" + orientation +"'>");
		document.forms[0].submit();
		}
	
	
	function altRows(id){
	if(document.getElementsByTagName){  
		
		var table = document.getElementById(id);  
		var rows = table.getElementsByTagName("tr"); 
		 
		for(i = 0; i < rows.length; i++){          
			if(i % 2 == 0){
				rows[i].className = "evenrowcolor";
			}else{
				rows[i].className = "oddrowcolor";
			}      
		}
	}
}

window.onload=function(){
	altRows('alternatecolor');
}
	
  </script>
  </head>
  
  <body>
  
  
  
  
  
  <body>
  	<div id="body">
  		<div id="top">
  			<div id="top-menu1">
  				<a href="productAddUI">
					<img alt="" src="admin/brand/img/add.png" width="100%" height="100%">
				</a>
				
  			</div>
  		</div>
  		<div id="content">
  			<table width="90%" class="altrowstable" id="alternatecolor">
				<tr>
			  		<th>商品名称</th>
			  		<th>商品属性</th>
			  		<th>状态</th>
			  		<th>库存量</th>
			  		<th>图片</th>
			  		<th>品牌</th>
			  		<th>类别</th>
			  		<th>操作</th>
			  	</tr>
			  	<c:forEach items="${productList }" var="product">
			  		<tr>
			  			<td>${product.p_name }</td><td>${product.p_attr }</td>
			  			<td>${product.p_state }</td><td>${product.p_goods_surplus }</td>
			  			<td><img src="${product.p_img_path }" width="100px" height="200px"/></td>
			  			<td>
			  			<c:forEach items="${brangList }" var="brang">
			  				<c:if test="${brang.b_id == product.p_b_id}">${brang.b_name }</c:if>
			  			
			  			</c:forEach>
			  			</td>
			  			<td>
			  			<c:forEach items="${categoryList }" var="category">
			  				<c:if test="${category.c_id == product.c_id}">${category.c_name }</c:if>
			  			
			  			</c:forEach>
			  			</td>
			  			<td>
			  			<a href="productUpdateUI?id=${product.p_id }">修改</a>
			  			<a href="productDelete?id=${product.p_id }">删除</a>
			  			</td>
			  			
			  			
			  		</tr>
			  	
			  	
			  	
			  	</c:forEach>
			  	
			  </table>
  		</div>
  		<div id="footer">
  			 <a href="javascript:gotoPageNum( 1 , 4 , 5 )">首页</a>
			  <a href="javascript:gotoPageNum( 5 , 4 , 2 )">向上跳转5页</a>
			  <a href="javascript:gotoPageNum( 10 , 4 , 2 )">向上跳转10页</a>
			  <a href="javascript:gotoPageNum( 1 , 4 , 1 )">下一页</a>
			  <a href="javascript:gotoPageNum( 1 , 4 , 2 )">上一页</a>
			  <a href="javascript:gotoPageNum( 5 , 4 , 1 )">向下跳转5页</a>
			  <a href="javascript:gotoPageNum( 10 , 4 , 1 )">向下跳转10页</a>
			  <a href="javascript:gotoPageNum( 1 , 4 , 4 )">尾页</a>
  		</div>
  	</div>
  	
  
  
  <form action="productList">
			  		<input type="text" name="name" value="${name }"/>
			  		<select name="stateNum">
			  			<option value="2" <c:if test="${stateNum == 2 }">selected</c:if> >新品</option>
			  			<option value="1" <c:if test="${stateNum == 1 }">selected</c:if>>热卖</option>
			  			<option value="3" <c:if test="${stateNum == 3 }">selected</c:if>>特价</option>
			  			<option value="4" <c:if test="${stateNum == 4 }">selected</c:if>>精品</option>
			  		</select>
			  		<select name="kuCunNum">
			  			<option value="0" <c:if test="${kuCunNum == 0 }">selected</c:if>>库存量升序</option>
			  			<option value="1" <c:if test="${kuCunNum == 1 }">selected</c:if>>库存量降序</option>
			  		</select>
			  		<input type="button" value="查询" onClick="gotoPageNum( 1 , 4 , 5 )"/>
  				</form>
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  </body>
</html>
