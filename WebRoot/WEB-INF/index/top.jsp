<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<div id="topPage">
	<div id="topPage-top">
		<div id="topPage-top-left">
			<div class="topPage-top-left-name">欢迎你，碧落</div>
			<div class="topPage-top-left-name">
				<a href="${pageContext.request.contextPath }/toJspPage?whatPage=/index/user_register">注册</a>
			</div>
			<div class="topPage-top-left-name">退出</div>
		</div>
		<div id="topPage-top-right">
			<div class="topPage-top-right-name">帮助中心</div>
			<div class="topPage-top-right-name">会员中心</div>
			<div class="topPage-top-right-name">购物车</div>
		</div>
	</div>
	<div id="topPage-center">
		<div class="topPage-center-name" >
			<img alt="" src="index/img/index/logo.png" width="100%" height="100%"></img>
		</div>
		<div class="topPage-center-search">
			<div class="topPage-center-search-nothing"></div>
			<div class="topPage-center-search-real">
				<form action="/mystory/ssSelectProduct">
					<div class="topPage-center-search-real-searchtext">
						<input type="text" name="searchText" id="mysearchtext">
					</div>
					<div class="topPage-center-search-real-searchbutton">
						<input type="submit" id="mysearctbutton" value="">
					</div>
				</form>
			</div>
		</div>
		<div class="topPage-center-mycount">
			<div class="topPage-center-mycount-nothing"></div>
			<div class="topPage-center-mycount-real">
				<div class="topPage-center-mycount-real-mycart">
						<img alt="" src="index/img/index/mycart.png" width="100%" height="100%">
				</div>
				<div class="topPage-center-mycount-real-mycount">
						<img alt="" src="index/img/index/mycount.png"  width="100%" height="100%">
				</div>
				
			</div>
		</div>
		
	</div>
	<div id="topPage-buttom">
		<div class="topPage-buttom-menu1">全部商品分类</div>
		<div class="topPage-buttom-name">
			<a href="${pageContext.request.contextPath }/toJspPage?whatPage=index/index" >首页</a>
		</div>
		<div class="topPage-buttom-name">
			<a href="/mystory/getAllBrand" >全部品牌</a>
		</div>
		<div class="topPage-buttom-name">

		<a href="">全部商品</a>
		</div>
		<div class="topPage-buttom-name">
			<a href="${pageContext.request.contextPath }/toJspPage?whatPage=index/content_us" >联系我们</a>
		</div>
	</div>
</div>
