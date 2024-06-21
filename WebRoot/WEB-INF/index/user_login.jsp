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

<title>My JSP 'user_login.jsp' starting page</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="index/css/user_login.css">
	
	
	
		
	
	 <!-- jQuery的js  想要放大图 必须使用上面的jquery 也可以单独写到一个文件中 但是考虑到显示后台
	 数据所以用他们自带的 jquery.min.js 两个都有会产生冲突-->
	 <script type="text/javascript" src="index/js/jquery-2.1.1/jquery.js" ></script>
	 <script type="text/javascript" src="index/js/jquery-2.1.1/jquery.min.js" ></script>
	 
	 <script type="text/javascript" src="index/js/product_detail/jquerysession.js" ></script>
	 <script type="text/javascript" src="index/js/user_login.js" ></script>

	 
	
	
	
</head>


<body>
	<div class="body1">
		<div class="main">
			<div class="logo">
				<a href=""><img src="index/img/user_login/logo.png">
				</a>
			</div>
			<div class="content">
				<div class="left">
					<img src="index/img/user_login/gou.jpg" width="500px" height="425px">
				</div>
				<div class="right">
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
			<div class="footer">
				<p>联系地址：河南省新乡市红旗区新乡学院 邮编：000000</p>
			</div>
		</div>
	</div>
	
</body>
</html>
