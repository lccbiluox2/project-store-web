<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
	
	<script type="text/javascript" src="index/js/jquery-2.1.1/jquery.js" ></script>
	<script type="text/javascript" src="index/js/jquery-2.1.1/jquery.min.js" ></script>

	<link rel="stylesheet" type="text/css" href="admin/category/css/category_add.css">
	<script type="text/javascript" src="admin/category/js/category_add.js" ></script>
	
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
  				
  			</div>
  		</div>
  		<div id="content">
  		<table width="90%" class="altrowstable" id="alternatecolor">
		  <form action="">
		    	<tr>
		    		<td>名字</td>
		    		<td><input type="text" id="myname" name="c_name"/></td>
		    	</tr>
		    	<tr>
		    		<td>上级类别</td>
		    		<td>
		    		
		    		<select class="myselect" id="select_category_1">
							<option value="0" >请选择第一级菜单</option>
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
	    				
	    				<input type="hidden" name="c_pid" id="myc_pid" value=""/>
		    		
		    		</td>
		    	</tr>
		    	<tr>
		    		<td colspan="2"><input type="button" onclick="addCategory()" value="添加"/></td>
		    	</tr>
		    	  
		    </form>
    	</table>
  	</div>

  </body>
</html>
