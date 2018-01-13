<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en" style="height: 100%;">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="favicon.ico" />
<title>华润三九货在哪系统首页</title>

<!-- css样式抽取 -->
<!-- 公共的css样式 -->
<%@include file="/commons/common-css.jsp"%>

</head>

<body style="overflow: hidden; height: 100%;">

	<section id="container">

	<div class="header white-bg">

		<!--logo -->
		<a href="indexcommen.html" class="logo"> <img
			src="${ctp }/static/images/logo.png" />
		</a>

		<!--头部右侧搜索和搜索-->
		<div class="top-nav">
			<div class="top-right">
				<div class="my-dropout">
					<div class="pice">
						<img src="${ctp }/static/images/dropout.png" />
					</div>

					<div class="tuichu">
						<a href="${ctp }/logout.html">退出系统</a>
					</div>
				</div>

				<span style="float: right; width: 10px; margin-top: 13px;"> <img
					src="${ctp }/static/images/xian.png" />
				</span>

				<div class="my-help">
					<div class="pice">
						<img src="${ctp }/static/images/help.png" />
					</div>
					<div class="help">
						<a>帮助</a>
					</div>
				</div>

				<span style="float: right; width: 10px; margin-top: 13px;"> <img
					src="${ctp }/static/images/xian.png" />
				</span>

				<div class="my-dropout">
					<div class="pice">
						<img src="${ctp }/static/images/my.png" />
					</div>

					<div class="tuichu">
						<a style="margin-top: -10px;" class="J_menuItem" href="${ctp }/myUserInfo.html">${loginUser.userName }</a>
					</div>
				</div>
			</div>
		</div>
		<!--头部右侧搜索和搜索 结束-->
	</div>

	<!--/*左侧*/--> <aside>
	<div id="sidebar" class="nav-collapse">
		<ul class="sidebar-menu" id="nav-accordion">
			<li><a class="J_menuItem" href="index.html" class="active">
					<i class="fa fa-dashboard"> </i> <span> 我的首页 </span>
			</a></li>

			<!-- 菜单循环开始  -->
			<c:forEach items="${managerMenus }" var="parentMenu">
				<li class="sub-menu"><a href="javascript:;"> <i
						class="${parentMenu.permissionCode}"> </i> <span>
							${parentMenu.name} </span>
				</a> <c:if test="${!empty parentMenu.childs }">
						<ul class="sub">
							<c:forEach items="${parentMenu.childs }" var="childMenu">
								<li><a class="J_menuItem"
									href="${ctp }/${childMenu.permissionPath}">
										${childMenu.name} </a></li>
							</c:forEach>
						</ul>
					</c:if></li>
			</c:forEach>
			<!-- 菜单循环结束  -->
		</ul>
	</div>
	</aside> <!-- END SIDEBAR --> <!--内容部分开始-->
	<div class="row J_mainContent" id="content-main" style="height: 100%;">
		<iframe id="J_iframe" width="100%" height="100%" src="index.html"
			frameborder="0" data-id="index.jsp" seamless style="height: 100%;"></iframe>
	</div>

	</section>

<!-- 公共的js样式 -->
<%@include file="/commons/common-js.jsp"%>

	<script>
		$(function() {
			//菜单点击
			J_iframe
			$(".J_menuItem").on('click', function() {
				var url = $(this).attr('href');
				$("#J_iframe").attr('src', url);
				return false;
			});
		});
	</script>

</body>

</html>
