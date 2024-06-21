<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>创业</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	
	<link rel="stylesheet" type="text/css" href="index/css/index.css">
	
  </head>
  
 
<body class="body">
<div id="body2">
<div class="main">
	<header>
    	<div class="top">
        	<div class="top-left">
            	<ul>
                	<li>Hi,</li>
                    <li>110</li> &nbsp;&nbsp;&nbsp;&nbsp;        
                    <li><a href="${pageContext.request.contextPath }/toJspPage?whatPage=/index/user_register">注册</a></li>&nbsp;&nbsp;
                    
                    <li><a href="${pageContext.request.contextPath }/toJspPage?whatPage=/index/user_login">登录</a></li>
                </ul>
            <div>
            <div class="top-right">
            	<ul>
                	<li>
                    	<a href="">会员中心</a>
                    	<ul>
                        	<li><a href="">待付款</a></li>
                            <li><a href="">待发货</a></li>
                        </ul>
                    </li>
                    <li><a href="">购物车</a></li>
                    <li><a href="">收藏夹</a></li>
                    <li><a href="">消息</a></li>
                    <li><a href="">帮助中心</a></li>
                </ul>
            <div>
        </div>
        <div class="top2">
    		<div class="logo"><img src=""></div>
            <div class="chaxun"><form><input type="text" class="username"><input type="submit" value="搜商品" class="sousuo"></form><p>热门搜索：插线板订书机档案盒计算器复印纸笔记本</p></div>
            <div class="zhanghu"><span class="yonghu"></span><span class="jiesuan"></span></div>
    	</div>
        <menu>
        	<ul>
                <li><a href="">全部商品分类</a></li>
            	<li><a href="">首页</a></li>
                <li><a href="">限时抢购</a></li>
                <li><a href="">积分商品</a></li>
                <li><a href="">清单及价格</a></li>
                <li><a href="">联系我们</a></li>
            </ul>
        </menu>
        <div class="top3">
        	<div="top3-left">
            	<ul>
               	  <li><a href="">书写工具
                    	<ul>
                        	<li><a href="">钢笔</a><li>
                            <li><a href="">钢笔</a><li>
                            <li><a href="">钢笔</a><li>
                            <li><a href="">钢笔</a><li>
                        </ul>
                    </li>
                    <li><a href="">办公用纸
                    	<ul>
                        	<li><a href="">钢笔</a><li>
                            <li><a href="">钢笔</a><li>
                            <li><a href="">钢笔</a><li>
                            <li><a href="">钢笔</a><li>
                        </ul>
                    </li>
                    <li><a href="">桌面用品
                    	<ul>
                        	<li><a href="">钢笔</a><li>
                            <li><a href="">钢笔</a><li>
                            <li><a href="">钢笔</a><li>
                            <li><a href="">钢笔</a><li>
                        </ul>
                    </li>
                    <li><a href="">文管用品
                    	<ul>
                        	<li><a href="">钢笔</a><li>
                            <li><a href="">钢笔</a><li>
                            <li><a href="">钢笔</a><li>
                            <li><a href="">钢笔</a><li>
                        </ul>
                    </li>
                    <li><a href="">本薄便签
                    	<ul>
                        	<li><a href="">钢笔</a><li>
                            <li><a href="">钢笔</a><li>
                            <li><a href="">钢笔</a><li>
                            <li><a href="">钢笔</a><li>
                        </ul>
                    </li>
                    <li><a href="">财务/行政用品
                    	<ul>
                        	<li><a href="">钢笔</a><li>
                            <li><a href="">钢笔</a><li>
                            <li><a href="">钢笔</a><li>
                            <li><a href="">钢笔</a><li>
                        </ul>
                    </li>
                    <li><a href="">展示用品
                    	<ul>
                        	<li><a href="">钢笔</a><li>
                            <li><a href="">钢笔</a><li>
                            <li><a href="">钢笔</a><li>
                            <li><a href="">钢笔</a><li>
                        </ul>
                    </li>
                    <li><a href="">电脑周边
                    	<ul>
                        	<li><a href="">钢笔</a><li>
                            <li><a href="">钢笔</a><li>
                            <li><a href="">钢笔</a><li>
                            <li><a href="">钢笔</a><li>
                        </ul>
                    </li>
                    <li><a href="">生活用品
                    	<ul>
                        	<li><a href="">钢笔</a><li>
                            <li><a href="">钢笔</a><li>
                            <li><a href="">钢笔</a><li>
                            <li><a href="">钢笔</a><li>
                        </ul>
                    </li>
                    <li><a href="">办公设备
                    	<ul>
                        	<li><a href="">钢笔</a><li>
                            <li><a href="">钢笔</a><li>
                            <li><a href="">钢笔</a><li>
                            <li><a href="">钢笔</a><li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div="top3-center">
            	<div class="tupianlunfan"></div>
                <div class="shipintu"></div>
            </div>
            <div="top3-right">
            	<div class="zhongxin">
                	<span>你好：110,<a href="">进入会员中心</a>
                </div>
                <div class="gonggao">
                	<h2>公告</h2>
                    <ul>
                    	<li><a href="">春节放假通知</a></li>
                        <li><a href="">春节放假通知</a></li>
                        <li><a href="">春节放假通知</a></li>
                        <li><a href="">春节放假通知</a></li>
                        <li><a href="">春节放假通知</a></li>
                    </ul>
                </div>
                <div class="dianhua"><img src=""><div>
            </div>
        </div>
	</header>
    <div class="content">
    	<div class="content-top">
        	<div class="content-top-left">
            	<div class="content-top-left-up">
                	<ul>
                    	<li>新品上架</li>
                        <li>热卖商品</li>
                        <li>特价专区</li>
                        <li>精品推荐</li>
                        <li>猜你喜欢</li>
                    </ul>
                </div>
                <div class="content-top-left-down">
                	<ul>
                    	<li>
                        	<img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p>
                        </li>
                        <li>
                        	<img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p>
                        </li>
                        <li>
                        	<img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p>
                        </li>
                        <li>
                        	<img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p>
                        </li>
                        <li>
                        	<img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p>
                        </li>
                    <ul>
                <div>
            </div>
            <div class="content-top-right">
            	<h2>首发商品</h2>
                <p><img src=""><a href="">得力0230 省力型订书机 10</a></p>
                <p><a href="">汰渍 净白去渍洗衣粉 508克</a><img src=""></p>
            </div>
        </div>
    	<div class="F">
        	<div class="F-up">
            	<span>办公设备<span>
                <ul>
                	<li>打印机<li>
                    <li>打印机<li>
                    <li>打印机<li>
                    <li>打印机<li>
                    <li>打印机<li>
                <span><a href="">更多品牌&gt;&gt;</a><span>  
                </ul>
            </div>
            <div class="F-down">
            	<div class=F-down-left>
                	<table>
                    	<tr>
                        	<td>点钞机</td>
                            <td>点钞机</td>
                        </tr>
                        <tr>
                            <td>点钞机</td>
                            <td>点钞机</td>
                        </tr>
                        <tr>
                            <td>点钞机</td>
                            <td>点钞机</td>
                        </tr>
                    </table>
                    <img src="">
                </div>
                <div class=F-down-center>
                	<table>
                    	<tr>
                        	<td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p>机</td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                        </tr>
                        <tr>
                        	<td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p>机</td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                        </tr>
                    </table>
                </div>
                <div class=F-down-right>
                	<table>
                    	<tr>
                        	<td><img src=""></td>
                            <td><img src=""></td>
                        </tr>
                        <tr>
                            <td><img src=""></td>
                            <td><img src="">机</td>
                        </tr>
                        <tr>
                            <td><img src=""></td>
                            <td><img src=""></td>
                        </tr>
                    </table>
                    <img src="">
                </div>
            </div>
        </div>
        <div class="F">
        	<div class="F-up">
            	<span>办公设备<span>
                <ul>
                	<li>打印机<li>
                    <li>打印机<li>
                    <li>打印机<li>
                    <li>打印机<li>
                    <li>打印机<li>
                <span><a href="">更多品牌&gt;&gt;</a><span>  
                </ul>
            </div>
            <div class="F-down">
            	<div class=F-down-left>
                	<table>
                    	<tr>
                        	<td>点钞机</td>
                            <td>点钞机</td>
                        </tr>
                        <tr>
                            <td>点钞机</td>
                            <td>点钞机</td>
                        </tr>
                        <tr>
                            <td>点钞机</td>
                            <td>点钞机</td>
                        </tr>
                    </table>
                    <img src="">
                </div>
                <div class=F-down-center>
                	<table>
                    	<tr>
                        	<td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                        </tr>
                        <tr>
                        	<td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                        </tr>
                    </table>
                </div>
                <div class=F-down-right>
                	<table>
                    	<tr>
                        	<td><img src=""></td>
                            <td><img src=""></td>
                        </tr>
                        <tr>
                            <td><img src=""></td>
                            <td><img src=""></td>
                        </tr>
                        <tr>
                            <td><img src=""></td>
                            <td><img src=""></td>
                        </tr>
                    </table>
                    <img src="">
                </div>
            </div>
        </div>
        <div class="F">
        	<div class="F-up">
            	<span>复印纸<span>
                <ul>
                	<li>打印机<li>
                    <li>打印机<li>
                    <li>打印机<li>
                    <li>打印机<li>
                    <li>打印机<li>
                <span><a href="">更多品牌&gt;&gt;</a><span>  
                </ul>
            </div>
            <div class="F-down">
            	<div class=F1-down-left>
                	<table>
                    	<tr>
                        	<td>点钞机</td>
                            <td>点钞机</td>
                        </tr>
                        <tr>
                            <td>点钞机</td>
                            <td>点钞机</td>
                        </tr>
                        <tr>
                            <td>点钞机</td>
                            <td>点钞机</td>
                        </tr>
                    </table>
                    <img src="">
                </div>
                <div class=F-down-center>
                	<table>
                    	<tr>
                        	<td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                        </tr>
                        <tr>
                        	<td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                        </tr>
                    </table>
                </div>
                <div class=F-down-right>
                	<table>
                    	<tr>
                        	<td><img src=""></td>
                            <td><img src=""></td>
                        </tr>
                        <tr>
                            <td><img src=""></td>
                            <td><img src=""></td>
                        </tr>
                        <tr>
                            <td><img src=""></td>
                            <td><img src=""></td>
                        </tr>
                    </table>
                    <img src="">
                </div>
            </div>
        </div>
        <div class="F">
        	<div class="F-up">
            	<span>书写工具<span>
                <ul>
                	<li>打印机<li>
                    <li>打印机<li>
                    <li>打印机<li>
                    <li>打印机<li>
                    <li>打印机<li>
                <span><a href="">更多品牌&gt;&gt;</a><span>  
                </ul>
            </div>
            <div class="F-down">
            	<div class=F-down-left>
                	<table>
                    	<tr>
                        	<td>点钞机</td>
                            <td>点钞机</td>
                        </tr>
                        <tr>
                            <td>点钞机</td>
                            <td>点钞机</td>
                        </tr>
                        <tr>
                            <td>点钞机</td>
                            <td>点钞机</td>
                        </tr>
                    </table>
                    <img src="">
                </div>
                <div class=F-down-center>
                	<table>
                    	<tr>
                        	<td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                        </tr>
                        <tr>
                        	<td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                        </tr>
                    </table>
                </div>
                <div class=F-down-right>
                	<table>
                    	<tr>
                        	<td><img src=""></td>
                            <td><img src=""></td>
                        </tr>
                        <tr>
                            <td><img src=""></td>
                            <td><img src=""></td>
                        </tr>
                        <tr>
                            <td><img src=""></td>
                            <td><img src=""></td>
                        </tr>
                    </table>
                    <img src="">
                </div>
            </div>
        </div>
        <div class="F">
        	<div class="F-up">
            	<span>桌面用品<span>
                <ul>
                	<li>打印机<li>
                    <li>打印机<li>
                    <li>打印机<li>
                    <li>打印机<li>
                    <li>打印机<li>
                <span><a href="">更多品牌&gt;&gt;</a><span>  
                </ul>
            </div>
            <div class="F-down">
            	<div class=F-down-left>
                	<table>
                    	<tr>
                        	<td>点钞机</td>
                            <td>点钞机</td>
                        </tr>
                        <tr>
                            <td>点钞机</td>
                            <td>点钞机</td>
                        </tr>
                        <tr>
                            <td>点钞机</td>
                            <td>点钞机</td>
                        </tr>
                    </table>
                    <img src="">
                </div>
                <div class=F-down-center>
                	<table>
                    	<tr>
                        	<td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                        </tr>
                        <tr>
                        	<td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                        </tr>
                    </table>
                </div>
                <div class=F-down-right>
                	<table>
                    	<tr>
                        	<td><img src=""></td>
                            <td><img src=""></td>
                        </tr>
                        <tr>
                            <td><img src=""></td>
                            <td><img src=""></td>
                        </tr>
                        <tr>
                            <td><img src=""></td>
                            <td><img src=""></td>
                        </tr>
                    </table>
                    <img src="">
                </div>
            </div>
        </div>
        <div class="F">
        	<div class="F-up">
            	<span>文管用品<span>
                <ul>
                	<li>打印机<li>
                    <li>打印机<li>
                    <li>打印机<li>
                    <li>打印机<li>
                    <li>打印机<li>
                <span><a href="">更多品牌&gt;&gt;</a><span>  
                </ul>
            </div>
            <div class="F-down">
            	<div class=F1-down-left>
                	<table>
                    	<tr>
                        	<td>点钞机</td>
                            <td>点钞机</td>
                        </tr>
                        <tr>
                            <td>点钞机</td>
                            <td>点钞机</td>
                        </tr>
                        <tr>
                            <td>点钞机</td>
                            <td>点钞机</td>
                        </tr>
                    </table>
                    <img src="">
                </div>
                <div class=F-down-center>
                	<table>
                    	<tr>
                        	<td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                        </tr>
                        <tr>
                        	<td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p>齐心 C-837H 计算器 中台 超省钱</p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                        </tr>
                    </table>
                </div>
                <div class=F-down-right>
                	<table>
                    	<tr>
                        	<td><img src=""></td>
                            <td><img src=""></td>
                        </tr>
                        <tr>
                            <td><img src=""></td>
                            <td><img src=""></td>
                        </tr>
                        <tr>
                            <td><img src=""></td>
                            <td><img src=""></td>
                        </tr>
                    </table>
                    <img src="">
                </div>
            </div>
        </div>
        <div class="F">
        	<div class="F-up">
            	<span>本薄便签<span>
                <ul>
                	<li>打印机<li>
                    <li>打印机<li>
                    <li>打印机<li>
                    <li>打印机<li>
                    <li>打印机<li>
                <span><a href="">更多品牌&gt;&gt;</a><span>  
                </ul>
            </div>
            <div class="F-down">
            	<div class=F-down-left>
                	<table>
                    	<tr>
                        	<td>点钞机</td>
                            <td>点钞机</td>
                        </tr>
                        <tr>
                            <td>点钞机</td>
                            <td>点钞机</td>
                        </tr>
                        <tr>
                            <td>点钞机</td>
                            <td>点钞机</td>
                        </tr>
                    </table>
                    <img src="">
                </div>
                <div class=F-down-center>
                	<table>
                    	<tr>
                        	<td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                        </tr>
                        <tr>
                        	<td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                            <td><img src="">
                            <p><a href="">齐心 C-837H 计算器 中台 超省钱</a></p>
                            <p><span>￥16.00<span><del>￥22.00</del></p></td>
                        </tr>
                    </table>
                </div>
                <div class=F-down-right>
                	<table>
                    	<tr>
                        	<td><img src=""></td>
                            <td><img src=""></td>
                        </tr>
                        <tr>
                            <td><img src=""></td>
                            <td><img src=""></td>
                        </tr>
                        <tr>
                            <td><img src=""></td>
                            <td><img src=""></td>
                        </tr>
                    </table>
                    <img src="">
                </div>
            </div>
        </div>
    </div>
    <footer>
    	<div class="end1">
        	<table>
            	<tr>
                	<td>
                    	<h3>新手指南</h3>
                    	<ul>
                        	<li><a href="">关于发票</a></li>
                            <li><a href="">关于发票</a></li>
                            <li><a href="">关于发票</a></li>
                            <li><a href="">关于发票</a></li>
                        </ul>
                    </td>
                    <td>
                    	<h3>支付配送</h3>
                    	<ul>
                        	<li><a href="">关于发票</a></li>
                            <li><a href="">关于发票</a></li>
                            <li><a href="">关于发票</a></li>
                            <li><a href="">关于发票</a></li>
                        </ul>
                    </td>
                    <td>
                    	<h3>售后服务</h3>
                    	<ul>
                        	<li><a href="">关于发票</a></li>
                            <li><a href="">关于发票</a></li>
                            <li><a href="">关于发票</a></li>
                            <li><a href="">关于发票</a></li>
                        </ul>
                    </td>
                    <td>
                    	<h3>购物条款</h3>
                    	<ul>
                        	<li><a href="">关于发票</a></li>
                            <li><a href="">关于发票</a></li>
                            <li><a href="">关于发票</a></li>
                            <li><a href="">关于发票</a></li>
                        </ul>
                    </td>
        </div>
        <div class="end2">
        	<p>
            	<ul>
                	<li><a href="">关于我们</a></li>
                    <li><a href="">友情链接</a></li>
                    <li><a href="">联系我们</a></li>
                	<li><a href="">帮助我们</a></li>
                </ul>
            </p>
            <p>
            	<ul>
                	<li><a href="">友情链接：</li>
                    <li><a href="">任我行</a></li>
                    <li><a href="">友情链接</a></li>
                	<li><a href="">友情链接</a></li>
                    <li><a href="">更多&gt;&gt;</a></li>
                </ul>
            </p>
            <p>本商店顾客个人信息将不会被泄漏给其他任何机构和个人</p>
            <p>本商店logo和图片都已经申请保护，不经授权不得使用 </p>
            <p>有任何购物问题请联系我们在线客服 | 电话：028-85259253    18011567656  | 工作时间：周一至周六 8:30－18:00</p>
            <p>客服QQ号：2913648029    2913648025</p>
        </div>
    </footer>
</div>
</body>
</body>
</html>
