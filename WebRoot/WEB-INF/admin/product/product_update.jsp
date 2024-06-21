<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

<title>My JSP 'product_update.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<link rel="stylesheet" type="text/css"
	href="admin/brand/css/brandmanage.css">

 	<script type="text/javascript" src="index/js/jquery-2.1.1/jquery.js" ></script>
	 <script type="text/javascript" src="index/js/jquery-2.1.1/jquery.min.js" ></script>
	
	<script type="text/javascript" src="admin/product/js/product_add.js" ></script>


<script type="text/javascript">
	function altRows(id) {
		if (document.getElementsByTagName) {

			var table = document.getElementById(id);
			var rows = table.getElementsByTagName("tr");

			for (i = 0; i < rows.length; i++) {
				if (i % 2 == 0) {
					rows[i].className = "evenrowcolor";
				} else {
					rows[i].className = "oddrowcolor";
				}
			}
		}
	}

	window.onload = function() {
		altRows('alternatecolor');
	}
</script>
</head>

<body>
	<div id="body">
		<div id="top">
			<div id="top-menu1"></div>
		</div>
		<div id="content">
			<table width="90%" class="altrowstable" id="alternatecolor">

				<form action="productUpdate" method="post"
					enctype="multipart/form-data">
					<tr>
						<td></td>
						<td><input type="hidden" name="p_id" value="${product.p_id }" />
						</td>
					</tr>
					<tr>
						<td>名称：</td>
						<td><input type="text" name="p_name"
							value="${product.p_name }" />
						</td>
					</tr>
					<tr>
						<td>属性：</td>
						<td><input type="text" name="p_attr"
							value="${product.p_attr }" />
						</td>
					</tr>
					<tr>
						<td>会员价：</td>
						<td><input type="text" name="p_vip_price"
							value="${product.p_vip_price / 100 }" />
						</td>
					</tr>
					<tr>
						<td>市场价：</td>
						<td><input type="text" name="p_shop_price"
							value="${product.p_shop_price / 100 }" />
						</td>
					</tr>
					<tr>
						<td>类别：</td>
							<td>
							<select class="myselect" id="select_category_1">
								<option value="0" >请选择第一级菜单</option>
								<option value="1" >办公用品</option>
								<option value="1" >办公用品</option>
								<option value="2" > 办公家具</option>
								<option value="3" >办公设备</option>
								<option value="4" >教学器材</option>
								<option value="5" >文体用品</option>
								<option value="6" >商务礼品</option>
								<option value="7" >五金电料</option>
								<option value="8" >日用百货</option>
								<option value="9" >洗化用品</option>
								<option value="10" >商务礼品</option>
								<option value="11" >电脑耗材</option>
								<option value="12" >其他杂货</option>
							</select>
		    				<select class="myselect" id='select_category_2'></select>
		    				<select class="myselect"  id='select_category_3'></select>
		    				<input type="hidden" name="c_id" id="myc_id" value=""/>
	    				</td>
					</tr>
					<tr>
						<td>品牌：</td>
						<td><select name="p_b_id">
								<option value="0">请选择品牌</option>
								<c:forEach items="${brandList }" var="brand">
									<option value="${brand.b_id }"
										<c:if test="${product.p_b_id == brand.b_id }">selected</c:if>>${brand.b_name
										}</option>
								</c:forEach>
						</select></td>
					</tr>
					<tr>
						<td>库存量：</td>
						<td><input type="number" name="p_goods_surplus"
							value="${product.p_goods_surplus }" />
						</td>
					</tr>
					<tr>
						<td>详细描述：</td>
						<td><textarea rows="5" cols="60" name="p_description">${product.p_description }</textarea>
						</td>
					</tr>
					<tr>
						<td>图片：</td>
						<td><input type="file" name="p_img_id" />
						</td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="修改" />
						</td>
					</tr>

				</form>
			</table>
		</div>
	</div>
</body>
</html>
