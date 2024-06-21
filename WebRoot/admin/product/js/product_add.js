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
	
	
		$("#select_category_3").change(function(){
			var txt=$("#select_category_3").val();
			$("#myc_id").val(txt);
		}); 
	
	
	
	
	
	
});




function addProduct(){
	var form = document.forms[0];
	form.action="/mystory/productAdd";
	form.method="post";
	form.submit();
}
