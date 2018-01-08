<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="favicon.ico">
<title>修改密码页面</title>
<!-- css样式抽取 -->
<!-- 公共的css样式 -->
<%@include file="/commons/common-css.jsp"%>

<!--系统管理模块--密码修改页面  -->

</head>

<body>


	<section id="container"> <!--内容部分开始--> <section
		id="main-content"> <section class="wrapper">

	<div class="row">
		<div class="col-lg-12">
			<ul class="breadcrumb">
				<li><a href="#"><i class="fa fa-home"></i>首页</a></li>
				<li>»</li>
				<li><a href="#">系统管理</a></li>
				<li>»</li>
				<li class="active">修改密码</li>
			</ul>
		</div>
	</div>
		
			<fieldset class="layui-elem-field" style="width: 100%; float: left;">
				<legend style="border-bottom: 1px solid #fff; width: auto;">修改密码</legend>
				<div class="layui-field-box">
					<form id="updateUserForm" class="layui-form" action="">
						<input type="hidden" name="userId" value=" ${loginUser.userId }">
						<div class="layui-form-item"
							style="width: 50%; float: left; margin-left: 6%;">
							<label class="layui-form-label">登录账号</label>
							<div class="layui-input-block">
								<input type="text" name="loginname" disabled="disabled" value="${loginUser.loginname }" class="layui-input">
								<input type="hidden" name="loginname"  value="${loginUser.loginname }">
							</div>
						</div>
						<div class="layui-form-item"
							style="width: 50%; float: left; margin-left: 6%;">
							<label class="layui-form-label"><font color="#FF0000"> *</font>旧密码</label>
							<div class="layui-input-block">
								<input type="password" name="oldPassword" placeholder="请输入旧密码" class="layui-input">
							</div>
						</div>
		
						<div class="layui-form-item"
							style="width: 50%; float: left; margin-left: 6%;">
							<label class="layui-form-label"><font color="#FF0000"> *</font>新密码</label>
							<div class="layui-input-block">
								<input type="password" name="password" placeholder="请输入新密码" class="layui-input">
							</div>
						</div>
		
<!-- 						<div class="layui-form-item" -->
<!-- 							style="width: 50%; float: left; margin-left: 6%;"> -->
<!-- 							<label class="layui-form-label"><font color="#FF0000"> *</font>确认密码</label> -->
<!-- 							<div class="layui-input-block"> -->
<!-- 								<input type="password" name="re_password" placeholder="请再次输入密码" class="layui-input"> -->
<!-- 							</div> -->
<!-- 						</div> -->
		
						<button id="updatePwdBtn" type="button" class="layui-btn layui-btn-normal"
							style="float: left;  margin-top: 68px; margin-bottom: 20px; margin-left: -48.8%;">确认</button>
						<button class="layui-btn layui-btn-grayness"
							style="float: left; margin-top: 68px; margin-left: -40%;">取消</button>
		
					</form>
				</div>
			</fieldset>



			</section>
		</section>
	</section>
	
	<!-- 公共的js样式 --> <%@include file="/commons/common-js.jsp"%>

	<script type="text/javascript">
	
		$("#updatePwdBtn").click(function(){
			//获取表单数据
			var params = $("#updateUserForm").serialize();
			layer.confirm("是否确认修改？" ,{
				btn : [ '确定修改', '算了吧' ]
			},function(){
				
				$.post("${ctp }/user/updatePossword",params , function(data){
					layer.msg(data.msg);
				});
			},function(){
				layer.msg(data.msg);
			});
		});
		
		//------------------修改密码----------------------------
// 		function isValid(form)
// 		{
// 		if (((form.password.value.length<3)||(form.password.value.length>8))&&(form.password.value!=""))
// 		        {
// 		         alert("密码必须是3-8位的字母或数字！");
// 		return false;
// 		}
// 		else  if (form.password.value!=form.re_password.value)
// 		{
// 		alert("两次输入的密码不同！");
// 		return false;
// 		}
// 		else  if (form.password.value=="")
// 		{
// 		alert("用户密码不能为空！");
// 		return false;
// 		   }
// 		else return true;
// 		}
		
	</script>
</body>

</html>