<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'menu.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	 <!-- jQuery的js -->
	 <script type="text/javascript" src="index/js/jquery-2.1.1/jquery.js" ></script>
	 <script type="text/javascript" src="index/js/jquery-2.1.1/jquery.min.js" ></script>
	

	 <script type="text/javascript" src="admin/js/menu.js" ></script>
	
	<link rel="stylesheet" type="text/css" href="admin/css/menu.css">
  </head>

  <body>
  	<div id="body">
  		<div id="top"></div>
  		<div id="content">
  			<div class="content-menuitems" id="showa">
  				<a href="javascript:void(0);" onclick="showBrand()" target="main">&nbsp;&nbsp;品牌管理</a>
  			</div>
  			<div class="content-menuitems-content" id="show1">
  				<a class="menu-item-a" href="/mystory/brandManage?currentPage=1"  target="main">查看品牌</a>
	  			<a class="menu-item-a" href="${pageContext.request.contextPath }/toJspPage?whatPage=/admin/brand/brand_add" target="main">添加品牌</a>
	  				
  			</div>
  			
  			
  			<div class="content-menuitems" id="showb">
  				<a href="javascript:void(0);" target="main" onclick="showCategory()" >&nbsp;&nbsp;类别管理</a>
  			</div>
  			<div class="content-menuitems-content" id="show2">
  				<a class="menu-item-a" href="/mystory/categoryList" target="main"  >查看类别</a>
  				<a class="menu-item-a" href="${pageContext.request.contextPath }/toJspPage?whatPage=/admin/category/add" target="main">添加类别</a>
  				
  			</div>
  			
  			
  			<div class="content-menuitems" id="showc">
  				<a href="javascript:void(0);" target="main" onclick="showProduct()" >&nbsp;&nbsp;商品管理</a>
  			</div>
  			<div class="content-menuitems-content" id="show3">
  				<a class="menu-item-a" href="/mystory/productList?currentPage=1" target="main"  >查看商品</a>
  				<a class="menu-item-a" href="productAddUI" target="main">添加商品</a>

  			</div>
  			
  			
  			<div class="content-menuitems" id="showd">
  				<a href="javascript:void(0);" target="main" onclick="showUser()" >&nbsp;&nbsp;用户管理</a>
  			</div>
  			<div class="content-menuitems-content" id="show4">
  				<a class="menu-item-a" href="/mystory/userManage?currentPage=1" target="main" >查看用户</a>
  			</div>
  			
  			
  			
  			<div class="content-menuitems" id="showe">
  				<a href="javascript:void(0);" target="main" onclick="showpic()" >&nbsp;&nbsp;主页展示</a>
  			</div>
  			<div class="content-menuitems-content" id="show5">
  				<a class="menu-item-a" href="${pageContext.request.contextPath }/toJspPage?whatPage=admin/update_index_pic" target="main" >修改主页</a>
  			</div>
  			
  			
  			<div class="content-menuitems" id="showf">
  				<a href="javascript:void(0);" target="main" onclick="showPrint()" >&nbsp;&nbsp;打印Text</a>
  			</div>
  			<div class="content-menuitems-content" id="show6">
  				<a class="menu-item-a" href="${pageContext.request.contextPath }/toJspPage?whatPage=admin/print_excel" target="main" >打印列表</a>
  			</div>
  			
  			
  			<div class="content-menuitems" id="showg">
  				<a href="javascript:void(0);" target="main" onclick="showOrder()" >&nbsp;&nbsp;订单管理</a>
  			</div>
  			<div class="content-menuitems-content" id="show7">
  				<a class="menu-item-a" href="/mystory/goAndShowAllUserOrder?currentPage=1" target="main" >查看所有订单</a>
  				<a class="menu-item-a" href="/mystory/goAndShowAllUserOrderState1?currentPage=1" target="main" >查看所有未受理订单</a>
  				<a class="menu-item-a" href="/mystory/printAllOrderToTextState1" target="main" >打印所有未受理订单</a>
  				<a class="menu-item-a" href="/mystory/updateAllOrderStateTo2" target="main" >受理所有未受理订单</a>
  			</div>
  			
  			
  		</div>
  	</div>
   
   
   
   
  </body>
</html>
