<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>厚德毅行</title>
<link href="../static/WeChat/css/bootstrap.css" rel="stylesheet" type="text/css"/>

<link href="http://at.alicdn.com/t/font_l6a0fwucxvzehfr.css" rel="stylesheet" type="text/css"/>
 <link rel="stylesheet" href="../static/WeChat/css/flickerplate.css" type="text/css">
 <link rel="stylesheet" href="../static/WeChat/css/yule_style.css" type="text/css">
<link href="../static/WeChat/css/home.css" rel="stylesheet" type="text/css"/>
 <link rel="stylesheet" href="../static/WeChat/css/flickerplate.css" type="text/css">

    
 <!-- Link Swiper's CSS -->
 <link rel="stylesheet" href="../static/WeChat/css/swiper.min.css">
 
 <script src="../static/WeChat/js/jquery.min.js"></script>
 <script src="../static/WeChat/js/bootstrap.min.js"></script>
 
 <script src="../static/WeChat/js/modernizr-custom-v2.7.1.min.js"></script>
 <script src="../static/WeChat/js/jquery-finger-v0.1.0.min.js"></script>
 <script src="../static/WeChat/js/flickerplate.min.js"></script>
 <script src="../static/WeChat/js/jquery.lazyload.js"></script>
<style type="text/css">
.tb960x90 {display:none!important;display:none}
html, body {
        position: relative;
    }
    body {
        background: #eee;
        font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
        font-size: 12px;
        color:#000;
        margin: 0;
        padding: 0;
    }
    .swiper-slide {
        text-align: center;
        font-size: 18px;
        background: #fff;

        /* Center slide text vertically */
        display: -webkit-box;
        display: -ms-flexbox;
        display: -webkit-flex;
        display: flex;
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        -webkit-justify-content: center;
        justify-content: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        -webkit-align-items: center;
        align-items: center;
    }
</style>
</head>
<body>
<!--头部-->
<div class="pos">
	<div class="container">
		<div class="row titll">
			<a href="../users/Community?code=${code}">
			<div class="col-xs-2">
				最新话题
			</div>
			</a>
			<a href="../users/hottest?code=${code}">
			<div class="col-xs-2" style="color:#246fc0;border-bottom:1px solid #246fc0;">
				最热话题
			</div>
			</a>
		</div>
	</div>
</div>
<!--列表-->
	<div class="main_dynamic">
                        <ul class="main">
                         	<c:forEach items="${list}" var="list">
                         		<li>
	                                <a href="#"><div class="head">
	                                    <div class="pic"><img src="../static/WeChat/images/yule/head.jpg"></div>
	                                    <div class="wrap">
	                                        <div class="name">${list.userName}</div>
	                                        <div class="time"><fmt:formatDate value="${list.createDate}" pattern="yyyy-MM-dd"/></div>
	                                    </div>
	                                	<div class="words">
	                                       ${list.topicMatter}
	                                    </div>
	                                </div></a>
	                                <div class="news">
	                                    <div class="image">
	                                        <img src="../static/WeChat/images/yule/b_pic.jpg">
	                                    </div>
	                                </div>
	                                <ul class="control">
	                                        <li><div class="wrap"><center><img src="../static/WeChat/images/yule/iconfont-pinglun.png"><span>评论</span></center></div></li>
	                                        <li onclick="Fabulous(${list.topicId},this)"><div class="wrap"><center><img src="../static/WeChat/images/yule/iconfont-dianzan.png"><span id="zz">赞<font id="Fabulous"><c:if test="${list.likeCount!=0||list.likeCount!=null}">(${list.likeCount})</c:if></font></span></center></div></li>
	                                </ul>
	                            </li>
                         	</c:forEach>
                           
                        </ul> 
                        <a href="../users/Release?code=${code}"><div class="wenzi"></div></a>
                        
        </div>
        
<div class="footer">
	<div class="container">
		<div class="row">
			<div class="col-xs-3">
				<a href="../users/homePage?codes=${code}" class="dao">
				<i class="iconfont icon-shouye-copy-copy-copy"></i>
				<span class="nav_ti">首页</span>
				</a>
			</div>
			<div class="col-xs-3">
				<a href="../ActivityManage/ShowAll?code=${code}" class="dao">
				<i class="iconfont icon-zhangdan" ></i>
				<span class="nav_ti" >活动</span>
				</a>
			</div>
			<div class="col-xs-3">
				<a href="../users/Community?code=${code}" class="dao">
				<i class="iconfont icon-qianbao-" style="color:#246fc0;"></i>
				<span class="nav_ti" style="color:#246fc0;">社区</span>
				</a>
			</div>
			<div class="col-xs-3">
				<a href="../users/personal?code=${code}" class="dao">
				<i class="iconfont icon-information" ></i>
				<span class="nav_ti" >我的</span>
				</a>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	//点赞
	function Fabulous(i,otr) {
		$.ajax({
            url: "../users/Fabulous",
            type: "post",
            datatype: "json",
            data: { "topicId": i},
            success: function (data) {
               if(data=="yes"){
            	   $(otr).html("<div class='wrap'><center><img src='../static/WeChat/images/yule/iconfont-dianzan.png'><span id='zz'>已点赞</span></center></div>");
               }
            }
        })
	}
</script>
</body>
</html>