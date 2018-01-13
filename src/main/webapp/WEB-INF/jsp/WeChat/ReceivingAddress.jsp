<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>

<link href="../static/WeChat/css/Hui.css" rel="stylesheet" type="text/css" />
<link href="../static/WeChat/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<link href="../static/WeChat/css/home.css" rel="stylesheet" type="text/css"/>
<link href="http://at.alicdn.com/t/font_6688xdquixljif6r.css" rel="stylesheet" type="text/css"/>
<link href="https://cdn.bootcss.com/framework7/1.6.5/css/framework7.ios.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/framework7/1.6.5/css/framework7.ios.colors.min.css" rel="stylesheet">
    <link href="../static/WeChat/css/style2.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../static/WeChat/css/mdialog.css">
</head>
<body style="background-color: #FFFFFF;">
<!--top-->
<!--头部-->
<div class="top_c">
	<a href="#" onclick="window.location.href='../users/address?code=${code}&ProductId=${productId}'" class="iconfont icon-jiantou-copy-copy"></a>
	<p class="titi">
		选择收货地址
	</p>
</div>
	<form action="" method="post">
	<div class="H-padding-vertical-bottom-10" style="margin-top: 35px"></div>
		<c:forEach items="${list}" var="list"> 
			<div class="H-flexbox-horizontal H-border-vertical-bottom-after" onclick="window.location.href='../users/address?consigneeId=${list.consigneeId}&ProductId=${productId}&code=${code}'" >
	       	 <span class="H-vertical-middle H-padding-horizontal-left-10 H-theme-background-color-white H-font-size-16" style="cursor:pointer">姓名：${list.consigneeName} 电话：${list.phone} 所在地区：${list.area} 详细地址：${list.consigneePath}</span>
	    	</div>
	   		<div class="H-padding-vertical-bottom-10"></div>
		</c:forEach>
		
		
	</form>
	
    
   	<script type="text/javascript" src="../static/WeChat/js/jquery.min.js" ></script>
   	<script src="https://cdn.bootcss.com/framework7/1.6.5/js/framework7.min.js"></script>
    <script src="../static/WeChat/js/regionsObject2.js"></script>
    <script src="../static/WeChat/js/cityPicker.js"></script>
    <script type="text/javascript" src="../static/WeChat/js/zepto.min.js"></script>
	<script type="text/javascript" src="../static/WeChat/js/mdialog.js"></script>
</body>
</html>