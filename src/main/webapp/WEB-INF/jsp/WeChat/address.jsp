<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<a href="../users/Goods?code=${code}" class="iconfont icon-jiantou-copy-copy"></a>
	<p class="titi">
		收货地址
	</p>
</div>
	<form action="../users/add?code=${code}" method="post">
	<div class="H-padding-vertical-bottom-10"></div>
		<div class="H-flexbox-horizontal H-border-vertical-bottom-after" style="margin-top: 35px">
	        <span onclick="window.location.href='../users/Receiving?productId=${product.productId}&code=${code}'" class="H-vertical-middle H-padding-horizontal-left-10 H-theme-background-color-white H-font-size-16" style="cursor:pointer">点击选择收货地址</span>
	    </div>
		<div class="H-flexbox-horizontal H-border-vertical-both-after" ><input type="hidden" value="${consignee.consigneeId}" name="consigneeId"><input type="hidden" value="${product.productId}" name="productId"><input type="hidden" value="${product.productName}" name="productName"><input type="hidden" value="${product.productIntegral}" name="productIntegral"> 
	        <span class="H-vertical-middle H-padding-horizontal-left-10 H-theme-background-color-white H-font-size-16">收货人：</span><input type="text" value="${consignee.consigneeName}" name="consigneeName" class="H-textbox H-vertical-align-middle H-vertical-middle H-font-size-16 H-flex-item H-box-sizing-border-box H-border-none H-outline-none H-padding-12" />
	    </div>
	    <div class="H-flexbox-horizontal H-border-vertical-bottom-after">
	        <span class="H-vertical-middle H-padding-horizontal-left-10 H-theme-background-color-white H-font-size-16">联系电话：</span><input type="text" value="${consignee.phone}" name="Phone" class="H-textbox H-vertical-align-middle H-vertical-middle H-font-size-16 H-flex-item H-box-sizing-border-box H-border-none H-outline-none H-padding-12"  />
	    </div>
	    <div class="H-flexbox-horizontal H-border-vertical-bottom-after">
	        <span class="H-vertical-middle H-padding-horizontal-left-10 H-theme-background-color-white H-font-size-16">所在地区：</span><input type="text" value="${consignee.area}" name="area" readonly id="location" name="location" class="H-textbox H-vertical-align-middle H-vertical-middle H-font-size-16 H-flex-item H-box-sizing-border-box H-border-none H-outline-none H-padding-12"  />
	    </div>
	    <div class="H-flexbox-horizontal H-border-vertical-bottom-after">
	        <span class="H-vertical-middle H-padding-horizontal-left-10 H-theme-background-color-white H-font-size-16">详细地址：</span><input type="text" readonly  unselectable="on" class="H-textbox H-vertical-align-middle H-vertical-middle H-font-size-16 H-flex-item H-box-sizing-border-box H-border-none H-outline-none H-padding-12" />
	    </div>
	    <div class="H-flexbox-horizontal H-margin-vertical-bottom-10 H-border-vertical-both-after">
	        <textarea name="consigneePath" class="H-textbox H-vertical-align-middle H-vertical-middle H-font-size-16 H-flex-item H-box-sizing-border-box H-border-none H-outline-none H-padding-12" placeholder="详细地址">${consignee.consigneePath}</textarea>
	    </div>
	        <div class="H-padding-vertical-bottom-10"></div>
	    <div class="H-flexbox-horizontal H-border-vertical-bottom-after">
	        <button type="submit" class="H-button H-width-100-percent  H-font-size-15 H-outline-none H-padding-vertical-both-12 H-padding-horizontal-both-20 H-theme-background-color1 H-theme-font-color-white H-theme-border-color1 H-theme-border-color1-click H-theme-background-color1-click H-theme-font-color1-click H-border-radius-3">确认</button>
	    </div>
	</form>
	
    
   	<script type="text/javascript" src="../static/WeChat/js/jquery.min.js" ></script>
   	<script src="https://cdn.bootcss.com/framework7/1.6.5/js/framework7.min.js"></script>
    <script src="../static/WeChat/js/regionsObject2.js"></script>
    <script src="../static/WeChat/js/cityPicker.js"></script>
    <script type="text/javascript" src="../static/WeChat/js/zepto.min.js"></script>
	<script type="text/javascript" src="../static/WeChat/js/mdialog.js"></script>
</body>
</html>