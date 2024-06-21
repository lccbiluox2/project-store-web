//show  mynewProducts
function showNewProduct(){
	$(".mynewProducts").css("display","block");
	$(".myhotProducts").css("display","none");
	$(".myspecialProducts").css("display","none");
	$(".myrandomProducts").css("display","none");
}
function showHotProduct(){
	$(".mynewProducts").css("display","none");
	$(".myhotProducts").css("display","block");
	$(".myspecialProducts").css("display","none");
	$(".myrandomProducts").css("display","block");
}
function showSpecialProduct(){
	$(".mynewProducts").css("display","none");
	$(".myhotProducts").css("display","none");
	$(".myspecialProducts").css("display","block");
	$(".myrandomProducts").css("display","none");
}
function showRandomProduct(){
	
	$(".mynewProducts").css("display","none");
	$(".myhotProducts").css("display","none");
	$(".myspecialProducts").css("display","none");
	$(".myrandomProducts").css("display","block");
}