<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="favicon.ico">
<title>用户个人信息中心</title>

<style type="text/css">
/* table { */
/* 	margin: 0px auto 0px auto; */
/* 	width: 80%; */
/* 	border: 0; */
/* } */
.layui-form-item2 div {
	font-size: 16px;
}
</style>

<!-- css样式抽取 -->
<!-- 公共的css样式 -->
<%@include file="/commons/common-css.jsp"%>

<!-- 客户管理模块--用户管理页面 -->
</head>

<body style="overflow-x: hidden;">
	<section id="container"><section id="main-content">
	<section class="wrapper">

	<div class="row">
		<div class="col-lg-12">
			<ul class="breadcrumb">
				<li><a href="#"><i class="fa fa-home"></i>首页</a></li>
				<li>»</li>
				<li><a href="#">用户管理</a></li>
				<li>»</li>
				<li class="active">用户信息管理</li>
				<li>»</li>
				<li class="#">个人信息</li>
			</ul>
		</div>
	</div>
	<div align="center">
	
		<h1>用户个人中心</h1>
	
	</div>
	<br/>
	<br/>
	<br/>
	<!--table开始-->
	<div align="center">
		<!-- 		<form class="layui-form" action="" -->
		<!-- 			style="width: 85%; margin: 10 auto;"> -->
		<table>
			<tr>
				<div class="layui-form-item2" id="updateUserDiv">
					<div class="layui-inline">
						<label class="layui-form-label2"><a style="color: red;">*</a>用户id</label>
						<div class="layui-input-block">
							<input type="text" name="userId"
								value="${sessionScope.user.userId }" disabled="disabled"
								class="layui-input">
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label2"><a style="color: red;">*</a>用户名</label>
						<div class="layui-input-block">
							<input type="text" name="userName" disabled="disabled"
								value="${empty sessionScope.user.userName ? '未设置': sessionScope.user.userName }"
								class="layui-input">
						</div>
					</div>

				</div>
			</tr>
			<tr>
				<div class="layui-form-item2">
					<div class="layui-inline">
						<label class="layui-form-label2">后台管理账号</label>
						<div class="layui-input-block">
							<input type="text" name="loginName" disabled="disabled"
								value="${empty sessionScope.user.loginname ? '未设置': sessionScope.user.loginname}"
								class="layui-input">
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label2">后台管理密码</label>
						<div class="layui-input-block">
							<input type="password" name="password" disabled="disabled"
								value="${empty sessionScope.user.password ? '未设置': sessionScope.user.password}"
								class="layui-input">
						</div>
					</div>
				</div>
			</tr>
			<tr>
				<div class="layui-form-item2">

					<div class="layui-inline">
						<label class="layui-form-label2">微信id:</label>
						<div class="layui-input-block">
							<input type="text" name="openId" disabled="disabled"
								value="${empty sessionScope.user.openId ? '未设置': sessionScope.user.openId}"
								class="layui-input">
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label2">微信昵称</label>
						<div class="layui-input-block">
							<input type="text" name="wechatName" disabled="disabled"
								value="${empty sessionScope.user.wechatName ? '未设置': sessionScope.user.wechatName}"
								class="layui-input">
						</div>
					</div>
				</div>
			</tr>
			<tr>
				<div class="layui-form-item2">
					<div class="layui-inline">
						<label class="layui-form-label2">所在公司</label>
						<div class="layui-input-block">
							<input type="text" name="company" disabled="disabled"
								value="${empty sessionScope.user.company ? '未设置': sessionScope.user.company}"
								class="layui-input">
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label2">所在部门</label>
						<div class="layui-input-block">
							<input type="text" name="department" disabled="disabled"
								value="${empty sessionScope.user.department ? '未设置': sessionScope.user.department}"
								class="layui-input">
						</div>
					</div>
				</div>
			</tr>
			<tr>
				<div class="layui-form-item2">

					<div class="layui-inline">
						<label class="layui-form-label2"><a style="color: red;">*</a>联系方式</label>
						<div class="layui-input-block">
							<input type="text" name="phone" disabled="disabled"
								value="${empty sessionScope.user.phone ? '未设置': sessionScope.user.phone}"
								class="layui-input">
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label2"><a style="color: red;">*</a>邮箱地址</label>
						<div class="layui-input-block">
							<input type="text" name="email" disabled="disabled"
								value="${empty sessionScope.user.email ? '未设置': sessionScope.user.email}"
								class="layui-input">
						</div>
					</div>
				</div>
			</tr>
			<tr>
				<div class="layui-form-item2">
					<div class="layui-inline">
						<label class="layui-form-label2">所在区域</label>
						<div class="layui-input-block">
							<input type="text" name="area1" disabled="disabled"
								value="${empty sessionScope.user.area1 ? '未设置': sessionScope.user.area1}"
								class="layui-input">
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label2"><a style="color: red;">*</a>现任职务</label>
						<div class="layui-input-block">
							<input type="text" name="duty" disabled="disabled"
								value="${empty sessionScope.user.duty ? '未设置': sessionScope.user.duty}"
								class="layui-input">
						</div>
					</div>
				</div>
			</tr>
			<tr>
				<div class="layui-form-item2">
					<div class="layui-inline">
						<label class="layui-form-label2">所在省</label>
						<div class="layui-input-block">
							<input type="text" name="province" disabled="disabled"
								value="${empty sessionScope.user.province ? '未设置': sessionScope.user.province}"
								class="layui-input">
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label2"><a style="color: red;">*</a>所在市</label>
						<div class="layui-input-block">
							<input type="text" name="city" disabled="disabled"
								value="${empty sessionScope.user.city ? '未设置': sessionScope.user.city}"
								class="layui-input">
						</div>
					</div>
				</div>
			</tr>
			<tr>
				<div class="layui-form-item2">
					<div class="layui-inline">
						<label class="layui-form-label2">所在区</label>
						<div class="layui-input-block">
							<input type="text" name="area2" disabled="disabled"
								value="${empty sessionScope.user.area2 ? '未设置': sessionScope.user.area2}"
								class="layui-input">
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label2">备 注</label>
						<div class="layui-input-block">
							<input type="text" name="phoneremark" disabled="disabled"
								value="${empty sessionScope.user.password ? '未设置': sessionScope.user.password}"
								class="layui-input">
						</div>
					</div>
				</div>
			</tr>
			<tr>
				<div class="layui-form-item2">
					<div class="layui-inline">
						<label class="layui-form-label2">详细地址</label>
						<div class="layui-input-block">
							<input type="text" name="address" style="width: 530px"
								disabled="disabled"
								value="${empty sessionScope.user.address ? '未设置': sessionScope.user.address}"
								class="layui-input">
						</div>
					</div>
				</div>
			</tr>
			<br />
			<br />
			<br />
			<tr>
				<div class="layui-inline">
					<button type="button" data-toggle="modal"
						data-target="#updateMyUserModalBtn" class=" btn btn-primary">修改信息</button>
				</div>
				&nbsp;&nbsp;&nbsp;
				<div class="layui-inline">
					<button type="button" class="goUserList btn btn-primary"><a href="../index.html">返回首页</a></button>
				</div>

			</tr>

		</table>
		<!-- 		</form> -->
	</div>

	<!-- 修改信息模态框开始 -->
	<div class="modal fade" id="updateMyUserModalBtn" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
		align="center">
		<div class="modal-dialog modal-lg ">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">修改用户信息</h4>
				</div>
				<div class="modal-body">
					<!-- 模态框主题内容开始 -->
					<form class="layui-form" action="${ctp }/user/updateUser"
						id="updateModalForm" style="width: 90%; margin: 10 auto;">
						<table>
							<tr>
								<div class="layui-form-item2" id="updateUserDiv">
									<div class="layui-inline">
										<label class="layui-form-label2"><a
											style="color: red;">*</a>用户id:</label>
										<div class="layui-input-block">
											<input type="text" name="userId" disabled="disabled"
												value="${sessionScope.user.userId }" class="layui-input">
											<input type="hidden" name="userId"
												value="${sessionScope.user.userId }" />
										</div>
									</div>
									<div class="layui-inline">
										<label class="layui-form-label2"><a
											style="color: red;">*</a>用户名</label>
										<div class="layui-input-block">
											<input type="text" name="userName"
												value="${empty sessionScope.user.userName ? '未设置': sessionScope.user.userName }"
												class="layui-input">
										</div>
									</div>

								</div>
							</tr>
							<tr>
								<div class="layui-form-item2">
									<div class="layui-inline">
										<label class="layui-form-label2">后台管理账号</label>
										<div class="layui-input-block">
											<input type="text" name="loginname"
												value="${empty sessionScope.user.loginname ? '未设置': sessionScope.user.loginname}"
												class="layui-input">
										</div>
									</div>
									<div class="layui-inline">
										<label class="layui-form-label2">后台管理密码</label>
										<div class="layui-input-block">
											<input type="password" name="password"
												value="${empty sessionScope.user.password ? '未设置': sessionScope.user.password}"
												class="layui-input">
										</div>
									</div>
								</div>
							</tr>
							<tr>
								<div class="layui-form-item2">

									<div class="layui-inline">
										<label class="layui-form-label2">微信id:</label>
										<div class="layui-input-block">
											<input type="text" name="openId"
												value="${empty sessionScope.user.openId ? '未设置': sessionScope.user.openId}"
												class="layui-input">
										</div>
									</div>
									<div class="layui-inline">
										<label class="layui-form-label2">微信昵称</label>
										<div class="layui-input-block">
											<input type="text" name="wechatName"
												value="${empty sessionScope.user.wechatName ? '未设置': sessionScope.user.wechatName}"
												class="layui-input">
										</div>
									</div>
								</div>
							</tr>
							<tr>
								<div class="layui-form-item2">
									<div class="layui-inline">
										<label class="layui-form-label2">所在公司</label>
										<div class="layui-input-block">
											<input type="text" name="company"
												value="${empty sessionScope.user.company ? '未设置': sessionScope.user.company}"
												class="layui-input">
										</div>
									</div>
									<div class="layui-inline">
										<label class="layui-form-label2">所在部门</label>
										<div class="layui-input-block">
											<input type="text" name="department"
												value="${empty sessionScope.user.department ? '未设置': sessionScope.user.department}"
												class="layui-input">
										</div>
									</div>
								</div>
							</tr>
							<tr>
								<div class="layui-form-item2">

									<div class="layui-inline">
										<label class="layui-form-label2"><a
											style="color: red;">*</a>联系方式</label>
										<div class="layui-input-block">
											<input type="text" name="phone"
												value="${empty sessionScope.user.phone ? '未设置': sessionScope.user.phone}"
												class="layui-input">
										</div>
									</div>
									<div class="layui-inline">
										<label class="layui-form-label2"><a
											style="color: red;">*</a>邮箱地址</label>
										<div class="layui-input-block">
											<input type="text" name="email"
												value="${empty sessionScope.user.email ? '未设置': sessionScope.user.email}"
												class="layui-input">
										</div>
									</div>
								</div>
							</tr>
							<tr>
								<div class="layui-form-item2">
									<div class="layui-inline">
										<label class="layui-form-label2">所在区域</label>
										<div class="layui-input-block">
											<input type="text" name="area1"
												value="${empty sessionScope.user.area1 ? '未设置': sessionScope.user.area1}"
												class="layui-input">
										</div>
									</div>
									<div class="layui-inline">
										<label class="layui-form-label2"><a
											style="color: red;">*</a>现任职务</label>
										<div class="layui-input-block">
											<input type="text" name="duty"
												value="${empty sessionScope.user.duty ? '未设置': sessionScope.user.duty}"
												class="layui-input">
										</div>
									</div>
								</div>
							</tr>
							<tr>
								<div class="layui-form-item2">
									<div class="layui-inline">
										<label class="layui-form-label2">所在省</label>
										<div class="layui-input-block">
											<input type="text" name="province"
												value="${empty sessionScope.user.province ? '未设置': sessionScope.user.province}"
												class="layui-input">
										</div>
									</div>
									<div class="layui-inline">
										<label class="layui-form-label2"><a
											style="color: red;">*</a>所在市</label>
										<div class="layui-input-block">
											<input type="text" name="city"
												value="${empty sessionScope.user.city ? '未设置': sessionScope.user.city}"
												class="layui-input">
										</div>
									</div>
								</div>
							</tr>
							<tr>
								<div class="layui-form-item2">
									<div class="layui-inline">
										<label class="layui-form-label2">所在区</label>
										<div class="layui-input-block">
											<input type="text" name="area2"
												value="${empty sessionScope.user.area2 ? '未设置': sessionScope.user.area2}"
												class="layui-input">
										</div>
									</div>
									<div class="layui-inline">
										<label class="layui-form-label2">备 注</label>
										<div class="layui-input-block">
											<input type="text" name="phoneremark"
												value="${empty sessionScope.user.password ? '未设置': sessionScope.user.password}"
												class="layui-input">
										</div>
									</div>
								</div>
							</tr>
							<tr>
								<div class="layui-form-item2">
									<div class="layui-inline">
										<label class="layui-form-label2">详细地址</label>
										<div class="layui-input-block">
											<input type="text" name="address" style="width: 530px"
												value="${empty sessionScope.user.address ? '未设置': sessionScope.user.address}"
												class="layui-input">
										</div>
									</div>
								</div>
							</tr>
						</table>
					</form>

					<!-- 模态框主题内容结束 -->
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="updateMyUserBtn btn btn-primary">提交更改</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
	<!-- 修改信息模态框结束 --> 
	<!-- JS --> 
	<script type="text/javascript" src="${ctp }/js/jquery-2.1.1.min.js"></script>
		
	<!-- BASIC JQUERY 1.8.3 LIB. JS -->
	<script type="text/javascript" src="${ctp }/js/bootstrap.min.js"></script>
	
	<!-- BOOTSTRAP JS --> 
	<script type="text/javascript" src="${ctp }/js/jquery.dcjqaccordion.2.7.js"></script> 
	
	<!-- 左测点击拉下去 JS -->
	<script type="text/javascript" src="${ctp }/js/jquery.nicescroll.js"></script>
	
	<!-- 滚动条 JS --> 
	<script type="text/javascript" src="${ctp }/js/common-scripts.js"></script> 
	
	<!-- 公用的 JS --> 
	<!--<script type="text/javascript" src="${ctp }/js/jquery.min.js" ></script>-->

	<script type="text/javascript" src="${ctp }/js/placeholder-IE789.js"></script>
	<script type="text/javascript" src="${ctp }/js/layer/layer.js"></script>

	<!--全选js--> 
	<script type="text/javascript" src="${ctp }/js/tableCheckbox.js"></script> 
	
	<!--弹出层js引用--> 
	<script type="text/javascript" src="${ctp }/js/jquery.artDialog.source.js"></script>
	<script type="text/javascript" src="${ctp }/js/iframeTools.source.js"></script>
	<script type="text/javascript" src="${ctp }/js/msgbox.js"></script> 
	<script type="text/javascript">
	
		//要提交的param；临时存储用户id和角色id
		var param = {};

		//-------------------------修改---------------------------------
		$("body").on("click", "#updateMyUserModalBtn", function() {

			//显示模态框
			$("#updateMyUserModalBtn").modal({
				backdrop : 'static',
				show : true,
			});
		});

		$(".updateMyUserBtn").click(function() {
			//获取表单数据
			var data = $("#updateModalForm").serialize();

			layer.confirm("是否确认修改？", {
				btn : [ '确定修改', '算了吧' ]
			}, function() {
				$.ajax({
					type : "POST",
					url : "${ctp }/user/updateUser",
					data : data,
					success : function(msg) {
						$("#updateMyUserModalBtn").modal('hide');
						
					}
				});
				
				location.reload();
			}, function() {
				layer.msg("88.");
			});

		});
	</script>
</body>

</html>
