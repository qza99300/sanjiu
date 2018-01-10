<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv=X-UA-Compatible content="IE=edge">
<link rel="shortcut icon" href="favicon.ico" />
<title>华润三九药业股份有限公司厚德毅行</title>
<link rel="stylesheet" href="static/css/homepage.css" />
<link rel="stylesheet" href="static/css/bootstrap-3.3.7.min.css" />
</head>
<body>
	<div class=wrap id=wrap>

		<div class=wrapper>
			<div class=header>
				<div class="head clearfix">
					<div class=logo_box>
						<h1 class=hidden>厚德毅行后台系统</h1>
						<a href='javascript:;' class=logo_link><img
							src="images/logo.png" alt=xxx></a>
					</div>
					<div class=nav_box id=nav_box>
						<ul>
							<li><a href='javascript:;'
								style="border-bottom: 2px solid #fff;">登录</a></li>
						</ul>
					</div>
				</div>
			</div>

			<!--登录框开始-->
			<div class="login">
				<div class="message">厚德毅行后台登陆平台</div>

				<div id="darkbannerwrap"></div>

				<div>
					<!-- onsubmit="return dologin();" -->
					<form action="userlogin" method="post" id="loginForm">
						<span style="color: red">${msg }</span> <input name="action"
							value="login" type="hidden"> <input name="loginname"
							autofocus placeholder="登录账号" required="" type="text"
							style="width: 90%;" id="uName">
						<hr class="hr15">
				</div>
				<div>
					<!--模拟input密码输入框，解决ie9一下兼容性问题-->
					<input name="password" placeholder="密码" required="" type="password"
						style="width: 90%;" class="show_password">
					<!-- 						<input name="password" placeholder="密码" required="" type="password" -->
					<!-- 						style="width: 90%; display: none;" class="login_password" -->
					<!-- 						id="uPass"> -->
					<hr class="hr15">
				</div>
<!-- 				<input name="code" placeholder="验证码" required="" type="text" -->
<!-- 					style="width: 50%;"> <img src="static/images/code.jpg" -->
<!-- 					class="code" /> -->
<!-- 				<hr class="hr15"> -->
				<input value="登录" style="width: 100%; margin-top: 15px;"
					type="submit" onclick="dologin()">
				<!-- <hr class="hr20"> -->
				<!-- <a class="btn_download JS-btn-download" style="width: 100%; margin-top: 15px;" onclick="dologin()">立即登录</a> -->

				<!--<a onClick="alert('请联系管理员')">忘记密码</a> -->
				</form>

			</div>
			<div class="star_wp scale_box" id=star_wp>
				<span class=star_bg></span> <span class=star_box></span>
			</div>
			<canvas id=canvas></canvas>
			<!--<div class="btns_wp scale_box">
				<a class="btn_download JS-btn-download" href='javascript:;'>立即登录</a>
			</div>-->
			<div class=btn_control id=btn_control>
				<a href=javascript:; class=cur></a> <a href=javascript:;></a> <a
					href=javascript:;></a> <a href=javascript:;></a>
			</div>
			<div class=footer>
				<div class=foot>
					<p>Copyright©2015-2016 深圳市金天速科技有限公司 版权所有 粤ICP备15106728号
				</div>
			</div>
		</div>

	</div>

	<script type="text/javascript" src="${ctp }/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="${ctp }/js/placeholder-IE789.js"></script>

	<script type="text/javascript" src="${ctp }/js/vendors.js"></script>
	<script type="text/javascript" src="${ctp }/js/homepage.js"></script>

	<!--[if IE 6]>
		<script type="text/javascript" src="http://static.webgame.kanimg.com/com/DD_PNG_min.js"></script>
		<script type="text/javascript">
			var links=document.getElementsByTagName("a");
			for(var i=0,l=links.length;i<l;i++){
				links[i].setAttribute("hideFocus",true);
			}
		</script>
	<![endif]-->

	<script>
		function dologin() {
			//window.location.href = "main.html";
			//提交登陆表单；
// 			alert("${ctp}");
			console.log("${ctp}");
			$("form:first").attr({
				action : "${ctp}/userlogin",
				method : "post"
			}).submit();
		}
	</script>








</body>
</html>
