<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>厚德毅行</title>
<link href="../static/WeChat/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<link href="../static/WeChat/css/home.css" rel="stylesheet" type="text/css"/>
<link href="../static/WeChat/css/style.css" rel="stylesheet" type="text/css"/>
<link href="../static/WeChat/css/base.css" rel="stylesheet" type="text/css"/>
<link href="http://at.alicdn.com/t/font_l6a0fwucxvzehfr.css" rel="stylesheet" type="text/css"/>
<style type="text/css">
.tb960x90 {display:none!important;display:none}
</style>
</head>
<body>
<!--top-->
<!--头部-->
<div class="pos">
	<div class="container">
		<div class="row titll">
			<a href="../ActivityManage/ShowAll?code=${code}">
			<div class="col-xs-2">
				最新活动
			</div>
			</a>
			<a href="../ActivityManage/ShowHistory?code=${code}" >
			<div class="col-xs-2" style="color:#246fc0;border-bottom:1px solid #246fc0;">
				历史活动
			</div>
			</a>
		</div>
	</div>
</div>
<!--列表-->
<div class="ding_d">
	<!--新闻列表 star-->
			<div class="zy_news">
				<ul>
					<c:forEach items="${list}" var="list">
						<li>
			                <a href="#">
			                    <img src="images/02厚德毅行活动_03.jpg">
			                    <dl>
			                        <dt>【每日更新】${list.activityTitle}</dt>
			                        <font>已报名：<c:if test="${list.activityNum==null}">0</c:if>${list.activityNum}</font>
			                        <span><img src="../static/WeChat/images/报名.png" onclick="window.location.href='../ActivityManage/enroll?id=${list.activityId}&code=${code}'" style="height: auto; width: auto\9; width:100%;" /></span>
			                    </dl>
			                </a>
			            </li>
					</c:forEach>
		        </ul>    
			</div>
		<!--新闻列表  end-->
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
				<i class="iconfont icon-zhangdan" style="color:#246fc0;"></i>
				<span class="nav_ti" style="color:#246fc0;">活动</span>
				</a>
			</div>
			<div class="col-xs-3">
				<a href="../users/Community?code=${code}" class="dao">
				<i class="iconfont icon-qianbao-"></i>
				<span class="nav_ti">社区</span>
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
</body>
</html>