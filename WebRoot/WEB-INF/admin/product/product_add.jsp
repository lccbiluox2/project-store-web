<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
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
	
	<script type="text/javascript" src="admin/product/js/product_add.js" ></script>
	
	<link rel="stylesheet" type="text/css" href="admin/product/css/product_add.css">
	
	
		<script type="text/javascript">
		function gotoPageNum( offset , pagesize , orientation ){
		$(document.forms[0]).append("<input type='hidden' name='offset' value='" + offset +"'>");
		$(document.forms[0]).append("<input type='hidden' name='pagesize' value='" + pagesize +"'>");
		$(document.forms[0]).append("<input type='hidden' name='orientation' value='" + orientation +"'>");
		document.forms[0].submit();
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
  		添加商品
  	</div>
  	<div id="content">
  		
  			<form action="" method="post"  enctype="multipart/form-data">
    		<table width="90%" class="altrowstable" id="alternatecolor">
    			<tr>
	    			<td>p_number
	    				商品名称:
	    			</td>
	    			<td colspan="3">
	    				<input class="myinput" type="text" name="p_name"/>
	    			</td>
	    			
    			</tr>
    			<tr>
	    			<td>
	    				商品编号:
	    			</td>
	    			<td colspan="3">
	    				<input class="myinput" type="text" name="p_number"/>
	    			</td>
	    			
    			</tr>
    			<tr>
	    			<td>
	    				属性：
	    			</td>
	    			<td colspan="3">
	    				<input class="myinput" type="text" name="p_attr"/>
	    			</td>
	    			
    			</tr>
    			<tr>
	    			<td>
	    				会员价：
	    			</td>
	    			<td colspan="3">
	    				<input class="myinput" type="text" name="p_vip_price"/>
	    			</td>
	    			
    			</tr>
    			<tr>
	    			<td>
	    				市场价：
	    			</td>
	    			<td colspan="3">
	    				<input class="myinput" type="text" name="p_shop_price"/>
	    			</td>
	    			
    			</tr>
    			<tr>
	    			<td>
	    				类别：
	    			</td>
	    			<td colspan="3">
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
	    			<td>
	    				品牌：
	    			</td>
	    			<td colspan="3">
	    				<select class="myinput"  name="p_b_id">
							<option value="0">请选择品牌</option>
							<c:forEach items="${brandList }" var="brand">
								<option value="${brand.b_id }">${brand.b_name }</option>
							</c:forEach>
						</select>
	    			</td>
	    		
    			</tr>
    			<tr>
	    			<td>
	    				库存量:
	    			</td>
	    			<td colspan="3">
	    				<input class="myinput" type="number" name="p_goods_surplus"/>
	    			</td>
	    			
    			</tr>
    			<tr>
	    			<td>
	    				说明：
	    			</td>
	    			<td colspan="3">
	    				<textarea rows="4" cols="100%" name="p_description"></textarea>
	    			</td>
	    			
    			</tr>
    			<tr>
	    			<td>
	    				图片：
	    			</td>
	    			<td colspan="3" >
	    				<input class="myinput" type="file" name="p_img_id"/>
	    			</td>
	    			
    			</tr>
    			<tr>
	    			<td colspan="4" style="text-align:center;">
	    				<input type="button" value="添加" onclick="addProduct()"/>
	    			</td>
    			</tr>
    		</table>	
    </form>
  	
  	</div>
  	 
    
  
  </div>
   
    
  </body>
</html>
