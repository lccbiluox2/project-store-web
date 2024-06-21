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
    <title>分类</title>
    
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
  <table>
   <tr> <th>名字</th><th>上级类别</th><th>操作</th></tr>
   <c:forEach items="${map['treeCategoryList'] }" var="treeShow">
   	<tr>
   		<td>${treeShow.category.c_name }</td>
   		<td>${treeShow.parent.category.c_name }</td>
   		<td><a href="categoryUpdateUI?id=${treeShow.category.c_id }">修改</a></td>
   		<td><a href="categoryDelete?id=${treeShow.category.c_id }" onclick="return confirm('你确定要删除此类和它的子类别吗？');">删除</a></td>
   	</tr>
   	<tr>
   		 <c:forEach items="${treeShow.childrens }" var="children">
  		 	<tr>
   				<td>${children.category.c_name }</td>
   				<td>${children.parent.category.c_name }</td>
   				<td><a href="categoryUpdateUI?id=${children.category.c_id }">修改</a></td>
   				<td><a href="categoryDelete?id=${children.category.c_id }" onclick="return confirm('你确定要删除此类和它的子类别吗？');">删除</a></td>
   			</tr>
   				<c:forEach items="${children.childrens }" var="children1">
  		 			<tr>
   						<td>${children1.category.c_name }</td>
   						<td>${children1.parent.category.c_name }</td>
   						<td><a href="categoryUpdateUI?id=${children1.category.c_id }">修改</a></td>
   						<td><a href="categoryDelete?id=${children1.category.c_id }" onclick="return confirm('你确定要删除此类和它的子类别吗？');">删除</a></td>
   					</tr>
   			
   				</c:forEach>
   			</c:forEach>
   	</tr>
   	
   </c:forEach>
<tr><td>   新品上架：</td></tr>
	<tr>
   <c:forEach items="${map['xpProductList'] }" var="product">
   		<td><img src="${product.p_img_path }" width="100px" height="100px"/></td>
   		<td>${product.p_name }</td><td>${product.p_attr }</td>
   		<td>${product.p_shop_price }</td>
   </c:forEach>
   </tr>
    <tr><td>热卖商品：</td></tr>
    <tr>
   <c:forEach items="${map['rmProductList'] }" var="product">
   		<td><img src="${product.p_img_path }" width="100px" height="100px"/></td>
   		<td>${product.p_name }</td><td>${product.p_attr }</td>
   		<td>${product.p_shop_price }</td>
   </c:forEach>
   </tr>
    <tr><td>   特价商品：</td></tr>
     <c:forEach items="${map['tjProductList'] }" var="product">
   		<td><img src="${product.p_img_path }" width="100px" height="100px"/></td>
   		<td>${product.p_name }</td><td>${product.p_attr }</td>
   		
   		<td><span style="color:red;">￥${product.p_vip_price }</span></td>
   		<td><span style="text-decoration:line-through;color:#989898;">￥${product.p_shop_price }</span></td>
   </c:forEach>
   
   <tr><td>   猜你喜欢：</td></tr>
   <tr>
   <c:forEach items="${map['likeProductList'] }" var="product">
   		<td><img src="${product.p_img_path }" width="100px" height="100px"/></td>
   		<td>${product.p_name }</td><td>${product.p_attr }</td>
   		<td>${product.p_shop_price }</td>
   </c:forEach>
  </tr>
  
 
<%--   <c:forEach items="${map['treeShow1'] }" var="tree0">
  		<c:forEach items="${tree0.children }" var="tree">
  		<tr><td>${tree.category.c_name }</td></tr>
  		
  		<c:forEach items="${tree.childrens }" var="tree1">
  			<tr><td>${tree1.category.c_name }</td></tr>
  			<tr>
  			<c:forEach items="${tree1.childProducts }" var="product">
  				<td><img src="${product.p_img_path }" width="50px" height="50px"/></td>
  				<td>${product.p_name }</td>
  				<td>${product.p_attr }</td>
  				<td>${product.p_vip_price }</td>
  				<td>${product.p_shop_price }</td>
  			</c:forEach>
  			</tr>
  		</c:forEach>
  		</c:forEach>
  
  </c:forEach> --%>
  	<tr><td>${map['treeShow1'].category.c_name }</td>
  	<td>${map['treeShow1'].children.category.c_name }</td>
  	<td>${map['treeShow1'].children.children.category.c_name }</td>
  	</tr>
  	<tr>
  	<c:forEach items="${map['treeShow1'].children.children.childProducts }" var="product">
  				<td><img src="${product.p_img_path }" width="50px" height="50px"/></td>
  				<td>${product.p_name }</td>
  				<td>${product.p_attr }</td>
  				<td>${product.p_vip_price }</td>
  				<td>${product.p_shop_price }</td>
  			</c:forEach>
  	</tr>
  	
  	
  <tr><td>${map['treeShow2'].category.c_name }</td>
  	<td>${map['treeShow2'].children.category.c_name }</td>
  	<td>${map['treeShow2'].children.children.category.c_name }</td>
  	</tr>
  	<tr>
  	<c:forEach items="${map['treeShow2'].children.children.childProducts }" var="product">
  				<td><img src="${product.p_img_path }" width="50px" height="50px"/></td>
  				<td>${product.p_name }</td>
  				<td>${product.p_attr }</td>
  				<td>${product.p_vip_price }</td>
  				<td>${product.p_shop_price }</td>
  			</c:forEach>
  	</tr>
  	
  	
  	<tr><td>${map['treeShow3'].category.c_name }</td>
  	<td>${map['treeShow3'].children.category.c_name }</td>
  	<td>${map['treeShow3'].children.children.category.c_name }</td>
  	</tr>
  	<tr>
  	<c:forEach items="${map['treeShow3'].children.children.childProducts }" var="product">
  				<td><img src="${product.p_img_path }" width="50px" height="50px"/></td>
  				<td>${product.p_name }</td>
  				<td>${product.p_attr }</td>
  				<td>${product.p_vip_price }</td>
  				<td>${product.p_shop_price }</td>
  			</c:forEach>
  	</tr>
  
  
  
  </table>
  <a href="categoryAddUI">添加</a>
   
  </body>
</html>






<div class="content-float1-left-menu-item" >办公用品</div>
								<div class="content-float1-left-menu-item">办公家具</div>
								<div class="content-float1-left-menu-item">办公设备</div>
								<div class="content-float1-left-menu-item">教学器材</div>
								<div class="content-float1-left-menu-item">文体用品</div>
								<div class="content-float1-left-menu-item">商务礼品</div>
								<div class="content-float1-left-menu-item">五金电料</div>
								<div class="content-float1-left-menu-item">日用百货</div>
								<div class="content-float1-left-menu-item">洗化用品</div>
								<div class="content-float1-left-menu-item">商务礼品</div>
								<div class="content-float1-left-menu-item">电脑耗材</div>
								<div class="content-float1-left-menu-item">其他杂货</div>
