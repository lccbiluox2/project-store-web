<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<jsp:useBean id="mycookie" scope="session" class="com.biluo.bean.CookBean" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title><jsp:getProperty name="mycookie" property="userName" /></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	 <!-- 放大图 -->
	<link href="index/css/fangda.css" rel="stylesheet" type="text/css" />
	<!-- 缩略图end -->
	<script src="http://www.lanrenzhijia.com/ajaxjs/jquery.min.js"></script>
	<script type="text/javascript" src="index/js/product_detail/fangda.js" ></script>
	<script type="text/javascript" src="index/js/product_detail/jquery.jqzoom.js" ></script>
		
	
	 <!-- jQuery的js  想要放大图 必须使用上面的jquery 也可以单独写到一个文件中 但是考虑到显示后台
	 数据所以用他们自带的 jquery.min.js 两个都有会产生冲突
	 <script type="text/javascript" src="index/js/jquery-2.1.1/jquery.js" ></script>
	 <script type="text/javascript" src="index/js/jquery-2.1.1/jquery.min.js" ></script>
	 -->
	 
	 <script type="text/javascript" src="index/js/product_detail/product_detail.js" ></script>

	 
	 <link href="index/css/fangda.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" type="text/css" href="index/css/product_detail.css">
	<link rel="stylesheet" type="text/css" href="index/css/top.css">
	
	
	
	
	
  </head>
  
<body class="body">
	<div id="body2">
			<div id="top">
				<jsp:include page="/WEB-INF/index/top.jsp"/>
			</div>
			<div id="content_xiangxi">
				<div id="content_xiangxi_left">
					<div id="content_xiangxi_left-content">
		  
					</div>
				</div>
	
				
				<div id="content_show">
					 <div id="content_show-left">
					 		<div id="content_show-left-tab"></div>
							<div id="content_show-left-realshow">
			
									<div class="lanrenzhijia">
										<!-- 大图begin -->
										<div id="preview" class="spec-preview">
											<span class="jqzoom"><img id="showBigImg"
												jqimg="${product.p_img_path }"
												src="${product.p_img_path }" />
											</span>
										</div>
										<!-- 大图end -->
										<!-- 缩略图begin -->
										<div class="spec-scroll">
											<a class="prev">&lt;</a> <a class="next">&gt;</a>
											<div class="items">
												<ul>
			
													<li><img bimg="${product.p_img_path }"
														src="${product.p_img_path }" onmousemove="preview(this);">
													</li>
			
												</ul>
											</div>
										</div>
									</div>


							</div>
					 </div>
	
					 <div id="content_show_right">
					 	<div id="product_name">
					 		${product.p_name } 
					 	</div>
					 	<div id="product_attr">
					 		${product.p_attr } 
					 	</div>
						 <div id="product_p_vip_price">
					 		会员价:￥:${product.p_vip_price } 
					 	</div>
					 	 <div id="product_p_shop_price">
					 		市场价:￥:${product.p_shop_price } 
					 	</div>
					 	<div id="product_brand">
					 		<img src="${brand.b_img_path} " width="100px" height="100px" />
					 		品牌:${brand.b_name } 
					 	</div>
					 	
					 	
					 	
					 	<div id="product_count">
					 		数量:<input type="button" id="sub_bt" value="&nbsp;—&nbsp; " onclick="sub_count();" />
					 		<form action="" method="post">
					 			<input type="text" name="p_img_path" value="${product.p_img_path }" />
						 		<input type="text" name="p_id" value="${product.p_id }" />
						 		<input type="text" name="p_count" id="mycount" value="1" />
						 		<input type="text" name="b_img_path" id="mycount" value="${brand.b_img_path}" />
						 		<input type="text" name="u_id" value="<jsp:getProperty name="mycookie" property="u_id" />" />
						 		<input type="text" name="u_name" value="<jsp:getProperty name="mycookie" property="userName" />" />
					 		</form>
					 		<input type="button" id="add_bt" value="&nbsp;+&nbsp; " onclick="add_count();"/>
					 	</div>
					 	<div id="product_button">
					 		<a>
					 			<img alt="" onclick="addProductToCart()" src="index/img/product_detail/addtocart.png">
					 		</a>
					 		<a>
					 			<img alt="" src="index/img/product_detail/buy.png">
					 		</a>
					 	</div>
					 	
					 	
					 	
					 	<div id="moveDivToCart">
					 		<img id="moveDivToCartImg" width="100px" height="100px" alt="" src="${brand.b_img_path}">
					 	</div>
					 </div>
					 
					 
					 <div id="showDetailContent">
					 	<div id="showDetail-menu">
					 		<div id="showDetail-menu-detail">
					 			<a href="">宝贝详情</a>
							</div>
						</div>
						<div id="showDetail-content">
					 		
						</div>
					</div>
					 
				</div>
   
   				
     
			</div>
	</div>





</body>
</html>
