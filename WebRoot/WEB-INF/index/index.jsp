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
	<link rel="stylesheet" type="text/css" href="index/css/index_two.css">
	<link rel="stylesheet" type="text/css" href="index/css/top.css">
	
	<!-- 外来插件的css -->
	
	
	 <!-- jQuery的js -->
	 <script type="text/javascript" src="index/js/jquery-2.1.1/jquery.js" ></script>
	 <script type="text/javascript" src="index/js/jquery-2.1.1/jquery.min.js" ></script>
	
	 <!-- 自己写的插件的js -->
	 <script type="text/javascript" src="index/js/index.js" ></script>
	 <script type="text/javascript" src="index/js/index_two.js" ></script>
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
								   				<a class="menuhref" style="color:red;" href="" >${children.category.c_name }</a>
								   				<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								   				<c:forEach items="${children.childrens }" var="children1">
								   					<a  class="menuhref" href="" >${children1.category.c_name }</a>
								   					&nbsp;&nbsp;&nbsp;&nbsp;
								   				</c:forEach>
								   				<br/>
								   			</c:forEach>
								</div>
								<div class="content-float1-left-menu-item-second2">
										 <c:forEach items="${map['treeCategoryList'][1].childrens }" var="children">
								   				<a class="menuhref" style="color:red;" href="" >${children.category.c_name }</a>
								   				<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								   				<c:forEach items="${children.childrens }" var="children1">
								   					<a  class="menuhref" href="" >${children1.category.c_name }</a>
								   					&nbsp;&nbsp;&nbsp;&nbsp;
								   				</c:forEach>
								   				<br/>
								   			</c:forEach>
								</div>
								<div class="content-float1-left-menu-item-second3">
											 <c:forEach items="${map['treeCategoryList'][2].childrens }" var="children">
								   				<a class="menuhref" style="color:red;" href="" >${children.category.c_name }</a>
								   				<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								   				<c:forEach items="${children.childrens }" var="children1">
								   					<a  class="menuhref" href="" >${children1.category.c_name }</a>
								   					&nbsp;&nbsp;&nbsp;&nbsp;
								   				</c:forEach>
								   				<br/>
								   			</c:forEach>
									
								</div>
								<div class="content-float1-left-menu-item-second4">
											 <c:forEach items="${map['treeCategoryList'][3].childrens }" var="children">
								   				<a class="menuhref" style="color:red;" href="" >${children.category.c_name }</a>
								   				<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								   				<c:forEach items="${children.childrens }" var="children1">
								   					<a  class="menuhref" href="" >${children1.category.c_name }</a>
								   					&nbsp;&nbsp;&nbsp;&nbsp;
								   				</c:forEach>
								   				<br/>
								   			</c:forEach>
								</div>
								<div class="content-float1-left-menu-item-second5">
											 <c:forEach items="${map['treeCategoryList'][4].childrens }" var="children">
								   				<a class="menuhref" style="color:red;" href="" >${children.category.c_name }</a>
								   				<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								   				<c:forEach items="${children.childrens }" var="children1">
								   					<a  class="menuhref" href="" >${children1.category.c_name }</a>
								   					&nbsp;&nbsp;&nbsp;&nbsp;
								   				</c:forEach>
								   				<br/>
								   			</c:forEach>
								</div>
								<div class="content-float1-left-menu-item-second6">
									 <c:forEach items="${map['treeCategoryList'][5].childrens }" var="children">
								   				<a class="menuhref" style="color:red;" href="" >${children.category.c_name }</a>
								   				<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								   				<c:forEach items="${children.childrens }" var="children1">
								   					<a  class="menuhref" href="" >${children1.category.c_name }</a>
								   					&nbsp;&nbsp;&nbsp;&nbsp;
								   				</c:forEach>
								   				<br/>
								   			</c:forEach>
								
								</div>
								<div class="content-float1-left-menu-item-second7">
											 <c:forEach items="${map['treeCategoryList'][6].childrens }" var="children">
								   				<a class="menuhref" style="color:red;" href="" >${children.category.c_name }</a>
								   				<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								   				<c:forEach items="${children.childrens }" var="children1">
								   					<a  class="menuhref" href="" >${children1.category.c_name }</a>
								   					&nbsp;&nbsp;&nbsp;&nbsp;
								   				</c:forEach>
								   				<br/>
								   			</c:forEach>
								</div>
								<div class="content-float1-left-menu-item-second8">
											 <c:forEach items="${map['treeCategoryList'][7].childrens }" var="children">
								   				<a class="menuhref" style="color:red;" href="" >${children.category.c_name }</a>
								   				<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								   				<c:forEach items="${children.childrens }" var="children1">
								   					<a  class="menuhref" href="" >${children1.category.c_name }</a>
								   					&nbsp;&nbsp;&nbsp;&nbsp;
								   				</c:forEach>
								   				<br/>
								   			</c:forEach>
								</div>
								<div class="content-float1-left-menu-item-second9">
											 <c:forEach items="${map['treeCategoryList'][8].childrens }" var="children">
								   				<a class="menuhref" style="color:red;" href="" >${children.category.c_name }</a>
								   				<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								   				<c:forEach items="${children.childrens }" var="children1">
								   					<a  class="menuhref" href="" >${children1.category.c_name }</a>
								   					&nbsp;&nbsp;&nbsp;&nbsp;
								   				</c:forEach>
								   				<br/>
								   			</c:forEach>
								</div>
								<div class="content-float1-left-menu-item-second10">
											 <c:forEach items="${map['treeCategoryList'][9].childrens }" var="children">
								   				<a class="menuhref" style="color:red;" href="" >${children.category.c_name }</a>
								   				<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								   				<c:forEach items="${children.childrens }" var="children1">
								   					<a  class="menuhref" href="" >${children1.category.c_name }</a>
								   					&nbsp;&nbsp;&nbsp;&nbsp;
								   				</c:forEach>
								   				<br/>
								   			</c:forEach>
								</div>
								<div class="content-float1-left-menu-item-second11">
											 <c:forEach items="${map['treeCategoryList'][10].childrens }" var="children">
								   				<a class="menuhref" style="color:red;" href="" >${children.category.c_name }</a>
								   				<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								   				<c:forEach items="${children.childrens }" var="children1">
								   					<a  class="menuhref" href="" >${children1.category.c_name }</a>
								   					&nbsp;&nbsp;&nbsp;&nbsp;
								   				</c:forEach>
								   				<br/>
								   			</c:forEach>
								</div>
								<div class="content-float1-left-menu-item-second12">
											 <c:forEach items="${map['treeCategoryList'][11].childrens }" var="children">
								   				<a class="menuhref" style="color:red;" href="" >${children.category.c_name }</a>
								   				<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								   				<c:forEach items="${children.childrens }" var="children1">
								   					<a  class="menuhref" href="" >${children1.category.c_name }</a>
								   					&nbsp;&nbsp;&nbsp;&nbsp;
								   				</c:forEach>
								   				<br/>
								   			</c:forEach>
								</div>
								
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
				
				
				
				
				
				<div id="fengexian"></div>
				
				
				
				
				<div id="content-myfloat1">
					<div class="content-myfloat1-top">
						<div class="content-myfloat1-top-picture"></div>
						<div class="content-myfloat1-top-text1"></div>
						<div class="content-myfloat1-top-categoryname"></div>
						
					
						
						<div  id="content-myfloat1-top-newProduct-button" >
							<a type="button" href="javascript:void(0)"  onclick="showNewProduct()">新品上架</a>
						</div>
						<div id="content-myfloat1-top-hotProduct-button">
							<a href="javascript:void(0)"  onclick="showHotProduct()">热卖商品</a>
						</div>
						<div id="content-myfloat1-top-vipPrice-button">
							<a href="javascript:void(0)"  onclick="showSpecialProduct()">特价专区</a>
						</div>
						<div id="content-myfloat1-top-random-button">
							<a href="javascript:void(0)"  onclick="showRandomProduct()" >猜你喜欢</a>
						</div>
					</div>
					
					
					
					<div class="content-myfloat1-buttom">
													
						   <c:forEach items="${map['xpProductList'] }" var="product">
						   <a href="www.baidu.com">
						   		<div class="mynewProducts">
						   		<div class="mynewProducts-img">
						   			<img src="${product.p_img_path }" width="100%" height="100%"/>
						   		</div>
						   		<div class="mynewProducts-name">
						   			${product.p_name }
						   		</div>
						   		<div class="mynewProducts-name">
						   			${product.p_attr }
						   		</div>
						   		<div class="mynewProducts-price">
						   			￥:${product.p_shop_price }
						   		</div>
						   		
						   		</div>
						   	</a>
						   </c:forEach>
						   
						   <c:forEach items="${map['rmProductList'] }" var="product">
						  		 <div class="myhotProducts">
						   		<div class="mynewProducts-img">
						   			<img src="${product.p_img_path }" width="100%" height="100%"/>
						   		</div>
						   		<div class="mynewProducts-name">
						   			${product.p_name }
						   		</div>
						   		<div class="mynewProducts-name">
						   			${product.p_attr }
						   		</div>
						   		<div class="mynewProducts-price">
						   			￥:${product.p_shop_price }
						   		</div>
						   		</div>
						   </c:forEach>
						  
						     <c:forEach items="${map['tjProductList'] }" var="product">
						     <div class="myspecialProducts">
						   		<div class="mynewProducts-img">
						   			<img src="${product.p_img_path }" width="100%" height="100%"/>
						   		</div>
						   		<div class="mynewProducts-name">
						   			${product.p_name }
						   		</div>
						   		<div class="mynewProducts-name">
						   			${product.p_attr }
						   		</div>
						   		<div class="mynewProducts-price">
						   			￥:${product.p_shop_price }
						   		</div>
						   		</div>
						   </c:forEach>
						   
						   
						   <c:forEach items="${map['likeProductList'] }" var="product">
						   <div class="myrandomProducts">
						   		<div class="mynewProducts-img">
						   			<img src="${product.p_img_path }" width="100%" height="100%"/>
						   		</div>
						   		<div class="mynewProducts-name">
						   			${product.p_name }
						   		</div>
						   		<div class="mynewProducts-name">
						   			${product.p_attr }
						   		</div>
						   		<div class="mynewProducts-price">
						   			￥:${product.p_shop_price }
						   		</div>
						   		</div>
						   </c:forEach>
						 
					</div>
				
				</div>
				
				
				
				
				
				
				
				<div id="content-myfloat2">
					<div id="content-myfloat2-top">
						<div class="content-myfloat2-top-picture">
							<img alt="" src="index/img/index/myfloat2.png" >
						</div>
						<div id="content-myfloat2-top-text">
						 
						</div>
						<div class="content-myfloat2-top-text-show">
						   &nbsp;》》&nbsp;
						   ${map['treeShow1'].children.category.c_name }&nbsp;》》&nbsp;
						   ${map['treeShow1'].children.children.category.c_name }
						</div>
					</div>
						
					<div class="content-myfloat2-buttom">
						
							<c:forEach items="${map['treeShow1'].children.children.childProducts }" var="product">	
								 <div class="myrandomProductsFloat2">
								   		<div class="mynewProducts-img">
								   			<img src="${product.p_img_path }" width="100%" height="100%"/>
								   		</div>
								   		<div class="mynewProducts-name">
								   			${product.p_name }
								   		</div>
								   		<div class="mynewProducts-name">
								   			${product.p_attr }
								   		</div>
								   		<div class="mynewProducts-price">
								   			￥:${product.p_shop_price }
								   		</div>
								   	</div>
						  		</c:forEach>
						  
					</div>
				
				</div>
				
				
				
				
				
				
				
				<div id="content-myfloat3">
					<div id="content-myfloat3-top">
						<div class="content-myfloat3-top-picture">
							<img alt="" src="index/img/index/myfloat3.png">
						</div>
						<div id="content-myfloat3-top-text"></div>
						<div class="content-myfloat2-top-text-show">
						   &nbsp;》》&nbsp;
						   ${map['treeShow2'].children.category.c_name }&nbsp;》》&nbsp;
						   ${map['treeShow2'].children.children.category.c_name }
						</div>
					</div>
					
					<div class="content-myfloat3-buttom">
						<c:forEach items="${map['treeShow2'].children.children.childProducts }" var="product">	
								 <div class="myrandomProductsFloat2">
								   		<div class="mynewProducts-img">
								   			<img src="${product.p_img_path }" width="100%" height="100%"/>
								   		</div>
								   		<div class="mynewProducts-name">
								   			${product.p_name }
								   		</div>
								   		<div class="mynewProducts-name">
								   			${product.p_attr }
								   		</div>
								   		<div class="mynewProducts-price">
								   			￥:${product.p_shop_price }
								   		</div>
								   	</div>
						  		</c:forEach>
					</div>
				
				</div>
				
				
				
				<div id="content-myfloat4">
					<div id="content-myfloat4-top">
						<div class="content-myfloat4-top-picture">
							<img alt="" src="index/img/index/myfloat4.png">
						</div>
						<div id="content-myfloat4-top-text"></div>
						<div class="content-myfloat2-top-text-show">
						   &nbsp;》》&nbsp;
						   ${map['treeShow3'].children.category.c_name }&nbsp;》》&nbsp;
						   ${map['treeShow3'].children.children.category.c_name }
						</div>
					</div>
					
					<div class="content-myfloat4-buttom">
							<c:forEach items="${map['treeShow3'].children.children.childProducts }" var="product">	
								 <div class="myrandomProductsFloat2">
								   		<div class="mynewProducts-img">
								   			<img src="${product.p_img_path }" width="100%" height="100%"/>
								   		</div>
								   		<div class="mynewProducts-name">
								   			${product.p_name }
								   		</div>
								   		<div class="mynewProducts-name">
								   			${product.p_attr }
								   		</div>
								   		<div class="mynewProducts-price">
								   			￥:${product.p_shop_price }
								   		</div>
								   	</div>
						  		</c:forEach>
					</div>
				
				</div>
				
				
				
				<div id="content-myfloat5">
					<div id="content-myfloat5-top">
						<div class="content-myfloat5-top-picture">
							<img alt="" src="index/img/index/myfloat5.png">
						</div>
						<div id="content-myfloat5-top-text"></div>
						<div class="content-myfloat2-top-text-show">
						   &nbsp;》》&nbsp;
						   ${map['treeShow4'].children.category.c_name }&nbsp;》》&nbsp;
						   ${map['treeShow4'].children.children.category.c_name }
						</div>
					</div>
					
					<div class="content-myfloat5-buttom">
							<c:forEach items="${map['treeShow4'].children.children.childProducts }" var="product">	
								 <div class="myrandomProductsFloat2">
								   		<div class="mynewProducts-img">
								   			<img src="${product.p_img_path }" width="100%" height="100%"/>
								   		</div>
								   		<div class="mynewProducts-name">
								   			${product.p_name }
								   		</div>
								   		<div class="mynewProducts-name">
								   			${product.p_attr }
								   		</div>
								   		<div class="mynewProducts-price">
								   			￥:${product.p_shop_price }
								   		</div>
								   	</div>
						  		</c:forEach>
					</div>
				
				</div>
				
				
				
				
				<div id="content-myfloat6">
					<div id="content-myfloat6-top">
						<div class="content-myfloat6-top-picture">
							<img alt="" src="index/img/index/myfloat6.png">
						</div>
						<div id="content-myfloat6-top-text"></div>
						<div class="content-myfloat2-top-text-show">
						   &nbsp;》》&nbsp;
						   ${map['treeShow5'].children.category.c_name }&nbsp;》》&nbsp;
						   ${map['treeShow5'].children.children.category.c_name }
						</div>
					</div>
					
					<div class="content-myfloat6-buttom">
							<c:forEach items="${map['treeShow5'].children.children.childProducts }" var="product">	
								 <div class="myrandomProductsFloat2">
								   		<div class="mynewProducts-img">
								   			<img src="${product.p_img_path }" width="100%" height="100%"/>
								   		</div>
								   		<div class="mynewProducts-name">
								   			${product.p_name }
								   		</div>
								   		<div class="mynewProducts-name">
								   			${product.p_attr }
								   		</div>
								   		<div class="mynewProducts-price">
								   			￥:${product.p_shop_price }
								   		</div>
								   	</div>
						  		</c:forEach>
					</div>
				
				</div>
				
				
				
				
				<div id="content-myfloat7">
					<div id="content-myfloat7-top">
						<div class="content-myfloat7-top-picture">
							<img alt="" src="index/img/index/myfloat7.png">
						</div>
						<div id="content-myfloat7-top-text"></div>
						<div class="content-myfloat2-top-text-show">
						   &nbsp;》》&nbsp;
						   ${map['treeShow6'].children.category.c_name }&nbsp;》》&nbsp;
						   ${map['treeShow6'].children.children.category.c_name }
						</div>
					</div>
					
					<div class="content-myfloat7-buttom">
							<c:forEach items="${map['treeShow6'].children.children.childProducts }" var="product">	
								 <div class="myrandomProductsFloat2">
								   		<div class="mynewProducts-img">
								   			<img src="${product.p_img_path }" width="100%" height="100%"/>
								   		</div>
								   		<div class="mynewProducts-name">
								   			${product.p_name }
								   		</div>
								   		<div class="mynewProducts-name">
								   			${product.p_attr }
								   		</div>
								   		<div class="mynewProducts-price">
								   			￥:${product.p_shop_price }
								   		</div>
								   	</div>
						  		</c:forEach>
					</div>
				
				</div>
				
				
				
				
				<div id="content-myfloat8">
					<div id="content-myfloat8-top">
						<div class="content-myfloat8-top-picture">
							<img alt="" src="index/img/index/myfloat8.png">
						</div>
						<div id="content-myfloat8-top-text"></div>
						<div class="content-myfloat2-top-text-show">
						   &nbsp;》》&nbsp;
						   ${map['treeShow7'].children.category.c_name }&nbsp;》》&nbsp;
						   ${map['treeShow7'].children.children.category.c_name }
						</div>
					</div>
					
					<div class="content-myfloat8-buttom">
							<c:forEach items="${map['treeShow7'].children.children.childProducts }" var="product">	
								 <div class="myrandomProductsFloat2">
								   		<div class="mynewProducts-img">
								   			<img src="${product.p_img_path }" width="100%" height="100%"/>
								   		</div>
								   		<div class="mynewProducts-name">
								   			${product.p_name }
								   		</div>
								   		<div class="mynewProducts-name">
								   			${product.p_attr }
								   		</div>
								   		<div class="mynewProducts-price">
								   			￥:${product.p_shop_price }
								   		</div>
								   	</div>
						  		</c:forEach>
					</div>
				
				</div>
				
				
				
				
				
				
				<div id="content-myfloat9">
					<div id="content-myfloat9-top">
						<div class="content-myfloat9-top-picture">
							<img alt="" src="index/img/index/myfloat9.png">
						</div>
						<div id="content-myfloat9-top-text"></div>
						<div class="content-myfloat2-top-text-show">
						   &nbsp;》》&nbsp;
						   ${map['treeShow8'].children.category.c_name }&nbsp;》》&nbsp;
						   ${map['treeShow8'].children.children.category.c_name }
						</div>
					</div>
					
					<div class="content-myfloat9-buttom">
							<c:forEach items="${map['treeShow8'].children.children.childProducts }" var="product">	
								 <div class="myrandomProductsFloat2">
								   		<div class="mynewProducts-img">
								   			<img src="${product.p_img_path }" width="100%" height="100%"/>
								   		</div>
								   		<div class="mynewProducts-name">
								   			${product.p_name }
								   		</div>
								   		<div class="mynewProducts-name">
								   			${product.p_attr }
								   		</div>
								   		<div class="mynewProducts-price">
								   			￥:${product.p_shop_price }
								   		</div>
								   	</div>
						  		</c:forEach>
					</div>
				
				</div>
				
				
				
				
				
				
				<div id="content-myfloat10">
					<div id="content-myfloat10-top">
						<div class="content-myfloat10-top-picture">
							<img alt="" src="index/img/index/myfloat10.png">
						</div>
						<div id="content-myfloat10-top-text"></div>
						<div class="content-myfloat2-top-text-show">
						   &nbsp;》》&nbsp;
						   ${map['treeShow9'].children.category.c_name }&nbsp;》》&nbsp;
						   ${map['treeShow9'].children.children.category.c_name }
						</div>
					</div>
					
					<div class="content-myfloat10-buttom">
						<c:forEach items="${map['treeShow9'].children.children.childProducts }" var="product">	
								 <div class="myrandomProductsFloat2">
								   		<div class="mynewProducts-img">
								   			<img src="${product.p_img_path }" width="100%" height="100%"/>
								   		</div>
								   		<div class="mynewProducts-name">
								   			${product.p_name }
								   		</div>
								   		<div class="mynewProducts-name">
								   			${product.p_attr }
								   		</div>
								   		<div class="mynewProducts-price">
								   			￥:${product.p_shop_price }
								   		</div>
								   	</div>
						  		</c:forEach>
					</div>
				
				</div>
				
				
				
				
				
				
				
				<div id="content-myfloat11">
					<div id="content-myfloat11-top">
						<div class="content-myfloat11-top-picture">
							<img alt="" src="index/img/index/myfloat11.png">
						</div>
						<div id="content-myfloat11-top-text"></div>
						<div class="content-myfloat2-top-text-show">
						   &nbsp;》》&nbsp;
						   ${map['treeShow10'].children.category.c_name }&nbsp;》》&nbsp;
						   ${map['treeShow10'].children.children.category.c_name }
						</div>
					</div>
					
					<div class="content-myfloat11-buttom">
						<c:forEach items="${map['treeShow10'].children.children.childProducts }" var="product">	
								 <div class="myrandomProductsFloat2">
								   		<div class="mynewProducts-img">
								   			<img src="${product.p_img_path }" width="100%" height="100%"/>
								   		</div>
								   		<div class="mynewProducts-name">
								   			${product.p_name }
								   		</div>
								   		<div class="mynewProducts-name">
								   			${product.p_attr }
								   		</div>
								   		<div class="mynewProducts-price">
								   			￥:${product.p_shop_price }
								   		</div>
								   	</div>
						  		</c:forEach>
					</div>
				
				</div>
				
				
				
				
				
				
				
				
				
				
				<div id="content-myfloat12">
					<div id="content-myfloat12-top">
						<div class="content-myfloat12-top-picture">
							<img alt="" src="index/img/index/myfloat12.png">
						</div>
						<div id="content-myfloat12-top-text"></div>
						<div class="content-myfloat2-top-text-show">
						   &nbsp;》》&nbsp;
						   ${map['treeShow11'].children.category.c_name }&nbsp;》》&nbsp;
						   ${map['treeShow11'].children.children.category.c_name }
						</div>
					</div>
					
					<div class="content-myfloat12-buttom">
							<c:forEach items="${map['treeShow11'].children.children.childProducts }" var="product">	
								 <div class="myrandomProductsFloat2">
								   		<div class="mynewProducts-img">
								   			<img src="${product.p_img_path }" width="100%" height="100%"/>
								   		</div>
								   		<div class="mynewProducts-name">
								   			${product.p_name }
								   		</div>
								   		<div class="mynewProducts-name">
								   			${product.p_attr }
								   		</div>
								   		<div class="mynewProducts-price">
								   			￥:${product.p_shop_price }
								   		</div>
								   	</div>
						  		</c:forEach>
					</div>
				
				</div>
				
				
				
				
				
				
				
				
				
				
				
				<div id="content-myfloat13">
					<div id="content-myfloat13-top">
						<div class="content-myfloat13-top-picture">
							<img alt="" src="index/img/index/myfloat13.png">
						</div>
						<div id="content-myfloat13-top-text"></div>
						<div class="content-myfloat2-top-text-show">
						   &nbsp;》》&nbsp;
						   ${map['treeShow12'].children.category.c_name }&nbsp;》》&nbsp;
						   ${map['treeShow12'].children.children.category.c_name }
						</div>
					</div>
					
					<div class="content-myfloat13-buttom">
						<c:forEach items="${map['treeShow12'].children.children.childProducts }" var="product">	
								 <div class="myrandomProductsFloat2">
								   		<div class="mynewProducts-img">
								   			<img src="${product.p_img_path }" width="100%" height="100%"/>
								   		</div>
								   		<div class="mynewProducts-name">
								   			${product.p_name }
								   		</div>
								   		<div class="mynewProducts-name">
								   			${product.p_attr }
								   		</div>
								   		<div class="mynewProducts-price">
								   			￥:${product.p_shop_price }
								   		</div>
								   	</div>
						  		</c:forEach>
					</div>
				
				</div>
				
				
				
				
				
			
		</div>
		<div id="foot"></div>
	</div>
</div>
