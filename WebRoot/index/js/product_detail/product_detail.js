var i=1;
function add_count(){
	
	i++;
	$("#mycount").val(i);
}

function sub_count(){
	if(i>0)
	i--;
	$("#mycount").val(i);
}


var j=0;
function addProductToCart(){
	
	//判断用户是否登陆
	/*var user = $("#myu_id").val();
	if(user == null || user == "" || user == "none" ){*/
	var u_name1 = $.session.get('u_name');
    var u_id1 = $.session.get('u_id');
   // alert("session--"+u_name1);
    //alert("session--"+u_id1);
	if(u_id1 == null || u_id1 == "none" || u_id1 == ""){
		
	
		//alert("用户未登录，不可添加商品到购物车");
		
		$("#user_loginForm").css("display","block");
		$("#user_loginForm").animate({
			'left':'200px',
			'top':'500px',
			'z-index':'100'
			});
		
		//var form = document.forms[0];
		
		//form.action="/mystory/getUserIndex";
		//form.method="post";
		//form.submit();
		
	}else{
		movdiv();
	}
	
	
}


//判断用户是否登陆成功的标志
var loginFlag0 = 0;
var loginFlag1 = 0;
var loginFlag2 = 0;

//ajax 提交表单
function  userLogin(){
	
	 //获取用户名称
    var strTxtName = encodeURI($("#txtName").val());
    //获取输入密码
    var strTxtPass = encodeURI($("#txtPass").val());
   /* alert("aa"+strTxtName);
    alert("aa"+strTxtPass);*/
    
  
    
    jQuery.ajax({
		 url: '/mystory/getUserIndex',
		 'type': 'post',
		 'data': { 'txtName': strTxtName, 'txtPass': strTxtPass },
		 success: function(data) {
			//alert(data);
			var objs = jQuery.parseJSON(data);  
            
            for(var i=0;i<objs.length;i++){  
            	
            	if(i == 0){
            		if(objs[i] == "none"){
            			alert("用户名不对！");
            		}else{
            			loginFlag0 = 1;
            			$("#myu_name").val(objs[i]);
            			$.session.set('u_name', objs[i]);
            		}
            		
            	}
            	if(i == 1){
            		if(objs[i] == "none"){
            			alert("密码不对！");
            		}else{
            			loginFlag1 = 1;
            		}
            	}
            	
            	if(i == 2){
            	
            		if(objs[i] == "none"){
            			alert("未找到所输入的用户！");
            		}else{
            			loginFlag2 = 1;
            			
            			$("#myu_id").val(objs[i]);
            			$.session.set('u_id', objs[i])
            		}
            		
            	}
            }  
            
            
            //判断用户是否登陆成功的标志
            if(loginFlag0 == 1 && loginFlag1 == 1 && loginFlag2 == 1){
            	//alert("判断用户是否登陆成功的标志");
            	$("#user_loginForm").css("display","none");
            	/*var form = document.forms[1];
    			alert("aa"+form);
    			form.action="/mystory/addProductToMyCart";
    			form.method="post";
    			form.submit();
    			alert("判断用户是否登陆成功的标志");*/
            	
            	//addProductToCartSql();
            	
            }
            
		
		 	}
		 });
    
  
    
    //开始添加到购物车
    
    
}

   




function movdiv(){
	
	
	 //判断用户是否登陆成功的标志
    if(loginFlag0 == 1 && loginFlag1 == 1 && loginFlag2 == 1){
    	//alert("判断用户是否登陆成功的标志第二次点击");
    	$("#user_loginForm").css("display","none");
    }
    
    var u_name = $.session.get('u_name');
    var u_id = $.session.get('u_id');
   // alert("session"+u_name);
   // alert("session"+u_id);
	$("#myu_name").val(u_name);
	$("#myu_id").val(u_id);
	if(u_id != null || u_id != "none" || u_id != ""){
		addProductToCartSql();
	}
	
}




//ajax实现添加商品到购物车数据库
function addProductToCartSql(){
	var form = document.forms[1];
	
	form.action="/mystory/addProductToMyCart";
	form.method="post";
	form.submit();
	
	
	//alert("ajax实现添加商品到购物车数据库");
	
	/*//获取商品图片路径
	 var myp_img_path = encodeURI($("#myp_img_path").val());
	//获取商品ID
	 var myp_id = encodeURI($("#myp_id").val());
	//获取商品数量
	 var mycount = encodeURI($("#mycount").val());
	//获取品牌图片路径
	 var myb_img_path = encodeURI($("#myb_img_path").val());
	//获取用户ID
	 var myu_id = encodeURI($("#myu_id").val());
	 //获取用户名字
	 var myu_name = encodeURI($("#myu_name").val());
	//获取用户名字
	 var myp_number = encodeURI($("#myp_number").val());
	 
	// alert(myp_img_path);
	// alert(myp_id);
	// alert(mycount);
	// alert(myb_img_path);
	// alert(myu_id);
	// alert(myu_name);
	
	
	
	
	jQuery.ajax({
		 url: '/mystory/addProductToMyCart',
		 'type': 'post',
		 'data': { 
			 'myp_img_path': myp_img_path, 
			 'myp_id': myp_id ,
			 'mycount': mycount ,
			 'myb_img_path': myb_img_path ,
			 'myu_id': myu_id ,
			 'myu_name': myu_name ,
			 'myp_number': myp_number ,
			 'myproduct_p_vip_price':myproduct_p_vip_price
			 
		 },
		 success: function(data) {
			//alert(data);
			var objs = jQuery.parseJSON(data);
			//alert("ajax返回的数据"+data);
			 for(var i=0;i<objs.length;i++){  
	            
	            if(objs[i] == "1"){
	            	alert("添加商品到购物车成功");
	            }
	            if(objs[i] == "0"){
	            	alert("添加商品到购物车失败");
	            }
	            
			 }
           }  
	});*/
}