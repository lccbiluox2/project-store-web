$(document).ready(function() { 
	$("#preview .jqzoom img").attr("width","400px");
	$("#preview .jqzoom img").attr("height","350px");
});


//鼠标经过预览图片函数
function preview(img){
	
	//$(img).attr("bimg") 得到小列表中鼠标放到的是哪一张图片上  是这个图片的路径
	//这个是加载小列表中的图片 到大框框中
	$("#preview .jqzoom img").attr("src",$(img).attr("src"));
	//这里使用一个技巧 加载图片后，立即设置图片大小 这里是固定大小 可能会让图片变形
	$("#preview .jqzoom img").attr("width","400px");
	$("#preview .jqzoom img").attr("height","350px");
	//这个是加载要放大的是哪一张图片
	$("#preview .jqzoom img").attr("jqimg",$(img).attr("bimg"));
}
//图片放大镜效果
$(function(){
	
	
	
	//xzoom yzoom是放大后图片的尺寸
	$(".jqzoom").jqueryzoom({xzoom:380,yzoom:410});

	
	
});

//图片预览小图移动效果,页面加载时触发
$(function(){
	
	var tempLength = 0; //临时变量,当前移动的长度
	var viewNum = 5; //设置每次显示图片的个数量
	var moveNum = 2; //每次移动的数量
	var moveTime = 300; //移动速度,毫秒
	var scrollDiv = $(".spec-scroll .items ul"); //进行移动动画的容器
	var scrollItems = $(".spec-scroll .items ul li"); //移动容器里的集合
	var moveLength = scrollItems.eq(0).width() * moveNum; //计算每次移动的长度
	var countLength = (scrollItems.length - viewNum) * scrollItems.eq(0).width(); //计算总长度,总个数*单个长度
	  
	//下一张
	$(".spec-scroll .next").bind("click",function(){
		if(tempLength < countLength){
			if((countLength - tempLength) > moveLength){
				scrollDiv.animate({left:"-=" + moveLength + "px"}, moveTime);
				tempLength += moveLength;
			}else{
				scrollDiv.animate({left:"-=" + (countLength - tempLength) + "px"}, moveTime);
				tempLength += (countLength - tempLength);
			}
		}
	});
	//上一张
	$(".spec-scroll .prev").bind("click",function(){
		if(tempLength > 0){
			if(tempLength > moveLength){
				scrollDiv.animate({left: "+=" + moveLength + "px"}, moveTime);
				tempLength -= moveLength;
			}else{
				scrollDiv.animate({left: "+=" + tempLength + "px"}, moveTime);
				tempLength = 0;
			}
		}
	});
});
/* 代码整理：懒人之家 www.lanrenzhijia.com */