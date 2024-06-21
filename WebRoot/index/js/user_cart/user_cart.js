function delCartById(cart_id) {

	//alert("删除购物车商品" + cart_id);
	jQuery.ajax({
		url : '/mystory/delCartById',
		'type' : 'post',
		'data' : {
			'cart_id' : cart_id
		},
		success : function(data) {
			alert(data);
			var objs = jQuery.parseJSON(data);
			alert("objs.length" + objs.length);

			if (objs[0] == 1) {
				$("#trid" + cart_id).css("display", "none");
			}

		}
	});

}

// 全选选择

var checkflag = 0;
// 全选功能
function selectAll() {
	//alert("sssssss0=" + checkflag);
	if (checkflag == 0) {

		for (i = 0; i < $(".chooseItems").length; i++) {
			$(".chooseItems")[i].checked = true;
		}
		// 更改全选按钮选中标志
		checkflag = 1;
	} else {
		for (i = 0; i < $(".chooseItems").length; i++) {
			$(".chooseItems")[i].checked = false;
		}
		// 更改全选按钮选中标志
		checkflag = 0;

	}

}

function toOrder() {
	// alert("xxx"+$(".chooseItems").length);
	for (i = 0; i < $(".chooseItems").length; i++) {
		if ($(".chooseItems")[i].checked == true) {
			// alert("第"+i+"个表单被选中了");
			
			/*var form = document.forms[i];
			form.action = "/mystory/addOrder";
			form.method = "post";
			form.submit();*/
			 //上面注释的不能提交所有选中的表单  下面这句话可以
			 $('#form'+i).ajaxSubmit()
			   
		}
	}
	
	//alert("跳转到订单表");
	var u_name = $.session.get('u_name');
    var u_id = $.session.get('u_id');
   // alert("sessionwwwww"+u_name);
   // alert("sessionwwwww"+u_id);
	//$("#myu_name").val(u_name);
	//$("#myu_id").val(u_id);
    window.location = "/mystory/goAndShowUserOrder?u_id="+u_id+"&currentPage=" + 1;
	
}

