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




function updateProduct(){
	var mydefault = $("#myc_id").val();
	
	//得到一级菜单
	var seletone = $("#select_category_1").val();
	//得到2级菜单
	var selettwo = $("#select_category_2").val();
	//得到3级菜单
	var selettree = $("#select_category_3").val();
	
	//alert(seletone);
	//alert(selettwo);
	//alert(selettree);

	var aa = 0;
	var bb = 0;
	var cc = 0;
	
	

	if(seletone != 0){
			aa = 1;
	}
	
	
	if(selettwo != null ){
		if((selettwo != 0)){
			bb = 1;	
		}
	}
	
   if(selettree != null ){
		if((selettree != 0)){
			cc = 1;
			
		}
	}
	

	
	/*alert("aa="+aa);
	alert("bb="+bb);
	alert("cc="+cc);*/

	var form = document.forms[0];
	if((aa == 0) && (bb == 0) && (cc == 0)){
		//alert("如果一级类别都没选那么就按以前的类别");
		form.action="/mystory/productUpdate";
		form.method="post";
		form.submit();
	}else if((aa == 1) && (bb == 0) && (cc == 0)){
		alert("请选择2级类别");
	}else if((aa == 1) && (bb == 1) && (cc == 0)){
		//alert("添加二级类别");
		$("#myc_id").val(selettwo);
		form.action="/mystory/productUpdate";
		form.method="post";
		form.submit();
	}else if((aa == 1) && (bb == 1) && (cc == 1)){
		//alert("添加三级类别");
		$("#myc_id").val(selettree);
		form.action="/mystory/productUpdate";
		form.method="post";
		form.submit();
	}
	
	

	//form.action="/mystory/productUpdate";
	//form.method="post";
	//form.submit();
}
