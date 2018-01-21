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
				<li><a href="#">系统管理</a></li>
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
						<label class="layui-form-label2">用户序号</label>
						<div class="layui-input-block">
							<input type="text" name="userId"
								value="${loginUser.userId }"  disabled="disabled"
								class="layui-input">
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label2">用户名</label>
						<div class="layui-input-block">
							<input type="text" name="userName" disabled="disabled" id="userNameKey"
<%-- 								value="${empty loginUser.userName ? '未设置': loginUser.userName }" --%>
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
							<input type="text" name="loginName" disabled="disabled" id="loginnameKey"
<%-- 								value="${empty loginUser.loginname ? '未设置': loginUser.loginname}" --%>
								class="layui-input">
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label2">后台管理密码</label>
						<div class="layui-input-block">
							<input type="password" name="password" disabled="disabled" id="passwordKey"
<%-- 								value="${empty loginUser.password ? '未设置': loginUser.password}" --%>
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
							<input type="text" name="openId" disabled="disabled" id="openIdKey"
<%-- 								value="${empty loginUser.openId ? '未设置': loginUser.openId}" --%>
								class="layui-input">
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label2">微信昵称</label>
						<div class="layui-input-block">
							<input type="text" name="wechatName" disabled="disabled" id="wechatNameKey"
<%-- 								value="${empty loginUser.wechatName ? '未设置': loginUser.wechatName}" --%>
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
							<input type="text" name="company" disabled="disabled" id="companyKey"
<%-- 								value="${empty loginUser.company ? '未设置': loginUser.company}" --%>
								class="layui-input">
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label2">所在部门</label>
						<div class="layui-input-block">
							<input type="text" name="department" disabled="disabled" id="departmentKey"
<%-- 								value="${empty loginUser.department ? '未设置': loginUser.department}" --%>
								class="layui-input">
						</div>
					</div>
				</div>
			</tr>
			<tr>
				<div class="layui-form-item2">

					<div class="layui-inline">
						<label class="layui-form-label2">联系方式</label>
						<div class="layui-input-block">
							<input type="text" name="phone" disabled="disabled" id="phoneKey"
<%-- 								value="${empty loginUser.phone ? '未设置': loginUser.phone}" --%>
								class="layui-input">
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label2">邮箱地址</label>
						<div class="layui-input-block">
							<input type="text" name="email" disabled="disabled" id="emailKey"
<%-- 								value="${empty loginUser.email ? '未设置': loginUser.email}" --%>
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
							<input type="text" name="area1" disabled="disabled" id="area1Key"
<%-- 								value="${empty loginUser.area1 ? '未设置': loginUser.area1}" --%>
								class="layui-input">
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label2">现任职务</label>
						<div class="layui-input-block">
							<input type="text" name="duty" disabled="disabled" id="dutyKey"
<%-- 								value="${empty loginUser.duty ? '未设置': loginUser.duty}" --%>
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
							<input type="text" name="province" disabled="disabled" id="provinceKey"
<%-- 								value="${empty loginUser.province ? '未设置': loginUser.province}" --%>
								class="layui-input">
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label2">所在市</label>
						<div class="layui-input-block">
							<input type="text" name="city" disabled="disabled" id="cityKey"
<%-- 								value="${empty loginUser.city ? '未设置': loginUser.city}" --%>
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
							<input type="text" name="area2" disabled="disabled" id="area2Key"
<%-- 								value="${empty loginUser.area2 ? '未设置': loginUser.area2}" --%>
								class="layui-input">
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label2">备 注</label>
						<div class="layui-input-block">
							<input type="text" name="createDate" disabled="disabled" id="createDateKey"
<%-- 								value="${empty loginUser.password ? '未设置': loginUser.password}" --%>
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
							<input type="text" name="address" style="width: 530px" disabled="disabled" id="addressKey"
<%-- 								value="${empty loginUser.address ? '未设置': loginUser.address}" --%>
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
					<button type="button" data-toggle="modal" data-target="#updateMyUserModalBtn" class=" btn btn-primary">修改信息</button>
				</div>
				&nbsp;&nbsp;&nbsp;
				<div class="layui-inline">
					<button type="button" class="goUserList btn btn-primary"><a href="index.html">返回首页</a></button>
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
					<h4 class="modal-title" id="myModalLabel">修改我的信息</h4>
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
											style="color: red;">*</a>用户序号:</label>
										<div class="layui-input-block">
											<input type="text" name="userId" disabled="disabled" value="${loginUser.userId }" class="layui-input">
											<input type="hidden" name="userId" value="${loginUser.userId }" />
										</div>
									</div>
									<div class="layui-inline">
										<label class="layui-form-label2"><a
											style="color: red;">*</a>账号名称</label>
										<div class="layui-input-block">
											<input type="text" name="userName" id="userName1Key"
