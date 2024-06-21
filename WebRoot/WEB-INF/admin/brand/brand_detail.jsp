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
    
    <title>My JSP 'brand_detail.jsp' starting page</title>
    
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
	function update(){
		var form = document.forms[0];
		alert("aa"+form);
		form.action="/mystory/updateBrandById";
		form.method="post";
		form.submit();
	}
	
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
  				
  			</div>
  		</div>
  		<div id="content">
  			<table width="90%" class="altrowstable" id="alternatecolor">
  
  <form action="" method="post">
	
	 	<tr>
	 		<td>ID</td>
	 		<td align = "center">
	 			<input type="text" name="b_id" value="${brand_detail.b_id}" readonly="readonly"/>
	 		</td>  
	 	</tr>
	 	<tr>
	 		<td>品牌图片</td>
	 		<td align = "center">
	 			<img  src="${brand_detail.b_img_path}" width="100px" height="100px"/>
	 		</td>  
	 	</tr>
	 	<tr>
	 		<td>品牌名称</td>
	 		<td align = "center">
	 			<input type="text" name="b_name" value="${brand_detail.b_name}"/>
	 		</td>   
	 	</tr>
	 	<tr>
	 		<td>月销售</td>
	 		<td align = "center">暂无</td>  
	 	</tr>
	 	<tr>
	 		<td>库存</td>
	 		<td align = "center">暂无</td>    
	 	</tr>
	 	<tr>
	 		<td>
	 			<input type="button" value="保存修改" onclick="update()">
	 		</td>
	 		<td>取消修改</td>  
	 	</tr>
	 		
   </table>
				
</form>
  
   
  	</div>

  </body>
</html>
