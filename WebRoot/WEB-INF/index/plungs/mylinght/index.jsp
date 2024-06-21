<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="index/plungs/mylinght/css/orbit.css">
<!-- 代码begin -->
<div style="width: 480px; height: 482px; margin: 0 0;">
	<div id="featured">
		<a class="orbit-item" href="http://www.lanrenzhijia.com/" data-caption="#htmlCaption1"><img src="index/plungs/mylinght/images/img1.jpg" alt="img1"></a>
		<a class="orbit-item" href="http://www.lanrenzhijia.com/" data-caption="#htmlCaption2"><img src="index/plungs/mylinght/images/img2.jpg" alt="img1"></a>
		<a class="orbit-item" href="http://www.lanrenzhijia.com/" data-caption="#htmlCaption3"><img src="index/plungs/mylinght/images/img3.jpg" alt="img1"></a>
		<a class="orbit-item" href="http://www.lanrenzhijia.com/" data-caption="#htmlCaption4"><img src="index/plungs/mylinght/images/img4.jpg" alt="img1"></a>
	</div>
	<span class="orbit-caption" id="htmlCaption1">3D《海底大冒险》将映 打响海底保卫战</span>
	<span class="orbit-caption" id="htmlCaption2">《私人》曝纪录片 章子怡：羡慕嫉妒恨</span>
	<span class="orbit-caption" id="htmlCaption3">赵又廷林更新戏里有情 跟高圆圆没分手</span>
	<span class="orbit-caption" id="htmlCaption4">柯震东回归《小时代3》 与郭采洁合体</span>
</div>
<!-- 代码end -->
<script src="index/plungs/mylinght/js/jquery-1.7.2.min.js"></script>
<script src="index/plungs/mylinght/js/jquery.orbit.min.js"></script>
<script>
$(window).load(function() {
	$('#featured').orbit({
		bullets : true,
		startClockOnMouseOut : true,
		captionAnimation : 'slideOpen'
	});
});
</script>