<%-- 												value="${empty loginUser.userName ? '未设置': loginUser.userName }" --%>
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
											<input type="text" name="loginName" id="loginname1Key"
<%-- 												value="${empty loginUser.loginname ? '未设置': loginUser.loginname}" --%>
												class="layui-input">
										</div>
									</div>
									<div class="layui-inline">
										<label class="layui-form-label2">后台管理密码</label>
										<div class="layui-input-block">
											<input type="password" name="password" id="password1Key"
<%-- 												value="${empty loginUser.password ? '未设置': loginUser.password}" --%>
												class="layui-input">
										</div>
									</div>
								</div>
							</tr>
							<tr>
								<div class="layui-form-item2">

									<div class="layui-inline">
										<label class="layui-form-label2">微信账号</label>
										<div class="layui-input-block">
											<input type="text" name="openId" id="openId1Key" disabled="disabled"
<%-- 												value="${empty loginUser.openId ? '未设置': loginUser.openId}" --%>
												class="layui-input">
										</div>
									</div>
									<div class="layui-inline">
										<label class="layui-form-label2">微信昵称</label>
										<div class="layui-input-block">
											<input type="text" name="wechatName" id="wechatName1Key" disabled="disabled"
<%-- 												value="${empty loginUser.wechatName ? '未设置': loginUser.wechatName}" --%>
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
											<input type="text" name="company" id="company1Key"
<%-- 												value="${empty loginUser.company ? '未设置': loginUser.company}" --%>
												class="layui-input">
										</div>
									</div>
									<div class="layui-inline">
										<label class="layui-form-label2">所在部门</label>
										<div class="layui-input-block">
											<input type="text" name="department" id="department1Key"
<%-- 												value="${empty loginUser.department ? '未设置': loginUser.department}" --%>
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
											<input type="text" name="phone" id="phone1Key"
<%-- 												value="${empty loginUser.phone ? '未设置': loginUser.phone}" --%>
												class="layui-input">
										</div>
									</div>
									<div class="layui-inline">
										<label class="layui-form-label2"><a
											style="color: red;">*</a>邮箱地址</label>
										<div class="layui-input-block">
											<input type="text" name="email" id="email1Key"
<%-- 												value="${empty loginUser.email ? '未设置': loginUser.email}" --%>
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
											<input type="text" name="area1" id="area11Key"
<%-- 												value="${empty loginUser.area1 ? '未设置': loginUser.area1}" --%>
												class="layui-input">
										</div>
									</div>
									<div class="layui-inline">
										<label class="layui-form-label2"><a
											style="color: red;">*</a>现任职务</label>
										<div class="layui-input-block">
											<input type="text" name="duty" id="duty1Key"
<%-- 												value="${empty loginUser.duty ? '未设置': loginUser.duty}" --%>
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
											<input type="text" name="province" id="province1Key"
<%-- 												value="${empty loginUser.province ? '未设置': loginUser.province}" --%>
												class="layui-input">
										</div>
									</div>
									<div class="layui-inline">
										<label class="layui-form-label2"><a
											style="color: red;">*</a>所在市</label>
										<div class="layui-input-block">
											<input type="text" name="city" id="city1Key"
<%-- 												value="${empty loginUser.city ? '未设置': loginUser.city}" --%>
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
											<input type="text" name="area2" id="area21Key"
<%-- 												value="${empty loginUser.area2 ? '未设置': loginUser.area2}" --%>
												class="layui-input">
										</div>
									</div>
									<div class="layui-inline">
										<label class="layui-form-label2">备 注</label>
										<div class="layui-input-block">
											<input type="text" name="phoneremark" id="phoneremark1Key"
<%-- 												value="${empty loginUser.password ? '未设置': loginUser.password}" --%>
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
											<input type="text" name="address" style="width: 530px" id="address1Key"
<%-- 												value="${empty loginUser.address ? '未设置': loginUser.address}" --%>
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
	<	<!-- 公共的js样式 -->
