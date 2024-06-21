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
    
    <title>创业</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<!-- 自己写的插件的css -->
	<link rel="stylesheet" type="text/css" href="index/css/index.css">
	<link rel="stylesheet" type="text/css" href="index/css/top.css">
	
	<!-- 外来插件的css -->
	
	
	 <!-- jQuery的js -->
	 <script type="text/javascript" src="index/js/jquery-2.1.1/jquery.js" ></script>
	 <script type="text/javascript" src="index/js/jquery-2.1.1/jquery.min.js" ></script>
	
	 <!-- 自己写的插件的js -->
	 <script type="text/javascript" src="index/js/index.js" ></script>
	 
	 <!-- 外来插件的js -->
	
  </head>
  
 
<body class="body">
	<div id="body2">
		<div id="top">
			<jsp:include page="/WEB-INF/index/top.jsp"/>
		</div>
		<div id="content">
			<div id="content-float1">
			
				
					<div class="content-float1-all">
						<div class="content-float1-all-content">
							<div class="content-float1-all-content-left">
								<div class="content-float1-all-content-left-top"></div>
								<div class="content-float1-all-content-left-left"></div>
								<div class="content-float1-all-content-left-content">
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
								</div>
								<div class="content-float1-all-content-left-buttom"></div>
							</div>
							<div class="content-float1-all-content-center">
								<div class="content-float1-left-menu-item-second1">
								
								   		 <c:forEach items="${map['treeCategoryList'][0].childrens }" var="children">
								   				<a class="menuhref" href="" >${children.category.c_name }</a>
								   				<c:forEach items="${children.childrens }" var="children1">
								   					<a  class="menuhref" href="" >${children1.category.c_name }</a>
								   				</c:forEach><br/>
								   			</c:forEach>
								</div>
								<div class="content-float1-left-menu-item-second2">2</div>
								<div class="content-float1-left-menu-item-second3">3</div>
								<div class="content-float1-left-menu-item-second4">4</div>
								<div class="content-float1-left-menu-item-second5">5</div>
								<div class="content-float1-left-menu-item-second6">6</div>
								<div class="content-float1-left-menu-item-second7">7</div>
								<div class="content-float1-left-menu-item-second8">8</div>
								<div class="content-float1-left-menu-item-second9">9</div>
								<div class="content-float1-left-menu-item-second10">10</div>
								<div class="content-float1-left-menu-item-second11">11</div>
								<div class="content-float1-left-menu-item-second12">12</div>
								
								<div class="content-float1-left-menu-item-picture">
									<jsp:include page="/WEB-INF/index/plungs/mylinght/index.jsp"/>
								</div>
							</div>
							<div class="content-float1-left-menu-item-right">
								<div class="content-float1-left-menu-item-right-login" >
									<table class="loginAndRegister">
										<tr>
											<td>
												<a href="${pageContext.request.contextPath }/toJspPage?whatPage=/index/user_login">&nbsp;&nbsp;&nbsp;&nbsp;登陆</a>
											</td>
											<td>
												<a href="${pageContext.request.contextPath }/toJspPage?whatPage=/index/user_register">&nbsp;&nbsp;&nbsp;&nbsp;注册</a>
											</td>
										</tr>
									</table>
								</div>
								<div class="content-float1-left-menu-item-right-ad">
									<div class="content-float1-left-menu-item-right-ad-top">
										<a href="">&nbsp;&nbsp;&nbsp;&nbsp;网站公告</a>
										<a href="">&nbsp;&nbsp;&nbsp;&nbsp;暂无</a>
									</div>
									<div class="content-float1-left-menu-item-right-ad-content">
										<a href="">习近平来访中国</a><br>
										<a href="">习近平来访中国</a><br>
										<a href="">习近平来访中国</a><br>
									</div>
								</div>
								<div class="content-float1-left-menu-item-right-ad-buttom"></div>
							</div>
						</div>
					</div>

				</div>
				
				
				
				
				
				
				
				
				
				
				<div id="content-myfloat1">
					<div class="content-myfloat1-top">
						<div class="content-myfloat1-top-picture">
							<img alt="" src="index/img/index/myfloat1.png">
						</div>
						<div class="content-myfloat1-top-text"></div>
						<div class="content-myfloat1-top-categoryname"></div>
						
						<div class="myCursor" id="content-myfloat1-top-newProduct">新品上架</div>
						<div class="myCursor" id="content-myfloat1-top-hotProduct">热卖商品</div>
						<div class="myCursor" id="content-myfloat1-top-vipPrice">特价专区</div>
						<div class="myCursor" id="content-myfloat1-top-random">猜你喜欢</div>
					</div>
					
					<div class="content-myfloat1-buttom">
					
					</div>
				
				</div>
				
				
				
				
				
				
				
				<div id="content-myfloat2">
					<div class="content-myfloat2-top">
						<div class="content-myfloat2-top-picture">
							<img alt="" src="index/img/index/myfloat2.png">
						</div>
						<div class="content-myfloat2-top-text"></div>
					</div>
					
					<div class="content-myfloat2-buttom">
					
					</div>
				
				</div>
				
				
				
				
				
				
				
				<div id="content-myfloat3">
					<div class="content-myfloat3-top">
						<div class="content-myfloat3-top-picture">
							<img alt="" src="index/img/index/myfloat3.png">
						</div>
						<div class="content-myfloat3-top-text"></div>
					</div>
					
					<div class="content-myfloat3-buttom">
					
					</div>
				
				</div>
				
				
				
				<div id="content-myfloat4">
					<div class="content-myfloat4-top">
						<div class="content-myfloat4-top-picture">
							<img alt="" src="index/img/index/myfloat4.png">
						</div>
						<div class="content-myfloat4-top-text"></div>
					</div>
					
					<div class="content-myfloat4-buttom">
					
					</div>
				
				</div>
				
				
				
				<div id="content-myfloat5">
					<div class="content-myfloat5-top">
						<div class="content-myfloat5-top-picture">
							<img alt="" src="index/img/index/myfloat5.png">
						</div>
						<div class="content-myfloat5-top-text"></div>
					</div>
					
					<div class="content-myfloat5-buttom">
					
					</div>
				
				</div>
				
				
				
				
				<div id="content-myfloat6">
					<div class="content-myfloat6-top">
						<div class="content-myfloat6-top-picture">
							<img alt="" src="index/img/index/myfloat6.png">
						</div>
						<div class="content-myfloat6-top-text"></div>
					</div>
					
					<div class="content-myfloat6-buttom">
					
					</div>
				
				</div>
				
				
				
				
				<div id="content-myfloat7">
					<div class="content-myfloat7-top">
						<div class="content-myfloat7-top-picture">
							<img alt="" src="index/img/index/myfloat7.png">
						</div>
						<div class="content-myfloat7-top-text"></div>
					</div>
					
					<div class="content-myfloat7-buttom">
					
					</div>
				
				</div>
				
				
				
				
				<div id="content-myfloat8">
					<div class="content-myfloat8-top">
						<div class="content-myfloat8-top-picture">
							<img alt="" src="index/img/index/myfloat8.png">
						</div>
						<div class="content-myfloat8-top-text"></div>
					</div>
					
					<div class="content-myfloat8-buttom">
					
					</div>
				
				</div>
				
				
				
				
				
				
				<div id="content-myfloat9">
					<div class="content-myfloat9-top">
						<div class="content-myfloat9-top-picture">
							<img alt="" src="index/img/index/myfloat9.png">
						</div>
						<div class="content-myfloat9-top-text"></div>
					</div>
					
					<div class="content-myfloat9-buttom">
					
					</div>
				
				</div>
				
				
				
				
				
				
				<div id="content-myfloat10">
					<div class="content-myfloat10-top">
						<div class="content-myfloat10-top-picture">
							<img alt="" src="index/img/index/myfloat10.png">
						</div>
						<div class="content-myfloat10-top-text"></div>
					</div>
					
					<div class="content-myfloat10-buttom">
					
					</div>
				
				</div>
				
				
				
				
				
				
				
				<div id="content-myfloat11">
					<div class="content-myfloat11-top">
						<div class="content-myfloat11-top-picture">
							<img alt="" src="index/img/index/myfloat11.png">
						</div>
						<div class="content-myfloat11-top-text"></div>
					</div>
					
					<div class="content-myfloat11-buttom">
					
					</div>
				
				</div>
				
				
				
				
				
				
				
				
				
				
				<div id="content-myfloat12">
					<div class="content-myfloat12-top">
						<div class="content-myfloat12-top-picture">
							<img alt="" src="index/img/index/myfloat12.png">
						</div>
						<div class="content-myfloat12-top-text"></div>
					</div>
					
					<div class="content-myfloat12-buttom">
					
					</div>
				
				</div>
				
				
				
				
				
				
				
				
				
				
				
				<div id="content-myfloat13">
					<div class="content-myfloat13-top">
						<div class="content-myfloat13-top-picture">
							<img alt="" src="index/img/index/myfloat13.png">
						</div>
						<div class="content-myfloat13-top-text"></div>
					</div>
					
					<div class="content-myfloat13-buttom">
					
					</div>
				
				</div>
				
				
				
				
				
			
		</div>
		<div id="foot"></div>
	</div>
</div>
