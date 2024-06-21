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

<title>My JSP 'add.jsp' starting page</title>

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

				<form action="categoryUpdate.do">
					<input type="hidden" name="c_id" value="${category.c_id }" />
				<tr>
					<td>名字</td>
					<td><input type="text" name="c_name"
						value="${category.c_name }" /></td>
				</tr>
				<tr>
					<td>上级类别</td>
					<td><select name="c_pid">
							<option value="0">请选择上级类别</option>
							<c:forEach items="${categoryList }" var="category1">
								<option value="${category1.c_id }"
									<c:if test="${category1.c_id == category.c_pid }">selected</c:if>>${category1.c_name
									}</option>
							</c:forEach>
					</select>
					</td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="添加" />
					</td>
				</tr>


				</form>
			</table>
		</div>
	</div>
</body>
</html>