<%@include file="/commons/common-js.jsp"%>

	 <script type="text/javascript">
		//要提交的param；临时存储用户id和角色id
		var param = {};
		
		$(function(){
			getuserById();
		});
		
		//ajax方式获取所有用户的数据
		function getuserById() {
			$.ajax({
				url : "${ctp}/user/querryById",
				data : {
					userId : "${loginUser.userId}"
				},
				success : function(data) {

					showReturnMsg(data);
				}
			});
		}

		//-------------------------修改---------------------------------
		$(".updateMyUserBtn").click(function() {
			//获取表单数据
			var data = $("#updateModalForm").serialize();
// 			alert(data);

			artDialog.confirm("question", "提示", "确定是否修改？", function(){
// 				alert(data);

				$.ajax({
					url : "${ctp }/user/updateUser",
					data : data,
					dataType: 'json',
					success : function(data) {
						//后台返回的内容显示提示
						alert(data.msg);


						//关闭模态框
						$("#updateMyUserModalBtn").modal('hide');
						//后台清空模态框里面的内容
						$("#updateMyUserModalBtn input").val("");
						$("#updateMyUserModalBtn input").val("");
						location.reload();
					}
				});

// 				$.post("${ctp }/user/updateUser", data, function(data) {
// 					//后台返回的内容显示提示
// 					alert(layer.msg(data.msg));
// 					//关闭模态框
// 					$("#updateMyUserModalBtn").modal('hide');
// 					//后台清空模态框里面的内容
// 					$("#updateMyUserModalBtn input").val("");
// 					$("#updateMyUserModalBtn input").val("");
// 					//刷新登录信息
// // 					window.location.href = "indexcommen.html";
// 					//失败返回的msg
// 				}).fail(function() {
// 					layer.msg(data.msg);
// 					//关闭模态框
// 					$("#updateMyUserModalBtn").modal('hide');
// 					//后台清空模态框里面的内容
// 					$("#updateMyUserModalBtn input").val("");
// 					$("#updateMyUserModalBtn input").val("");
					
// 				});
			});		
// 			location.reload();	
		});
		
		//-----------------------------------------------------
		//回显方法
		function showReturnMsg(data){
			var conData = data.content;
			
			//回显操作
			document.getElementById("loginnameKey").value = conData.loginname;
			document.getElementById("passwordKey").value = conData.password;
			document.getElementById("userNameKey").value = conData.userName;
			document.getElementById("phoneKey").value = conData.phone;
			document.getElementById("openIdKey").value = conData.openId;
			document.getElementById("wechatNameKey").value = conData.wechatName;
			document.getElementById("companyKey").value = conData.company;
			document.getElementById("departmentKey").value = conData.department;
			document.getElementById("dutyKey").value = conData.duty;
			document.getElementById("area1Key").value = conData.area1;
			document.getElementById("emailKey").value = conData.email;
			document.getElementById("provinceKey").value = conData.province;
			document.getElementById("cityKey").value = conData.city;
			document.getElementById("area2Key").value = conData.area2;
			document.getElementById("addressKey").value = conData.address;
			document.getElementById("createDateKey").value = timeFormat(conData.createDate);
// 			document.getElementById("integralCountKey").value = conData.integralCount;
			
			
// 			document.getElementById("userId1Key").value = conData.userId;
			document.getElementById("loginname1Key").value = conData.loginname;
			document.getElementById("password1Key").value = conData.password;
			document.getElementById("userName1Key").value = conData.userName;
			document.getElementById("phone1Key").value = conData.phone;
			document.getElementById("openId1Key").value = conData.openId;
			document.getElementById("wechatName1Key").value = conData.wechatName;
			document.getElementById("company1Key").value = conData.company;
			document.getElementById("department1Key").value = conData.department;
			document.getElementById("duty1Key").value = conData.duty;
			document.getElementById("area11Key").value = conData.area1;
			document.getElementById("email1Key").value = conData.email;
			document.getElementById("province1Key").value = conData.province;
			document.getElementById("city1Key").value = conData.city;
			document.getElementById("area21Key").value = conData.area2;
			document.getElementById("address1Key").value = conData.address;
			document.getElementById("phoneremark1Key").value = conData.phoneremark;
// 			document.getElementById("integralCount1Key").value = conData.integralCount;
// 			document.getElementById("createDate1Key").value = timeFormat(conData.createDate);
			
			
			
		}
		
		//时间格式化
		function timeFormat(time) {

			if (time == null) {
				return null;
			}
			var datetime = new Date();
			datetime.setTime(time);
			var year = datetime.getFullYear();
			var month = datetime.getMonth() + 1;
			var date = datetime.getDate();
			var hour = datetime.getHours();
			if (hour <= 9) {
				hour = "0" + hour;
			}
			var minute = datetime.getMinutes();
			if (minute <= 9) {
				minute = "0" + minute;
			}

			var second = datetime.getSeconds();
			if (second <= 9) {

				second = "0" + second;
			}
			return year + "-" + month + "-" + date;//+"."+mseconds;
		};
		
	</script>
</body>

</html>
