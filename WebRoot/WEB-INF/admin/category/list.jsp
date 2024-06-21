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
    <title>分类</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<link rel="stylesheet" type="text/css" href="admin/category/css/category_list.css">
	

  </head>
  
  <body>
 	<div id="body">
 		
 	
   
   <c:forEach items="${treeShowList }" var="treeShow">
   	<div class="one">
   		<div class="one-top">
   			<div class="one-top-tab1" ></div>
   			<div class="one-top-grandfather" >
   				${treeShow.category.c_name }
   			</div>
   			<div class="one-top-tab2" ></div>
   			<div class="one-top-tab3" ></div>
   			<div class="one-top-grandfather_del" >
   				
   			</div>
   			<div class="one-top-grandfather_update" >
   				
   			</div>
   		</div>
   		
   		
   		 <c:forEach items="${treeShow.childrens }" var="children">
   		 
   		 	<div class="two-top" >
   		 		<div class="two-top-tab" ></div>
   		 		<div class="two-top-tab2" ></div>
	   			<div class="two-top-grandfather" >
	   				${children.category.c_name }
	   			</div>
	   			<div class="two-top-tab3" ></div>
	   			<div class="two-top-grandfather_del" >
	   				<a href="categoryDelete?id=${children.category.c_id }" onclick="return confirm('你确定要删除此类和它的子类别吗？');">删除</a>
	   			</div>
	   			<div class="two-top-grandfather_update" >
	   				<a href="categoryUpdateUI?id=${children.category.c_id }">修改</a>
	   			</div>
   		 	</div>
		   					
		   		
   				<c:forEach items="${children.childrens }" var="children1">
  		 			   

					<div class="tree-top" >
		   		 		<div class="tree-top-tab" ></div>
		   		 		<div class="tree-top-tab2" ></div>
		   		 		<div class="tree-top-tab3" ></div>
			   			<div class="tree-top-grandfather" >
			   				${children1.category.c_name }
			   			</div>
			   			<div class="tree-top-grandfather_del" >
			   				<a href="categoryDelete?id=${children1.category.c_id }" onclick="return confirm('你确定要删除此类和它的子类别吗？');">删除</a>
			   			</div>
			   			<div class="tree-top-grandfather_update" >
			   				<a href="categoryUpdateUI?id=${children1.category.c_id }">修改</a>
			   			</div>
		   		 	</div>


   				</c:forEach>
   			</c:forEach>
   	

   	</div>
   </c:forEach>
  
 </div>

   
  </body>
</html>
