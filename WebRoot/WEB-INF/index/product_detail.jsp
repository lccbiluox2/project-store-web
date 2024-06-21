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
	<!-- 缩略图end 
	<script src="http://www.lanrenzhijia.com/ajaxjs/jquery.min.js"></script>
	<script type="text/javascript" src="index/js/product_detail/fangda.js" ></script>
	<script type="text/javascript" src="index/js/product_detail/jquery.jqzoom.js" ></script>
	-->
	
	<script type="text/javascript" src="index/js/product_detail/jquerysession.js" ></script>
		
	
	 <!-- jQuery的js  想要放大图 必须使用上面的jquery 也可以单独写到一个文件中 但是考虑到显示后台
	 数据所以用他们自带的 jquery.min.js 两个都有会产生冲突-->
	 <script type="text/javascript" src="index/js/jquery-2.1.1/jquery.js" ></script>
	 <script type="text/javascript" src="index/js/jquery-2.1.1/jquery.min.js" ></script>
	 
	 
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
			
											<img id="showBigImg"
												
												src="${product.p_img_path }"  width="300px" height="400px"/>

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
					 		会员价:￥:${product.p_vip_price/10 } 
					 	</div>
					 	 <div id="product_p_shop_price">
					 		市场价:￥:${product.p_shop_price/10 } 
					 	</div>
					 	<div id="product_brand">
					 		<img src="${brand.b_img_path} " width="100px" height="100px" />
					 		品牌:${brand.b_name } 
					 	</div>
					 	
					 	
					 	
					 	<div id="product_count">
					 		<input type="button" id="sub_bt" value="&nbsp;—&nbsp; " onclick="sub_count();" />
					 		<form action="/mystory/addProductToMyCart" method="post">
					 			<input type="hidden" name="p_number" 		id="myp_number" 				value="${product.p_number }" />
					 			<input type="hidden" name="p_vip_price"    id="myproduct_p_vip_price"    value="${product.p_vip_price }" />
					 			<input type="hidden" name="p_img_path"    id="myp_img_path"    value="${product.p_img_path }" />
						 		<input type="hidden" name="p_id" 			id="myp_id" 				value="${product.p_id }" />
						 		<input type="text" name="p_count" 		id="mycount" 		value="1" />
						 		<input type="hidden" name="b_img_path" 	id="myb_img_path" 			 	value="${brand.b_img_path}" />
						 		<input type="hidden" name="u_id" 			id="myu_id"				value="<jsp:getProperty name="mycookie" property="u_id" />" />
						 		<input type="hidden" name="u_name" 		id="myu_name"				value="<jsp:getProperty name="mycookie" property="userName" />" />
						 		
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
					 	
					 	
					 	<div id="user_loginForm">
					 		<form action="getUserIndex" method="post">
								<table align="center">
									<tr>
										<td align="left"><h2>会员登陆</h2>
										</td>
										<td align="right">
											<a href="${pageContext.request.contextPath }/toJspPage?whatPage=/index/user_register" style="color:#666;">
												还没账号吗?&nbsp;
												<span  style="color:#F93">立即注册</span>
											</a>
										</td>
									</tr>
									<tr>
										<td colspan="2"><br />
										</td>
									</tr>
									<tr>
										<td colspan="2"><input type="text" class="username" name="u_name" id="txtName"
											placeholder="输入用户名/手机号码" autofocus required /><br />
										<br />
										<br />
										</td>
									</tr>
									<tr>
										<td colspan="2"><input type="password" name="u_passwd" class="username" id="txtPass"
											placeholder="输入登录密码" required /><br />
										<br />
										<br />
										</td>
									</tr>
									<tr>
										<td align="left"><input type="checkbox"><label>记住用户名</label>
										</td>
										<td align="right"><a href=""><span style="color:#00F">忘记密码？</span>
										</a>
										</td>
									</tr>
									<tr>
										<td colspan="2"><br />
										</td>
									</tr>
									<tr>
										<td colspan="2" align="center"><input type="button"  onclick="userLogin();"
											class="button" value="立即登陆">
										</td>
									</tr>
									</table>
							</form>
					 	</div>
					 	
					 </div>
					 
					 
					 <div id="showDetailContent">
					 	<div id="showDetail-menu">
					 		<div id="showDetail-menu-detail">
					 			<a href="">宝贝详情</a>
							</div>
						</div>
						<div id="showDetail-content">
					 		${product.p_description }
						</div>
					</div>
					 
				</div>
   
   				
     
			</div>
	</div>





</body>
</html>
