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
	
	$("#moveDivToCartImg").attr("src",$("#showBigImg").attr("src"));
	$("#moveDivToCart").css("display","block");
	if(j == 0){
		$("#moveDivToCartImg").animate({
		'margin-left':'500px',
		'margin-top':'-400px',
		'width':'0',
		'height':'0',
		'-moz-opacity':'0',
		'opacity':' 0',
		'z-index':'100'
		});
		
		$("#moveDivToCartImg").animate({
		'margin-left':'0px',
		'margin-top':'0px',
		'width':'100',
		'height':'100',
		'-moz-opacity':'0',
		'opacity':' 0',
		'z-index':'100'
		});
		j = 1;
	}else if(j == 1){
		
		$("#moveDivToCartImg").animate({
		'-moz-opacity':'1',
		'opacity':' 1',
		'z-index':'100'
		});
		
		$("#moveDivToCartImg").animate({
		'margin-left':'500px',
		'margin-top':'-400px',
		'width':'0',
		'height':'0',
		'-moz-opacity':'0',
		'opacity':' 0',
		'z-index':'100'
		});
		
		$("#moveDivToCartImg").animate({
		'margin-left':'0px',
		'margin-top':'0px',
		'width':'100',
		'height':'100',
		'-moz-opacity':'0',
		'opacity':' 0',
		'z-index':'100'
		});
		j = 0;
	}
	
	
	

		var form = document.forms[0];
		alert("aa"+form);
		form.action="/mystory/addProductToCartBeanList";
		form.method="post";
		form.submit();


	
	
	
	
	
}