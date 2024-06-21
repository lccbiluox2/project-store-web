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
    
    <title>My JSP 'brandManagePage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="admin/brand/css/brandmanage.css">
	
	
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
  
  <body>
  	<div id="body">
  		<div id="top">
  			<div id="top-menu1">
  				<a href="${pageContext.request.contextPath }/toJspPage?whatPage=/admin/brand/brand_add">
					<img alt="" src="admin/brand/img/add.png" width="100%" height="100%">
				</a>
  			</div>
  		</div>
  		<div id="content">
  			<table width="90%" class="altrowstable" id="alternatecolor">
			 	<tr>
			 		<td>ID</td>
			 		<td>品牌图片</td>
			 		<td>品牌名称</td>
			 		<td>月销售</td>
			 		<td>库存</td>
			 		<td>修改</td>
			 		<td>删除</td>
			 	</tr>
			 	<c:forEach items="${brandList}" var="brandList" >  
			        <tr>    
			             <td align = "center">${brandList.b_id}</td>  
			             <td align = "center">
			             	<a href="/mystory/toJspPage?whatPage=/admin/brand/brand_img&parameter=${brandList.b_id}  ">
			             		<img src="${brandList.b_img_path}" width="100px" height="100px"/>
			             	</a>
			             </td>  
			             <td align = "center">${brandList.b_name}</td>  
			             <td align = "center">暂无</td>  
			             <td align = "center">暂无</td>  
			           
			           	<td><a href="/mystory/modifyBrandById?id=${brandList.b_id}">修改</a></td>
			           	<td><a href="/mystory/delBrandById?id=${brandList.b_id}">删除</a></td>
			         </tr>  
				 </c:forEach>  
			
		   </table>
  		</div>
  		<div id="footer">
  			  <a href="brandManage?offset=1&pagesize=4&orientation=3">首页</a>
			  <a href="brandManage?offset=5&pagesize=4&orientation=2">向上跳转5页</a>
			  <a href="brandManage?offset=10&pagesize=4&orientation=2">向上跳转10页</a>
			  <a href="brandManage?offset=1&pagesize=4&orientation=1">下一页</a>
			  <a href="brandManage?offset=1&pagesize=4&orientation=2">上一页</a>
			  <a href="brandManage?offset=5&pagesize=4&orientation=1">向下跳转5页</a>
			  <a href="brandManage?offset=10&pagesize=4&orientation=1">向下跳转10页</a>
			  <a href="brandManage?offset=1&pagesize=4&orientation=4">尾页</a>
  		</div>
  	</div>
  	
  
   
  
  
  
 
  
  
  
  </body>
</html>
