<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link href="../static/WeChat/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<link href="../static/WeChat/css/home.css" rel="stylesheet" type="text/css"/>
<link href="../static/WeChat/css/style.css" rel="stylesheet" type="text/css"/>
<link href="../static/WeChat/css/base.css" rel="stylesheet" type="text/css"/>
<link href="http://at.alicdn.com/t/font_l6a0fwucxvzehfr.css" rel="stylesheet" type="text/css"/>
<style type="text/css">
.tb960x90 {display:none!important;display:none}
</style>
</head>
<body style="background-color: #FFFFFF;">
<!--top-->
<!--头部-->
<div class="top_c">
	<a href="../users/personal?code=${code}" class="iconfont icon-jiantou-copy-copy"></a>
	<p class="titi">
		学习记录
	</p>
	</div>
<!--列表-->
<div class="ding_d" style="margin-top: 30px;">
	<!--新闻列表 star-->
			<div class="zy_news" style="background-color: #FFFFFF;">
				<ul>
					<c:forEach items="${list}" var="list">
			            <li>
			                <a href="#">
			                    <img src="../static/WeChat/images/02厚德毅行活动_03.jpg">
			                    <dl>
			                        <dt>【每日更新】${list.activityTitle}</dt>
			                        <font>已报名：<c:if test="${list.activityNum==null}">0</c:if> ${list.activityNum}</font>
			                        <span><img src="../static/WeChat/images/end.jpg"style="height: auto; width: auto\9; width:100%;" /></span>
			                    </dl>
			                </a>
			            </li>
		            </c:forEach>
		        </ul>    
			</div>
</div>
</body>
</html>