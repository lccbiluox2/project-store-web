/* 代码整理：懒人之家 www.lanrenzhijia.com */
(function($){

		$.fn.jqueryzoom = function(options){
			
		//设置图片放大后，默认显示的大小 
		var settings = {
				xzoom: 200,//zoomed width default width
				yzoom: 200,//zoomed div default width
				offset: 10,	//zoomed div default offset
				position: "right",//zoomed div default position,offset position is to the right of the image
				lens:1, //zooming lens over the image,by default is 1;
				preload: 1  //preload预加载模块的配置
			};
		
		
		
			//如果上面传入的有大小 ，那么就设置新的大小 设置图片放大后，默认显示的大小 
		//alert(settings.xzoom);
			if(options) {
				$.extend(settings, options);
			}
			//alert(settings.xzoom);
		    var noalt='';
		    //鼠标放到图片的地方显示放大图片每次调用的函数
		    $(this).hover(function(){
		    
		    var imageLeft = this.offsetLeft;//放大后的大图显示距离小图左边距离
		    var imageRight = this.offsetRight;//放大后的大图显示距离小图右边距离
		    var imageTop =  $(this).get(0).offsetTop;//放大后的大图显示距离顶部的距离
		    var imageWidth = $(this).children('img').get(0).offsetWidth;//跟随鼠标框框的大小
		    var imageHeight = $(this).children('img').get(0).offsetHeight;//跟随鼠标框框的大小

		    
            noalt= $(this).children("img").attr("alt");

		    var bigimage = $(this).children("img").attr("jqimg");

            $(this).children("img").attr("alt",'');

		    if($("div.zoomdiv").get().length == 0){

		    $(this).after("<div class='zoomdiv'  ><img class='bigimg'  src='"+bigimage+"'/></div>");


		    $(this).append("<div class='jqZoomPup'  >&nbsp;</div>");

		    }


		    if(settings.position == "right"){

            if(imageLeft + imageWidth + settings.offset + settings.xzoom > screen.width){

            	leftpos = imageLeft  - settings.offset - settings.xzoom;

            }else{

            	leftpos = imageLeft + imageWidth + settings.offset;
            }
		    }else{
		    	leftpos = imageLeft - settings.xzoom - settings.offset;
		    if(leftpos < 0){

		    	leftpos = imageLeft + imageWidth  + settings.offset;

		    }

		    }
		    
		   // alert(leftpos);
		    //imageTop 151 不改变  leftpos 843 一直变化
		    //修改  原来的 $("div.zoomdiv").css({ top: imageTop,left: leftpos }); 
		    //修改后图片放大位置会固定
		    $("div.zoomdiv").css({ top: imageTop,left: 843 });
		    
		    //设置图片放大显示框框的大小
		    $("div.zoomdiv").width(settings.xzoom);
		    $("div.zoomdiv").height(settings.yzoom);

            $("div.zoomdiv").show();

            if(!settings.lens){
              $(this).css('cursor','crosshair');
			}




				   $(document.body).mousemove(function(e){



                   mouse = new MouseEvent(e);

                   /*$("div.jqZoomPup").hide();*/


				    var bigwidth = $(".bigimg").get(0).offsetWidth;

				    var bigheight = $(".bigimg").get(0).offsetHeight;

				    var scaley ='x';

				    var scalex= 'y';


				    if(isNaN(scalex)|isNaN(scaley)){

				    var scalex = (bigwidth/imageWidth);

				    var scaley = (bigheight/imageHeight);




				    $("div.jqZoomPup").width((settings.xzoom)/scalex );

		    		$("div.jqZoomPup").height((settings.yzoom)/scaley);

                    if(settings.lens){
                    $("div.jqZoomPup").css('visibility','visible');
					}

				   }



                    xpos = mouse.x - $("div.jqZoomPup").width()/2 - imageLeft;

                    ypos = mouse.y - $("div.jqZoomPup").height()/2 - imageTop ;

                    if(settings.lens){

                    xpos = (mouse.x - $("div.jqZoomPup").width()/2 < imageLeft ) ? 0 : (mouse.x + $("div.jqZoomPup").width()/2 > imageWidth + imageLeft ) ?  (imageWidth -$("div.jqZoomPup").width() -2)  : xpos;

					ypos = (mouse.y - $("div.jqZoomPup").height()/2 < imageTop ) ? 0 : (mouse.y + $("div.jqZoomPup").height()/2  > imageHeight + imageTop ) ?  (imageHeight - $("div.jqZoomPup").height() -2 ) : ypos;

                    }


                    if(settings.lens){

                    $("div.jqZoomPup").css({ top: ypos,left: xpos });

                    }



					scrolly = ypos;

					$("div.zoomdiv").get(0).scrollTop = scrolly * scaley;

					scrollx = xpos;

					$("div.zoomdiv").get(0).scrollLeft = (scrollx) * scalex ;


				    });
		    },function(){

               $(this).children("img").attr("alt",noalt);
		       $(document.body).unbind("mousemove");
		       if(settings.lens){
		       $("div.jqZoomPup").remove();
		       }
		       $("div.zoomdiv").remove();

		    });

        count = 0;

		if(settings.preload){

		$('body').append("<div style='display:none;' class='jqPreload"+count+"'>sdsdssdsd</div>");

		$(this).each(function(){

        var imagetopreload= $(this).children("img").attr("jqimg");

        var content = jQuery('div.jqPreload'+count+'').html();

        jQuery('div.jqPreload'+count+'').html(content+'<img src=\"'+imagetopreload+'\">');

		});

		}

		}

})(jQuery);

function MouseEvent(e) {
this.x = e.pageX
this.y = e.pageY


}


/* 代码整理：懒人之家 www.lanrenzhijia.com */