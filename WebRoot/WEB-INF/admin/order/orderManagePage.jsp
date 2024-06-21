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
		window.location.href = "goAndShowAllUserOrder?currentPage=" + offset;
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
  			<table width="100%" class="altrowstable" id="alternatecolor">
			 	<tr>
			 		<td>ID</td>
			 		<td>订单号</td>
			 		<td>商品编号</td>
			 		<td>商品ID</td>
			 		<td>商品图片</td>
			 		<td>品牌图片</td>
			 		<td>商品VIP price</td>
			 		<td>商品数量</td>
			 		<td>总费用</td>
			 		<td>下单人ID</td>
			 		<td>下单人姓名</td>
			 		<td>状态</td>
			 		<td>下单时间</td>
			 		<td>受理</td>
			 		

			 	</tr>
			 	<!-- 5/27用pageBean.recordList获得列表 -->
			 	<c:forEach items="${pageBean.recordList}" var="orderList" >  
			        <tr>    
			             <td align = "center">${orderList.o_id}</td>  
			             <td align = "center">${orderList.o_number}</td>
			             <td align = "center">${orderList.p_number}</td>
			             <td align = "center">${orderList.p_id}</td>
			             <td align = "center">
			             		<img src="${orderList.p_img_path}" width="100px" height="100px"/>
			             </td>  
			             <td align = "center">
			             		<img src="${orderList.b_img_path}" width="100px" height="100px"/>
			             </td>  
			             <td align = "center">${orderList.p_vip_price}</td>  
			             <td align = "center">${orderList.o_count}</td>  
			             <td align = "center">${orderList.o_all_money}</td>  
			             <td align = "center">${orderList.u_id}</td>  
			             <td align = "center">${orderList.u_name}</td>  
			             <td align = "center">
			             <c:choose>
							<c:when test="${orderList.o_state==1}">
				             	未受理
				 			</c:when>
							<c:otherwise>
								已受理
							</c:otherwise>
						</c:choose>
			             	
			             </td>  
			             <td align = "center">${orderList.o_time}</td>  
			             
			           
			           	<td><a href="updateOrderState?o_id=${orderList.o_id}">受理</a></td>
			         
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
