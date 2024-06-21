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
    
    <title>My JSP 'show_all_brand.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="index/css/top.css">
<link rel="stylesheet" type="text/css" href="index/css/show_all_brand.css">
</head>
<body class="body1">
	<div class="body2">
		<div class="head">
			<jsp:include page="/WEB-INF/index/top.jsp"/>
		</div>
		<div class="main">
			<div class="main1">
				<div class="main1_top">
					    <div class="main1_top_top1"></div>
						<div class="main1_top_top2">
							<c:forEach items="${randomBrandList }" var="brand">
								<div class="main2_top2_top1">
									<a href="/mystory/getProductByBrandId?id=${brand.b_id }">
										<img alt="" src="${brand.b_img_path }" width="100%" height="100%">
									</a>
								</div>
							</c:forEach>
						</div>
				</div>
			</div>
			<div class="main2">
				<div class="main2_top1">
						<div class="main2_top1_top1"></div>
				</div>		
				<div class="main2_top2">
					<c:forEach items="${brandList }" var="brand">
						<div class="main2_top2_top1">
							<a href="/mystory/getProductByBrandId?id=${brand.b_id }">
								<img alt="" src="${brand.b_img_path }" width="100%" height="100%">
							</a>
						</div>
					</c:forEach>	
			    </div>
			</div>
		</div>
		<div class="foter">
			<iframe frameborder="0" src="${pageContext.request.contextPath }/toJspPage?whatPage=index/footer" name="content" width="1200px" height="300" >
				
			</iframe>
		</div>
	</div>

</body>
</html>
