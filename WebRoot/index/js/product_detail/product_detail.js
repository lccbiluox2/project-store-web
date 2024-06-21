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
