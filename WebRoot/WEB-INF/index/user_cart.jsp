<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

	<!-- 自己写的插件的css -->
	<link rel="stylesheet" type="text/css" href="index/css/user_cart.css">
	
	
	<!-- 外来插件的css -->
	
	
	 <!-- jQuery的js -->
	 <script type="text/javascript" src="index/js/jquery-2.1.1/jquery.js" ></script>
	 <script type="text/javascript" src="index/js/jquery-2.1.1/jquery.min.js" ></script>
	
	
	 <!-- 自己写的插件的js -->
	 <script type="text/javascript" src="index/js/user_cart/user_cart.js" ></script>
	 
	
	 <!-- 外来插件的js -->
	  <!-- 逐个提交表单的插件 for循环提交表单会出错 只能提交第一个表单 -->
	 <script type="text/javascript" src="index/js/user_cart/jquery-form.js" ></script>
	 <script type="text/javascript" src="index/js/product_detail/jquerysession.js" ></script>
	 
<script type="text/javascript">
	
	
	
function altRows(id){
	if(document.getElementsByTagName){  
		
		var table = document.getElementById(id);  
		var rows = table.getElementsByTagName("tr"); 
		 
		for(i = 0; i < rows.length; i++){          
			if(i % 2 == 0){
				rows[i].className = "evenrowcolor";
			}else{
				rows[i].className = "oddrowcolor";
			}      
		}
	}
}

window.onload=function(){
	altRows('alternatecolor');
}
</script>
	
</head>
<body class="body">
	<div id="body2">
		<div id="top">
			 
		</div>
		<div id="top1">
		<a href="#">购物车</a>
		
		</div>
		<div id="top2">
		<h3>全部订单</h3>
		</div>
		<div id="content">
		<table width="90%" class="altrowstable" id="alternatecolor">
			<tr>
					<td>下订单</td>
	   				<td>商品ID</td>
	   				<td>商品编号</td>
	   				<td>商品图片</td>
	   				<td>品牌图片</td>
	   				<td>商品单价</td>
	   				<td>商品数量</td>
	   				<td>金额（元）</td>
	   				<td>用户iD</td>
	   				<td>用户名</td>
	   				<td>状态</td>
	   				<td>操作</td>
	   				</tr>
	   		<c:set var="index" value="0" /> 
			<c:forEach items="${cartList }" var="cartList">
			 	
	   				<tr class="trid<c:out value='${index}'/>">
	   				
					
	   				<td>
	   					
	   					
	   					<input type="checkbox" class="chooseItems"	 >
	   					<form id="form<c:out value='${index}'/>" action="/mystory/addOrder" method="post">
	   						<input type="hidden" name="p_number" value="${cartList.p_number }"  />
	   						<input type="hidden" name="p_id" value="${cartList.p_id }"  />
	   						<input type="hidden" name="p_img_path" value="${cartList.p_img_path }"  />
	   						<input type="hidden" name="b_img_path" value="${cartList.b_img_path }"  />
	   						<input type="hidden" name="p_vip_price" value="${cartList.p_vip_price }"  />
	   						<input type="hidden" name="o_count" value="${cartList.p_count }"  />
	   						<input type="hidden" name="u_id" value="${cartList.u_id }"  />	
	   						<input type="hidden" name="u_name" value="${cartList.u_name }"  />	
	   						<input type="hidden" name="cart_id" value="${cartList.cart_id }"  />	
	   					</form>
	   					<c:set var="index" value="${index+1}" />
	   				</td>
	   				
	   				<td>
	   					${cartList.p_id  }
	   				</td>
	   				<td>
	   					${cartList.p_number  }
	   				</td>
	   				
	   				<td>
	   					<img alt="" src="${cartList.p_img_path  }" width="100px" height="100px">
	   				</td>
	   				<td>
	   					<img alt="" src="${cartList.b_img_path  }" width="100px" height="100px">
	   				</td>
	   				<td>
	   					${cartList.p_vip_price  }
	   				</td>
	   				<td>
	   					${cartList.p_count  }
	   				</td>
	   				<td>
	   					暂无
	   				</td>
	   				<td>
	   					${cartList.u_id  }
	   				</td>
	   				<td>
	   					${cartList.u_name  }
	   				</td>
	   				<td>
	   					<c:choose>
						    <c:when test="${cartList.state == 0  }">
						      		未处理
						    </c:when>
						 </c:choose>
	   					
	   				</td>
	   				<td>
	   					<a href="javascript:void(0);" onclick="delCartById(${cartList.cart_id })">删除</a>
	   				</td>
	   				</tr>
	   				
			</c:forEach>
			</table>
		
		</div>
		<div id="footer">
		<input type="checkbox"  onclick="selectAll();" />
		<input type="button" value="结算"  onclick="toOrder();"/>
		
		</div>
		
		
		
	</div>




</body>
</html>
