<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'content_us.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="index/css/content_us.css">
<link rel="stylesheet" type="text/css" href="index/css/top.css">

<script>
	function show(target) {
		var target = document.getElementById(target);
		target.style.display = "block";
	}
	function hid(target) {
		var target = document.getElementById(target);
		target.style.display = "none";
	}
</script>
</head>
<body class="body">
	<div id="body2">
		<div id="top">
			<jsp:include page="/WEB-INF/index/top.jsp"/>
		</div>
		<div id="menu">
			<div>
				<a href="#"><img src="index/img/content_us/bg1.jpg" width="1200px"  />
				</a>
			</div>
		</div>
		<div id="content">
			<iframe frameborder="0" src="${pageContext.request.contextPath }/toJspPage?whatPage=index/map" name="content" width="1200px" height="500" >
				
			</iframe>
			
		</div>
		<div id="footer">
			<iframe frameborder="0" src="${pageContext.request.contextPath }/toJspPage?whatPage=index/footer" name="content" width="1200px" height="300" >
				
			</iframe>
		</div>

	</div>




</body>
</html>
