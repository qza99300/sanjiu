<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="favicon.ico" />
<title>厚德毅行首页</title>

<!-- css样式抽取 -->
<!-- 公共的css样式 -->
<%@include file="/commons/common-css.jsp"%>

</head>

<body style="overflow: hidden;">

	<section id="container"> <!--<div class="header white-bg">-->

	<!--内容部分开始-->
	<section id="main-content" class="main-content"> <section
		class="wrapper" style="height: 100%;">

	<div class="index-header">
		<div class="header-left">
			<img src="${ctp}/images/welcome.png">
			<p>
				您好!<a style="color: #ffb500; margin: 2%;">${loginUser.userName}</a>现在是 <%= new Date() %>
			</p>
		</div>
		
	</div>

	<div >
		<img src="${ctp}/images/adv.jpg">
	</div>

	<!-- JS -->

	<script type="text/javascript" src="${ctp }/js/jquery-1.8.3.min.js"></script>
	<!-- BASIC JQUERY 1.8.3 LIB. JS -->

	<script type="text/javascript" src="${ctp }/js/bootstrap.min.js"></script>
	<!-- BOOTSTRAP JS -->

	<script type="text/javascript" src="${ctp }/js/jquery.dcjqaccordion.2.7.js"></script>
	<!-- 左测点击拉下去 JS -->

	<script type="text/javascript" src="${ctp }/js/jquery.nicescroll.js"></script>
	<!-- 滚动条 JS -->

	<script type="text/javascript" src="${ctp }/js/common-scripts.js"></script>
	<!-- 公用的 JS -->

	<!--全选js-->
	<script type="text/javascript" src="${ctp }/js/tableCheckbox.js"></script>



	<!--弹出层js引用-->
	<script type="text/javascript" src="${ctp }/js/jquery.artDialog.source.js"></script>
	<script type="text/javascript" src="${ctp }/js/iframeTools.source.js"></script>
	<script type="text/javascript" src="${ctp }/js/msgbox.js"></script>



</body>

</html>