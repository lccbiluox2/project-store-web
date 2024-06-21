<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<title>创业</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<!-- 自己写的插件的css -->
<link rel="stylesheet" type="text/css"
	href="index/css/search_product_list.css">


<!-- 外来的css -->
<link rel="stylesheet" type="text/css" href="index/css/top.css">

<!-- jQuery的js -->
<script type="text/javascript" src="index/js/jquery-2.1.1/jquery.js"></script>
<script type="text/javascript" src="index/js/jquery-2.1.1/jquery.min.js"></script>

<!-- 自己写的插件的js -->
<script type="text/javascript" src="index/js/search_product_list.js"></script>


<!-- 外来插件的js -->






<script type="text/javascript">
	function gotoPageNum( offset,str ){
		if(offset == "" || offset == null){
			offset = $("#currentPage").val();
			if(offset == ""){
			return;
			}
		}
		window.location.href = "ssSelectProduct?currentPage=" + offset + "&str=" + str;
		}
	
</script>




</head>


<body id="body">
	<div id="body2">
		<div id="top">
			<jsp:include page="/WEB-INF/index/top.jsp" />
		</div>
		<div id="content">
			<c:choose>
				<c:when test="${pageBean.recordList == null }">
				             未搜索到您搜索的商品，请换个关键字重新搜索！
				 </c:when>
				<c:otherwise>
						<c:forEach items="${pageBean.recordList }" var="product">
							<a href="/mystory/getProductById?id=${product.p_id }">
								<div class="mynewProducts">
									<div class="mynewProducts-img">
										<img src="${product.p_img_path }" width="100%" height="100%" />
									</div>
									<div class="mynewProducts-name">${product.p_name }</div>
									<div class="mynewProducts-name">${product.p_attr }</div>
									<div class="mynewProducts-price">￥:${product.p_shop_price
										}</div>
								</div> 
							</a>
						</c:forEach>
				</c:otherwise>
			</c:choose>


		</div>

		<div id="footer">
  			<a href="javascript:gotoPageNum(1,${str })" title="首页"
						style="cursor: hand;">首页</a>
							<c:choose>
							<c:when test="${pageBean.currentPage - 1 <= 0 }">
								上一页
							</c:when>
							<c:otherwise>
								<a href="javascript:gotoPageNum(${pageBean.currentPage - 1 },${str })">上一页</a>
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
									onClick="gotoPageNum(${num},${str });">${num }</span>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${(pageBean.currentPage + 2 < pageBean.pageCount) && pageBean.pageCount > 5 }">...</c:if>
						<c:choose>
							<c:when test="${pageBean.currentPage + 1 > pageBean.pageCount }">
								下一页
							</c:when>
							<c:otherwise>
								<a href="javascript:gotoPageNum(${pageBean.currentPage + 1 },${str })">下一页</a>
							</c:otherwise>
						</c:choose>
				
				
					<a href="javascript:gotoPageNum(${pageBean.pageCount },${str })"
						title="尾页" style="cursor: hand;"> 尾页</a>
					总共${pageBean.pageCount }页
					<input type="number" name="currentPage" id="currentPage" min="1" max="${pageBean.pageCount }"/>
					<a href="javascript:gotoPageNum("",${str });">go</a>
  		</div>
   
	</div>
</body>
<html>