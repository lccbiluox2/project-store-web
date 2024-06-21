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
  			<form name="form1" method="post" action="/mystory/updateUserById">
					<table width="90%" class="altrowstable" id="alternatecolor">
						<tbody>
							
							<tr>
								<th><span class="color-red"></th>
								<td colspan="2">
									<p>
										<input type="hidden" name="u_id" value="${user.u_id }"/><br />
									</p>
								</td>
							</tr>
							<tr>
								<th><span class="color-red">*</span>用&nbsp;户&nbsp;名</th>
								<td colspan="2">
									<p>
										<input type="text" name="u_name" value="${user.u_name }"/><br />
									</p>
								</td>
							</tr>
							<tr>
								<th><span class="color-red">*</span>设置密码</th>
								<td colspan="2">
									<p>
										<input type="password" name="u_passwd" value="${user.u_passwd }" />
									</p>
									<br /></td>
							</tr>
							
							<tr>
								<th><span class="color-red">*</span>手&nbsp;机&nbsp;号</th>
								<td colspan="2"><p>
										<input type="text"  name="u_phone" value="${user.u_phone }" /><br />
									</p></td>
							</tr>
							<tr>
								<th><span class="color-red">*</span>邮&nbsp;&nbsp;箱</th>
								<td colspan="2"><p>
										<input type="email" name="u_email"  value="${user.u_email }"/><br />
									</p></td>
							</tr>
							
							<tr>
								<td align="left"><input type="checkbox" checked><label>我已阅读并接受
								</label>
								</td>
								<td align="right"><a href=""><span style="color:#00F">消费协议</span>
								</a>
								</td>
							</tr>
							<tr>
								<td colspan="2"><br />
								</td>
							</tr>
							<tr>
								<td colspan="2" align="center">
								<input type="submit" value="立即修改">
								</td>
							</tr>
						</tbody>
					</table>
				</form>
  	</div>
  	
  
  











  
  </body>
</html>
