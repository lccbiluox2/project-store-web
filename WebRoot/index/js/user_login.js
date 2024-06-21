

//ajax 提交表单
function  userLogin(){
	
	 //获取用户名称
    var strTxtName = encodeURI($("#txtName").val());
    //获取输入密码
    var strTxtPass = encodeURI($("#txtPass").val());
   alert("aa"+strTxtName);
    alert("aa"+strTxtPass);
    
  
    
    jQuery.ajax({
		 url: '/mystory/getUserIndex',
		 'type': 'post',
		 'data': { 'txtName': strTxtName, 'txtPass': strTxtPass },
		 success: function(data) {
			alert(data);
			var objs = jQuery.parseJSON(data);  
			alert("----"+objs.length);
            for(var i=0;i<=objs.length;i++){  
            	
            	if(i == 0){
            		if(objs[i] == "none"){
            			$.session.set('u_name', "none");
            		}else{
            			$.session.set('u_name', objs[i]);
            		}
            		
            	}
            	if(i == 1){
            		if(objs[i] == "none"){
            			alert("密码不对！");
            		}else{
            			
            		}
            	}
            	
            	if(i == 2){
            		if(objs[i] == "none"){
            			$.session.set('u_id', "none");
            		}else{
            			$.session.set('u_id', objs[i]);
            		}
            	}
            }  
            
		 	}
		 });
  
    
    var u_id = $.session.get('u_id');
    alert("请先登录2");
    if(u_id != "none"){
    	window.location = "indexList";
    }else{
    	alert("请先登录");
    }
    
}
