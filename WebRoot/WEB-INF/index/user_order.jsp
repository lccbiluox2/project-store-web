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
	<link rel="stylesheet" type="text/css" href="index/css/user_order.css">
	
	
	<!-- 外来插件的css -->
	
	
	 <!-- jQuery的js -->
	 <script type="text/javascript" src="index/js/jquery-2.1.1/jquery.js" ></script>
	 <script type="text/javascript" src="index/js/jquery-2.1.1/jquery.min.js" ></script>
	
	 <!-- 自己写的插件的js -->
	 <script type="text/javascript" src="index/js/user_order.js" ></script>
	 
	
	 <!-- 外来插件的js -->
	 <script type="text/javascript" src="index/js/top/jquerysession.js" ></script>
	 
	 
	 
	 <script>
	 //分页跳转函数2016/5/27
		function gotoPageNum( offset ){
		alert(offset);
		var u_id = $.session.get("u_id");
		if(offset == "" || offset == null){
			offset = $("#currentPage").val();
			
			if(offset == ""){
				return;
			}
		}
		window.location.href = "goAndShowUserOrder?u_id="+u_id+"&currentPage=" + offset;
		}
	 </script>

</head>
<body class="body">
	<div id="body2">
		<div id="top">
			 
		</div>
		<div id="top1">
		<a href="#">订单</a>
		
		</div>
		<div id="top2">
		<h3>全部订单</h3>
		</div>
		<div id="content">
		<table width="90%" class="altrowstable" id="alternatecolor">
			<tr>
					<td>订单ID</td>
	   				<td>订单号</td>
	   				<td>商品编号</td>
	   				<td>商品ID</td>
	   				<td>商品图片</td>
	   				<td>品牌图片</td>
	   				<td>商品VIP price</td>
	   				<td>商品数量</td>
	   				<td>总费用</td>
	   				<td>谁下的单  u_id</td>
	   				<td>谁下的单  u_name</td>
	   				<td>运费</td>
	   				<td>状态（已结算，未结算）</td>
	   				<td>下单时间</td>
	   				</tr>
			<c:forEach items="${pageBean.recordList }" var="orderList">
			 	
	   				<tr>
	   				
	   				
	   				<td>
	   					${orderList.o_id  }
	   				</td>
	   				<td>
	   					${orderList.o_number  }
	   				</td>
	   				<td>
	   					${orderList.p_number  }
	   				</td>
	   				<td>
	   					${orderList.p_id  }
	   				</td>
	   				
	   				
	   				<td>
	   					<img alt="" src="${orderList.p_img_path  }" width="100px" height="100px">
	   				</td>
	   				<td>
	   					<img alt="" src="${orderList.b_img_path  }" width="100px" height="100px">
	   				</td>
	   				<td>
	   					${orderList.p_vip_price  }
	   				</td>
	   				<td>
	   					${orderList.o_count  }
	   				</td>
	   				<td>
	   					${carList.o_all_money }
	   				</td>
	   				<td>
	   					${orderList.u_id  }
	   				</td>
	   				<td>
	   					${orderList.u_name  }
	   				</td>
	   				<td>
	   					${orderList.o_path_money }
	   					
	   				</td>
	   				
	   				<td>
	   					<a href="javascript:void(0);" onclick="delCartById(${orderList.o_state })">结算</a>
	   					<a href="javascript:void(0);" onclick="delCartById(${orderList.o_state })">未结算</a>
	   				</td>
	   				<td>
	   				
	   				${orderList.o_time }
	   				
	   				</td>
	   				</tr>
	   				
			</c:forEach>
			</table>
		
		</div>
		<div id="footer">
					<a href="javascript:gotoPageNum(1)" title="首页"
						style="cursor: hand;">首页</a>
							<c:choose>
							<c:when test="${pageBean.currentPage - 1 <= 0 }">
								上一页
							</c:when>
							<c:otherwise>
								<a href="javascript:gotoPageNum(${pageBean.currentPage - 1 })">上一页</a>
							</c:otherwise>
						</c:choose>
					<c:if test="${(pageBean.currentPage - 3 > 0) && pageBean.pageCount > 5 }">...</c:if>
					<c:forEach begin="${pageBean.beginPageIndex }"
						end="${pageBean.endPageIndex }" var="num">
						<c:choose>
							<c:when test="${pageBean.currentPage == num }">
								<span class="PageSelectorNum PageSelectorSelected">${num }</span>
							</c:when>
							<c:otherwise>
								<span class="PageSelectorNum" style="cursor: hand;"
									onClick="gotoPageNum(${num});">${num }</span>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${(pageBean.currentPage + 2 < pageBean.pageCount) && pageBean.pageCount > 5 }">...</c:if>
						<c:choose>
							<c:when test="${pageBean.currentPage + 1 > pageBean.pageCount }">
								下一页
							</c:when>
							<c:otherwise>
								<a href="javascript:gotoPageNum(${pageBean.currentPage + 1 })">下一页</a>
							</c:otherwise>
						</c:choose>
				
				
					<a href="javascript:gotoPageNum(${pageBean.pageCount })"
						title="尾页" style="cursor: hand;"> 尾页</a>
					总共${pageBean.pageCount }页
					<input type="number" name="currentPage" id="currentPage" min="1" max="${pageBean.pageCount }"/>
					<a href="javascript:gotoPageNum();">go</a>
			
		</div>
		
		
		
	</div>




</body>
</html>
