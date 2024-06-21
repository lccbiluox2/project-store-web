<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'product_detail.jsp' starting page</title>
    
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

  </head>
  
<body class="body">
	<div id="body2">
			<div id="top"></div>
			<div id="content_xiangxi">
				<div id="content_xiangxi_left">
					<div id="content_xiangxi_left-content">
		  
					</div>
				</div>
	
				
				<div id="content_show">
					 <div id="content_show-left">
					   		<div class="lanrenzhijia">
								<!-- 大图begin -->
								<div id="preview" class="spec-preview"> 
									<span class="jqzoom"><img jqimg="http://demo.lanrenzhijia.com/2014/jd0912/images/b1.jpg" src="http://demo.lanrenzhijia.com/2014/jd0912/images/s1.jpg" /></span> 
								</div>
								<!-- 大图end -->
								<!-- 缩略图begin -->
								<div class="spec-scroll"> <a class="prev">&lt;</a> <a class="next">&gt;</a>
								  <div class="items">
								    <ul>
								      <li><img bimg="http://demo.lanrenzhijia.com/2014/jd0912/images/b1.jpg" src="http://demo.lanrenzhijia.com/2014/jd0912/images/s1.jpg" onmousemove="preview(this);"></li>
								      <li><img bimg="http://demo.lanrenzhijia.com/2014/jd0912/images/b2.jpg" src="http://demo.lanrenzhijia.com/2014/jd0912/images/s2.jpg" onmousemove="preview(this);"></li>
								      <li><img bimg="http://demo.lanrenzhijia.com/2014/jd0912/images/b3.jpg" src="http://demo.lanrenzhijia.com/2014/jd0912/images/s3.jpg" onmousemove="preview(this);"></li>
								      <li><img bimg="http://demo.lanrenzhijia.com/2014/jd0912/images/b1.jpg" src="http://demo.lanrenzhijia.com/2014/jd0912/images/s1.jpg" onmousemove="preview(this);"></li>
								      <li><img bimg="http://demo.lanrenzhijia.com/2014/jd0912/images/b3.jpg" src="http://demo.lanrenzhijia.com/2014/jd0912/images/s3.jpg" onmousemove="preview(this);"></li>
								      <li><img bimg="http://demo.lanrenzhijia.com/2014/jd0912/images/b1.jpg" src="http://demo.lanrenzhijia.com/2014/jd0912/images/s1.jpg" onmousemove="preview(this);"></li>
								      <li><img bimg="http://demo.lanrenzhijia.com/2014/jd0912/images/b2.jpg" src="http://demo.lanrenzhijia.com/2014/jd0912/images/s2.jpg" onmousemove="preview(this);"></li>
								      <li><img bimg="http://demo.lanrenzhijia.com/2014/jd0912/images/b1.jpg" src="http://demo.lanrenzhijia.com/2014/jd0912/images/s1.jpg" onmousemove="preview(this);"></li>
								      <li><img bimg="http://demo.lanrenzhijia.com/2014/jd0912/images/b2.jpg" src="http://demo.lanrenzhijia.com/2014/jd0912/images/s2.jpg" onmousemove="preview(this);"></li>
								      <li><img bimg="http://demo.lanrenzhijia.com/2014/jd0912/images/b2.jpg" src="http://demo.lanrenzhijia.com/2014/jd0912/images/s2.jpg" onmousemove="preview(this);"></li>
								      <li><img bimg="http://demo.lanrenzhijia.com/2014/jd0912/images/b1.jpg" src="http://demo.lanrenzhijia.com/2014/jd0912/images/s1.jpg" onmousemove="preview(this);"></li>
								      <li><img bimg="http://demo.lanrenzhijia.com/2014/jd0912/images/b2.jpg" src="http://demo.lanrenzhijia.com/2014/jd0912/images/s2.jpg" onmousemove="preview(this);"></li>
								    </ul>
								  </div>
							</div>
						</div>
					 </div>
	
					 <div id="content_show_right">
						  南韩固体胶 南韩胶棒 MUNGYO韩国固体胶棒 35g固体胶
						 会员价：5.50元
						 商品货号：0320016
						 
					 </div>
				</div>
   
     
			</div>
	</div>





</body>
</html>
