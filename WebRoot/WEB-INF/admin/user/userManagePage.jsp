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
    
    <title>My JSP 'userManagePage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	<link rel="stylesheet" type="text/css" href="admin/user/css/usermanage.css">
	
	<script type="text/javascript">
	
		//分页跳转函数2016/5/25
		function gotoPageNum( offset ){
		if(offset == "" || offset == null){
			offset = $("#currentPage").val();
			if(offset == ""){
			return;
			}
		}
		window.location.href = "userManage?currentPage=" + offset;
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
				 	
				 		<td>名称</td>
				 		<td>删除</td>
				 		<td>删除</td>
				 	</tr>
				 	<c:forEach items="${pageBean.recordList}" var="userList" >  
				        <tr>    
				             <td align = "center">${userList.u_id}</td>  
				             
				             <td align = "center">${userList.u_name}</td>  
				            
				           
				           	<td><a href="/mystory/getUserById?id=${userList.u_id}">修改</a></td>
				           	<td><a href="/mystory/delUserById?id=${userList.u_id}">删除</a></td>
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
