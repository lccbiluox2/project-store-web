$(document).ready(function() { 
	
	 //为Select添加事件，当选择其中一项时触发 
	$("#select_category_1").change(function(){
		var txt=$("#select_category_1").val();
		 jQuery.ajax({
			 url: 'getAjaxCategory',
			 'type': 'post',
			 'data': {'ajaxCateId':txt},
			 success: function(data) {
				// alert(data);
					var objs = jQuery.parseJSON(data);  
	                 var str = "<option value='0' >请选择第二级菜单</option>";  
	                 for(var i=0;i<objs.length;i++){  
	                     str = str +"<option value='"+ objs[i].c_id+"'>"+objs[i].c_name+"</option>";       
	                 }  
	                 $("#select_category_2").html(str); 
			
			 	}
			 });
	}); 
	
	
	

	
		
	
	
	
	
	
	
});




function addCategory(){
	var form = document.forms[0];
	
	var seleone = $("#select_category_1").val();
	var seletwo = $("#select_category_2").val();
	
	var myname = $("#myname").val();
	
	
	var str = null;
	var seleoneFalg = false;
	var seletwoFlag = false;
	if(seleone != 0){
		seleoneFalg = true;
	}
	
	if(seletwo != 0 ){
		seletwoFlag = true;
		
	}
	
	
	
	
	if(seleoneFalg){
		//先判断添加二级页面
		if((seleoneFalg == true) &&  (seletwoFlag == false)){
			alert("--"+myname+"--");
			if(myname == "" || myname == null ){
				alert("类别名称不能为空");
			}else{
				//添加二级页面
				var t = $("#select_category_1").val();
	
				$("#myc_pid").val(t);

				form.action="/mystory/categoryAdd.do";
				form.method="post";
				form.submit();
				
			}
			/**/
		}else if((seleoneFalg == true) &&  (seletwoFlag == true)){
			//添加3级页面
			var t = $("#select_category_2").val();
			$("#myc_pid").val(t);
			form.action="/mystory/categoryAdd.do";
			form.method="post";
			form.submit();
		}
	}else{
		alert("请选择一级类别");
	}
	
}
