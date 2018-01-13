<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
<body >
<!--top-->
<!--头部-->
<div class="top_c">
	<a href="../users/exchange?code=${code}" class="iconfont icon-jiantou-copy-copy"></a>
	<p class="titi">
		兑换详情
	</p>
	</div>
<!--列表-->
<div class="ding_d" style="margin-top: 30px;">
	<!--新闻列表 star-->
			<div class="zy_newss" style="background-color: #FFFFFF;">
				<ul>
				<li>
					<a href="#"> <img src="../static/WeChat/images/gdsgf4.jpg">
						<dl>
							<dt>${list.productName}</dt>
							<font>兑换时间：<fmt:formatDate value="${list.createDate}" pattern="yyyy-MM-dd"/> </font>
						</dl>
					</a>
				</li>
			</ul>
		        <div style="color: #DDDDDD;">
		        	<h5 style="color:#000000;">收货人信息</h5>
		        	姓名：${Consignee.consigneeName}<br/>
		        	手机号码：${Consignee.phone}<br/>
		        	详细地址：${Consignee.consigneePath}
		        </div>
			</div>
			<div style="text-align: center">
				如需查询更多，请联系客服18655-25211
			</div>
</div>
</body>
</html>