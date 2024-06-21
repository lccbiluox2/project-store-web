function gotoCart(){
	//alert("跳转到购物车");
	var u_name = $.session.get('u_name');
    var u_id = $.session.get('u_id');
   // alert("sessionwwwww"+u_name);
   // alert("sessionwwwww"+u_id);
	//$("#myu_name").val(u_name);
	//$("#myu_id").val(u_id);
    if(u_id != null && u_id != "" && u_id != undefined){
    	window.location = "goAndShowUserCart?u_id="+u_id;
    }else{
    	alert("请先登录");
    }
    
}