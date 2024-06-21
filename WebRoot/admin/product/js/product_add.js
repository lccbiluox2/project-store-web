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
	
	
	
	 //为Select添加事件，当选择其中一项时触发 
	$("#select_category_2").change(function(){
		
		var txt=$("#select_category_2").val();
		 jQuery.ajax({
			 url: 'getAjaxCategory',
			 'type': 'post',
			 'data': {'ajaxCateId':txt},
			 success: function(data) {
					var objs = jQuery.parseJSON(data);  
	                 var str = "<option value='0' >请选择第三级菜单</option>";  
	                 for(var i=0;i<objs.length;i++){  
	                     str = str +"<option value='"+ objs[i].c_id+"'>"+objs[i].c_name+"</option>";  
	                     
	                 }  
	                 $("#select_category_3").html(str); 
			
			 	}
			 });
		}); 
	
	
	
	
	
	
	
});




function addProduct(){
	var form = document.forms[0];
	//得到一级菜单
	var seleone = $("#select_category_1").val();
	//得到2级菜单
	var seletwo = $("#select_category_2").val();
	//得到2级菜单
	var selet3 = $("#select_category_3").val();
	

	if(seleone == 0){
		alert("请选择一级类别");

	}else if(seletwo == 0){
		alert("请选择二级级类别");
	}else if(selet3 == 0){
		//添加二级类别
		$("#myc_id").val(seletwo);
	}else{
		//添加3级类别
		
		$("#myc_id").val(selet3);
	}
	

	form.action="/mystory/productAdd";
	form.method="post";
	form.submit();
}
