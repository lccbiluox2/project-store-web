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
	
	//分页跳转函数2016/5/27
		function gotoPageNum( offset ){
		if(offset == "" || offset == null){
			offset = $("#currentPage").val();
			if(offset == ""){
			return;
			}
		}
		window.location.href = "brandManage?currentPage=" + offset;
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
			 	<tr>
			 		<td>ID</td>
			 		<td>品牌图片</td>
			 		<td>品牌名称</td>
			 		<td>月销售</td>
			 		<td>库存</td>
			 		<td>修改</td>
			 		<td>删除</td>
			 	</tr>
			 	<!-- 5/27用pageBean.recordList获得列表 -->
			 	<c:forEach items="${pageBean.recordList}" var="brandList" >  
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
  		//分页显示
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
