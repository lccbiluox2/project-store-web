<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="admin/css/update_index_pic.css">
<title></title>
</head>
<body>
<div class="body2">
    <table class="table">
    	<tr>
    		<td>
    			<a href="${pageContext.request.contextPath }/toJspPage?whatPage=/admin/update_index_picture_real&parameter=1">
    			<img src="index/plungs/mylinght/images/img1.jpg" alt="img1" style="width:100%;height:50%" />
    			</a>
    		</td>
    		<td>
    			<a href="${pageContext.request.contextPath }/toJspPage?whatPage=/admin/update_index_picture_real&parameter=2">
    			<img src="index/plungs/mylinght/images/img2.jpg" alt="img1"  style="width:100%;height:50%"/>
    			</a>
    		</td>
    	</tr>
    	<tr>
    		<td >
    			<a href="${pageContext.request.contextPath }/toJspPage?whatPage=/admin/update_index_picture_real&parameter=3">
    			<img src="index/plungs/mylinght/images/img3.jpg" alt="img3" style="width:100%;height:50%"  />
    			</a>
    		</td>
    		<td>
    			<a href="${pageContext.request.contextPath }/toJspPage?whatPage=/admin/update_index_picture_real&parameter=4">
    			<img src="index/plungs/mylinght/images/img4.jpg" alt="img4" style="width:100%;height:50%" />
    			</a>
    		</td>
    	</tr>
    
    </table>
</div>
</body>	
</html>