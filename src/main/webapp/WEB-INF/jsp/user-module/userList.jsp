<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="favicon.ico">
<title>用户管理页面</title>

<!-- css样式抽取 -->
<!-- 公共的css样式 -->
<%@include file="/commons/common-css.jsp"%>

<!-- 业务管理模块--客客户理页面 -->

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
			</ul>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-9">

			<section> <!-- 按钮触发模态框 -->
				
				<button class="btn btn-info btn-primary" style="margin-left: 5%;"
					data-toggle="modal" data-target="#myModal111">新增用户</button>
				</button>
				<button class="btn btn-info btn-primary" style="margin-left: 5%;">导入用户</button>
				</button>
				<button class="btn btn-info btn-primary" style="margin-left: 5%;">导出用户</button>
				</button>
			</section>
		</div>
	</div>

	<!--筛选开始-->
	<div class="layui-field-box" style="margin-top: 10px;">
		<form id="querryForm" class="layui-form" action="">
			<div class="layui-form-item">
				<div class="layui-inline">
					<label class="layui-form-label">查询条件</label>
					<div class="layui-input-block">
						<input id="inputId" type="text" name="userName" placeholder="请输入用户名称"
							class="layui-input">
					</div>
				</div>

				<div class="layui-inline" style="margin-top: -5px; margin-left: 5%;">
					<button type="button" id="querryBtn" class="layui-btn layui-btn-primary-search">查询</button>
				</div>
			</div>
		</form>
	</div>

	<!--table开始-->
	<div id="gundong">
		<table class="site-table table-hover" id="userTable"
			style="width: 100%;">
			<thead>
				<!-- 目录列表 -->
				<tr>
					<th>序号</th>
					<th>用户名</th>
					<th>微信昵称</th>
					<th>积分总数</th>
					<th>联系方式</th>
					<th>邮箱</th>
					<th>创建时间</th>
					<th>操作</th>
				</tr>
			</thead>

			<!--内容容器-->
			<tbody>

			</tbody>

			<tfoot>
				<tr>
					<td colspan="6"  >
						<ul class="pagination">

						</ul>
					</td>
				</tr>
			</tfoot>
		</table>
	</div>
	</section> </section> <!--编辑   弹出层开始--> 
	
	<!-- 新增用户窗口模态框（Modal） -->
	<div class="modal fade" id="myModal111" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">新增用户窗口</h4>
				</div>

				<div class="modal-body">
					<form class="layui-form" id="addUser-form" action=""
						style="width: 95%; margin: 10 auto;">
						<div class="layui-form-item2"  >
							<div class="layui-inline">
								<label class="layui-form-label2">用户名</label>
								<div class="layui-input-block">
									<input type="text" name="userName" class="layui-input">
								</div>
							</div>
							<div class="layui-inline" style="margin-left: 10%;">
								<label class="layui-form-label2">联系方式</label>
								<div class="layui-input-block">
									<input type="text" name="phone" class="layui-input">
								</div>
							</div>
						</div>
						<div class="layui-form-item2"  >
							<div class="layui-inline">
								<label class="layui-form-label2">微信账号</label>
								<div class="layui-input-block">
									<input type="text" name="openId" class="layui-input">
								</div>
							</div>
							<div class="layui-inline" style="margin-left: 10%;">
								<label class="layui-form-label2">微信昵称</label>
								<div class="layui-input-block">
									<input type="text" name="wechatName" class="layui-input">
								</div>
							</div>
						</div>
						<div class="layui-form-item2"  >
							<div class="layui-inline">
								<label class="layui-form-label2">所在公司</label>
								<div class="layui-input-block">
									<input type="text" name="company" class="layui-input">
								</div>
							</div>
							<div class="layui-inline" style="margin-left: 10%;">
								<label class="layui-form-label2">所在部门</label>
								<div class="layui-input-block">
									<input type="text" name="department" class="layui-input">
								</div>
							</div>
						</div>

						<div class="layui-form-item2"  >
							<div class="layui-inline">
								<label class="layui-form-label2">所在区域</label>
								<div class="layui-input-block">
									<input type="text" name="area1" class="layui-input">
								</div>
							</div>
							<div class="layui-inline" style="margin-left: 10%;">
								<label class="layui-form-label2">邮箱地址</label>
								<div class="layui-input-block">
									<input type="text" name="email" class="layui-input">
								</div>
							</div>
						</div>

						<div class="layui-form-item2"  >
							<div class="layui-inline">
								<label class="layui-form-label2">现任职务</label>
								<div class="layui-input-block">
									<input type="text" name="duty" class="layui-input">
								</div>
							</div>
							<div class="layui-inline" style="margin-left: 10%;">
								<label class="layui-form-label2">备 注</label>
								<div class="layui-input-block">
									<input type="text" name="phoneremark" class="layui-input">
								</div>
							</div>
						</div>

						<!--发货方-->
						<div class="layui-form-item2" style="margin-top: 15px;">
							<label class="layui-form-label"
								style="color: #FF3030; font-weight: bold;">详细地址</label>
							<div class="layui-input-block">
								<input type="text" name="address" class="layui-input">
							</div>
						</div>
					</form>
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" id="addNewUserBtn" class="btn btn-primary">创建</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	
	<!-- 修改用户信息模态框 -->
	<div class="modal fade" id="updateUserModalBtn" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">修改用户窗口</h4>
				</div>

				<div class="modal-body">
					<form class="layui-form" id="updateUserForm" action="" style="width: 95%; margin: 10 auto;">
						<div class="layui-form-item2"  >
							<div class="layui-inline">
								<label class="layui-form-label2">用户名</label>
								<div class="layui-input-block">
									<input id="userIdKey" type="hidden" name="userId" value="">
									<input id="userNameKey" type="text" name="userName" class="layui-input">
								</div>
							</div>
							<div class="layui-inline" style="margin-left: 10%;">
								<label class="layui-form-label2">积分总数</label>
								<div class="layui-input-block">
									<input id="integralCountKey" disabled="disabled" type="text" name="integralCount" class="layui-input">
								</div>
							</div>
						</div>
						<div class="layui-form-item2"  >
							<div class="layui-inline">
								<label class="layui-form-label2">登录账号</label>
								<div class="layui-input-block">
									<input id="loginnameKey" type="text" name="loginname" class="layui-input">
								</div>
							</div>
							<div class="layui-inline">
								<label class="layui-form-label2">登录密码</label>
								<div class="layui-input-block">
									<input id="passwordKey" type="password" name="password" class="layui-input">
								</div>
							</div>
						</div>
						
				
						<div class="layui-form-item2"  >
							<div class="layui-inline">
								<label class="layui-form-label2">微信账号</label>
								<div class="layui-input-block">
									<input id="openIdKey" type="text" name="openId" class="layui-input">
								</div>
							</div>
							<div class="layui-inline" style="margin-left: 10%;">
								<label class="layui-form-label2">微信昵称</label>
								<div class="layui-input-block">
									<input id="wechatNameKey" type="text" name="wechatName" class="layui-input">
									
								</div>
							</div>
						</div>
						
						<div class="layui-form-item2"  >
							<div class="layui-inline">
								<label class="layui-form-label2">所在公司</label>
								<div class="layui-input-block">
									<input id="companyKey" type="text" name="company" class="layui-input">
								</div>
							</div>
							<div class="layui-inline" style="margin-left: 10%;">
								<label class="layui-form-label2">所在部门</label>
								<div class="layui-input-block">
									<input id="departmentKey" type="text" name="department" class="layui-input">
								</div>
							</div>
						</div>

						<div class="layui-form-item2"  >
							<div class="layui-inline">
								<label class="layui-form-label2">所在区域</label>
								<div class="layui-input-block">
									<input id="area1Key" type="text" name="area1" class="layui-input">
								</div>
							</div>
							<div class="layui-inline" style="margin-left: 10%;">
								<label class="layui-form-label2">邮箱地址</label>
								<div class="layui-input-block">
									<input id="emailKey" type="text" name="email" class="layui-input">
								</div>
							</div>
						</div>

						<div class="layui-form-item2"  >
							<div class="layui-inline">
								<label class="layui-form-label2">现任职务</label>
								<div class="layui-input-block">
									<input id="dutyKey" type="text" name="duty" class="layui-input">
								</div>
							</div>
							<div class="layui-inline" style="margin-left: 10%;">
								<label class="layui-form-label2">联系方式</label>
								<div class="layui-input-block">
									<input id="phoneKey" type="text" name="phone" class="layui-input">
								</div>
							</div>
						</div>
						
						<div class="layui-form-item2"  >
							<div class="layui-inline">
								<label class="layui-form-label2">所在省</label>
								<div class="layui-input-block">
									<input id="provinceKey" type="text" name="province" class="layui-input">
								</div>
							</div>
							<div class="layui-inline">
								<label class="layui-form-label2">所在市</label>
								<div class="layui-input-block">
									<input id="cityKey" type="text" name="city" class="layui-input">
								</div>
							</div>
						</div>

						<!--发货方-->
						<div class="layui-form-item2" style="margin-top: 15px;">
							<label class="layui-form-label"
								style="color: #FF3030; font-weight: bold;">详细地址</label>
							<div class="layui-input-block">
								<input id="addressKey" type="text" name="address" class="layui-input">
							</div>
						</div>
					</form>
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" id="subUpdateUserBtn" class="btn btn-primary">修改/保存</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	
	
	<!-- 角色模态框  增删改查开始 -->
	 <!-- 模态框（Modal） -->
	<div class="modal fade" id="userModel" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" id="userRoleDiv"  >
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">用户角色框</h4>
				</div>
				<div class="modal-body">
					<form role="form" class="form-inline">
						<div class="form-group">
							<label for="exampleInputPassword1">全部角色</label><br> <select
								id="noRoleSelect" class="form-control" multiple size="10"
								style="width: 120px; overflow-y: auto;">
							</select>
						</div>
						<div class="form-group">
							<ul>
								<li id="addRoleBtn" class="btn btn-default"><label>》》添加》》</label></li>
								<!-- glyphicon glyphicon-chevron-right -->
								<br>
								<li id="removeRoleBtn" class="btn btn-default"
									style="margin-top: 20px;"><label>《《解除《《</label></li>
								<!-- glyphicon glyphicon-chevron-lef -->
							</ul>
						</div>
						<div class="form-group" style="margin-left: 40px;">
							<label for="exampleInputPassword1">我的角色</label><br> <select
								id="myRoleSelect" class="form-control" multiple size="10"
								style="width: 120px; overflow-y: auto;">
							</select>
						</div>
					</form>

				</div>
				<div class="modal-footer">
					<button type="button" id="closeRoleBtn" class="btn btn-primary"
						data-dismiss="modal">关闭</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
	<!-- 添加角色模态框结束 --> 
	
	<!-- 查看用户详细信息模态框 -->
	<div class="modal fade" id="showMyUserModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	    <div class="modal-dialog modal-lg">
	        <div class="modal-content" a>
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                <h4 class="modal-title" id="myModalLabel">用户个人信息</h4>
	            </div>
	            <div class="modal-body">
				<!-- 内容开始 -->
					<table>
						<tr>
							<div class="layui-form-item2" id="updateUserDiv">
								<div class="layui-inline">
									<label class="layui-form-label2">用户名</label>
									<div class="layui-input-block">
										<input id="userId1Key" value="" type="hidden" name="userId" disabled="disabled" class="layui-input">
										<input id="userName1Key" value="" type="text" name="userName" disabled="disabled" class="layui-input">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label2">积分总数</label>
									<div class="layui-input-block">
										<input id="integralCount1Key" disabled="disabled" type="text" name="integralCount" class="layui-input">
									</div>
								</div>
							</div>
						</tr>
						<tr>
							<div class="layui-inline">
								<label class="layui-form-label2">微信昵称</label>
								<div class="layui-input-block">
									<input id="openId1Key" type="text" name="opendId" disabled="disabled" class="layui-input">
								</div>
							</div>
							<div class="layui-inline">
								<label class="layui-form-label2">微信昵称</label>
								<div class="layui-input-block">
									<input id="wechatName1Key" type="text" name="wechatName" disabled="disabled" class="layui-input">
								</div>
							</div>
						</tr>
						<tr>
							<div class="layui-form-item2">
								<div class="layui-inline">
									<label class="layui-form-label2">后台管理账号</label>
									<div class="layui-input-block">
										<input id="loginname3Key" type="text" name="loginname" disabled="disabled" class="layui-input">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label2">后台管理密码</label>
									<div class="layui-input-block">
										<input id="password1Key" type="password" name="password" disabled="disabled" class="layui-input">
									</div>
								</div>
							</div>
						</tr>
						</tr>
						<tr>
							<div class="layui-form-item2">
								<div class="layui-inline">
									<label class="layui-form-label2">所在公司</label>
									<div class="layui-input-block">
										<input id="company1Key" type="text" name="company" disabled="disabled" class="layui-input">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label2">所在部门</label>
									<div class="layui-input-block">
										<input id="department1Key" type="text" name="department" disabled="disabled" class="layui-input">
									</div>
								</div>
							</div>
						</tr>
						<tr>
							<div class="layui-form-item2">
			
								<div class="layui-inline">
									<label class="layui-form-label2">联系方式</label>
									<div class="layui-input-block">
										<input id="phone1Key" type="text" name="phone" disabled="disabled" class="layui-input">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label2">邮箱地址</label>
									<div class="layui-input-block">
										<input id="email1Key" type="text" name="email" disabled="disabled" class="layui-input">
									</div>
								</div>
							</div>
						</tr>
						<tr>
							<div class="layui-form-item2">
								<div class="layui-inline">
									<label class="layui-form-label2">所在区域</label>
									<div class="layui-input-block">
										<input id="area11Key" type="text" name="area1" disabled="disabled" class="layui-input">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label2">现任职务</label>
									<div class="layui-input-block">
										<input id="duty1Key" type="text" name="duty" disabled="disabled" class="layui-input">
									</div>
								</div>
							</div>
						</tr>
						<tr>
							<div class="layui-form-item2">
								<div class="layui-inline">
									<label class="layui-form-label2">所在省</label>
									<div class="layui-input-block">
										<input id="province1Key" type="text" name="province" disabled="disabled" class="layui-input">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label2">所在市</label>
									<div class="layui-input-block">
										<input id="city1Key" type="text" name="city" disabled="disabled" class="layui-input">
									</div>
								</div>
							</div>
						</tr>
						<tr>
							<div class="layui-form-item2">
								<div class="layui-inline">
									<label class="layui-form-label2">所在区</label>
									<div class="layui-input-block">
										<input id="area21Key" type="text" name="area2" disabled="disabled" class="layui-input">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label2">创建时间</label>
									<div class="layui-input-block">
										<input id="createDate1Key" type="text" name="createDate" disabled="disabled" class="layui-input">
									</div>
								</div>
							</div>
						</tr>
						<tr>
							<div class="layui-form-item2">
								<div class="layui-inline">
									<label class="layui-form-label2">详细地址</label>
									<div class="layui-input-block">
										<input  id="address1Key" type="text" name="address" style="width: 530px" disabled="disabled" class="layui-input">
									</div>
								</div>
							</div>
						</tr>
					</table>
				<!-- 内容结束 -->
			    </div>
	            <div class="modal-footer">
	                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
	                <button type="button" class="updateUserModalBtn btn btn-primary">修改信息</button>
	            </div>
	        </div><!-- /.modal-content -->
	    </div><!-- /.modal -->
</div>
	
	
	
	
<!-- 公共的js样式 -->
<%@include file="/commons/common-js.jsp"%>
	
<script type="text/javascript">
		//要提交的param；临时存储用户id和角色id
		var param = {};

		//保存当前页面的信息
		var page = {
			pn : 1,
			ps : 5,
			lastPage : 10
		};

		$('#gundong').niceScroll({
			cursorcolor : "#ccc",//#CC0071 光标颜色
			cursoropacitymax : 1, //改变不透明度非常光标处于活动状态（scrollabar“可见”状态），范围从1到0
			touchbehavior : false, //使光标拖动滚动像在台式电脑触摸设备
			cursorwidth : "5px", //像素光标的宽度
			cursorborder : "0", // 	游标边框css定义
			cursorborderradius : "5px",//以像素为光标边界半径
			autohidemode : false, //是否隐藏滚动条
		});

		//页面加载完成后显示第一页数据
		$(function() {
			page.pn = 1;//第一页数据
			getusers();

		});
		
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
		

		
		//----------------------------------------------------------		

		//根据查询名称查询用户信息 
		$("#querryBtn").click(function() {

			//获取表单数据
			var params = $("#querryForm").serialize();
			var dataVal = document.getElementById("inputId").value;
			page.pn = 1;//第一页数据
			
			if (dataVal != null) {
				getUserOne(params);
			}else{
				getusers();
			}

			//发起请求
		});

		//更新我的角色操作
		$(function() {
			$("#myRoleSelect option").each(function() {
				var delRoleId = this.value;
				$("#noRoleSelect option[value=" + delRoleId + "]").remove();
			});
		});
		//更新所有角色操作
		$(function() {
			$("#noRoleSelect option").each(function() {
				var delRoleId = this.value;
				$("#myRoleSelect option[value=" + delRoleId + "]").remove();
			});
		});

		function initPageObject(data) {
			page.pn = data.pageNum;
			page.ps = data.pageSize;
			page.lastPage = data.lastPage;
		}

		//初始化更新所有的角色
		function initAllRole() {
			$("#noRoleSelect").empty(); //清空所有角色

			//获取所有的角色名
			$.ajax({
				type : "GET",
				url : "${ctp}/user/userRole",
				success : function(a) {
					//<option value="pm">PM</option>
					$.each(a, function() {
						$("#noRoleSelect").append(
								'<option value="'+this.roleId+'">'
										+ this.roleName + '</option>');
					});
				}
			});
		}

		//更新我的角色
		function initMyRole() {
			$("#myRoleSelect").empty(); //清空所有角色

			//发送请求获取用户的所有角色
			$.get("${ctp}/user/userRole", param, function(data) {

				$.each(data, function() {
					$("#myRoleSelect").append(
							'<option value="'+this.roleId+'">' + this.roleName
									+ '</option>');
				});
			});

		}

		//添加角色单机事件
		$("#addRoleBtn").click(function() {
			//1、添加数据
			var params = {};
			params.userId = param.userId;
			params.roleIds = "";

			/*添加或者删除角色*/
			$("#noRoleSelect :selected").each(function() {
				params.roleIds += this.value + ",";
			})

			//用户添加角色
			$.post("${ctp}/user/addRole", params).done(function(data) {
				layer.msg(data.msg);
				$("#noUserRolesSelect :selected").appendTo($("#myRoleSelect"));

				//获取所有的角色
				initAllRole();

				//获取我的角色
				initMyRole();

			}).fail(function() {
				layer.msg("网络异常！");
			});
		});

		//绑定单机事件，--删除用户角色
		$("#removeRoleBtn").click(function() {
			//1、发送请求进行添加
			var params = {};
			params.userId = param.userId;
			params.roleIds = "";
			$("#myRoleSelect :selected").each(function() {
				params.roleIds += this.value + ",";

			});

			//删除角色
			$.post("${ctp}/user/removeRole", params).done(function(data) {
				layer.msg(data.msg);
				//2、页面效果过来
				$("#myRoleSelect :selected").appendTo($("#noUserRolesSelect"));

				//初始化我的角色
				initMyRole();

			}).fail(function() {
				// 				
				layer.msg("网络异常！");
			});

		});
		
		//初始化用户，并处理添加角色功能的回显
		function iniUser() {
			var setting = {
				check : {
					enable : true
				},
				data : {
					simpleData : {
						enable : true,
						idKey : "userId",
						pIdKey : "roleId",
						rootPId : 0
					},
					key : {
						url : "666"
					}
				}
			};

		}


		//删除一个用户
		$("body").on("click", ".deleteUserBtn", function() {

			param.userIds = $(this).attr("userId");
			layer.confirm("确认删除该员工吗？", {
				btn : [ '确定删除', '取消删除' ]
			}, function() {
				$.get("${ctp}/user/delUser", param, function(data) {
					layer.msg(data.msg);
				});
				location.reload();

				//跳转当前页
				page.pn = page.pageNum;
				getusers();
			}, function() {
				layer.msg("....");
			});

			return false;
		})

		//批量删除用户  
		$("#removeUserBtn").click(function() {
			//找到选中的员工的checkbox并获取到id
			param.userIds = "";

			$(".itemCheckBox:checked").each(function() {
				param.userIds += $(this).attr("userId") + ",";
			});


			layer.confirm("确认删除这些员工吗？", {
				btn : [ "确定删除", "取消删除" ]
			}, function() {
				//删除员工
				$.post("${ctp }/user/delUser", param, function(data) {
					//返回参数
					layer.msg(data.msg);

					//来到最后一页；
					page.pn = page.lastPage + 10;
					getusers();
				});
			}, function() {

			});
		});

		//----------------获取所有用户列表操作,以及遍历所有用户角色和所有的角色-----------------------
		//获取所有用户列表操作,以及遍历所有用户角色和所有的角色
		$("body").on("click", ".userModelShowBtn", function() {

			var userId = $(this).attr("userId");
			param.userId = userId;

			//初始化用户
			iniUser();
			$("#userModel").modal({
				backdrop : 'static',
				show : true
			});

			//发送请求获取用户的所有角色
			initMyRole();
			//获取所有的角色名
			initAllRole();

			$("#closeRoleBtn").click(function() {
				$("#myRoleSelect").empty(); //清空我的角色
				$("#noRoleSelect").empty(); //清空所有角色

			});

		});

		//---------------------单机事件-切换跳转显示某一页的数据-----------------------
		//绑定单机事件
		$(".pagination").on("click", ".jumpli", function() {

			//查出某页的数据
			page.pn = $(this).attr("pn");
			getusers();
		});

		//ajax方式获取所有用户的数据
		function getusers() {
			$.ajax({
				url : "${ctp}/user/querry",
				data : {
					pn : page.pn,
					ps : page.ps
				},
				success : function(a) {

					showUsers(a);
				}
			});
		}
		//获取用户的数据
		function getUserOne(data) {
			$.post("${ctp}/user/querryByLike",data,function(data){
// 				console.log(data);
				showUsers(data);
			});
		}

		//---------------------添加用户--------------------------------------------
		//保存添加用户按钮绑定单机事件
		$("#addNewUserBtn").click(function() {
			//获取表单数据
			var data = $("#addUser-form").serialize();


			artDialog.confirm("question", "提示", "确定是否添加用户？", function() {
				$.post("${ctp }/user/add", data, function(data) {
					//后台返回的内容显示提示
					layer.msg(data.msg);
					//关闭模态框
					$("#myModal111").modal('hide');
					//后台清空模态框里面的内容
					$("#myModal111 input").val("");
					//来到最后一页；
					page.pn = page.lastPage + 10;
					getusers();

					//失败返回的msg
				}).fail(function() {
					layer.msg(data.msg);
					//关闭模态框
					$("#mymodelDiv").modal('hide');
					//后台清空模态框里面的内容
					$("#mymodelDiv input").val("");
					//来到最后一页；
					page.pn = page.lastPage + 10;
					getusers();
				});
			});
		});

		//-----------------显示所有用户------------------------------

		//显示所有用户
		function showUsers(data) {
			// 1.清空数据
			$("ul.pagination").empty();
			$("#userTable tbody").empty();

			//2.显示表格
			buildTable(data);

			//3.显示分页条
			buildPage(data);
		}

		//表格显示
		function buildTable(data) {
			var userData = data.list;
			var id = 0;
			$.each(userData,function() {
				//创建tr
				var tr = $("<tr></tr>");
				//创建td

				var btnTd = $("<td></td>")
				//操作列

				btnTd.append('<button userId = "'+ this.userId+ '" type = "button" class = "userModelShowBtn btn btn-sm btn-success" title="添加角色" ><i class="fa fa-qrcode"></i></button>')
					 .append('&nbsp;<button userId = "'+ this.userId+ '" type = "button" class = "showMyUserModal btn btn-sm btn-info" title="查看信息" ><i class="fa fa-pencil"></i></button>')
					 .append('&nbsp;<button userId = "'+ this.userId+ '" type = "button" class = "deleteUserBtn btn btn-sm btn-danger" title="删除用户" id="removeUserBtn"><i class="fa fa-trash"></i></button>');

				 tr.append("<td>" + ++id + "</td>")
// 				 tr.append("<td>" + this.userId + "</td>")
				   .append("<td><a onclick='toUserById("+ this.userId +")'>" + this.userName+ "</a></td>")
				   .append("<td>" + this.wechatName+ "</td>")
				   .append("<td>" + nullIsZero(this.integralCount) + "</td>")
				   .append("<td>" + this.phone + "</td>")
				   .append("<td>" + this.email + "</td>")
				   .append("<td>" + timeFormat(this.createDate) + "</td>")
				   .append(btnTd).appendTo($("#userTable tbody"));
			});
		}
		
		function toUserById(data){
			alert("111");
		}

		//分页条显示
		function buildPage(data) {
			//首页
			var firstPage = $('<li class="jumpli" pn="1"><a href="#">首页</a></li>');
			//上一页
			var prevPage = $('<li class="jumpli" pn="'+data.prePage +'"><a href="#">上一页</a></li>');
			if (!data.hasPreviousPage) {
				prePage = "";
			}
			//下一页
			var nextPage = $('<li class="jumpli" pn="'+data.nextPage+'"><a href="#">下一页</a></li>');
			if (!data.hasNextPage) {
				nextPage = "";
			}
			//末页
			var lastPage = $('<li class="jumpli" pn="'+data.lastPage+'"><a href="#">末页</a></li>');

			//循环页
			var cyclePage;
			var str = '';

			//拼串
			$.each(data.navigatepageNums, function() {
				var temp = "";
				if (this == data.pageNum) {
					//当前页高亮
					temp = '<li class="active" pn="'+this+'"><a href="#">'
							+ this + '</a></li>'
				} else {
					temp = '<li class="jumpli" pn="'+this+'"><a href="#">'
							+ this + '</a></li>'
				}

				str += temp;
			});
			//字符串转为jquery对象
			cyclePage = $(str);
			//提示信息
			var info = $('<li class="disabled"><a href="#">总 ' + data.pages
					+ ' 页，当前第 ' + data.pageNum + ' 页，总计 ' + data.total
					+ ' 条记录</a></li>');

			//添加分页字段
			$("ul.pagination").append(firstPage).append(prevPage).append(
					cyclePage).append(nextPage).append(lastPage).append(info)
		}

		//--------------------------------------------------------------
		
		//回显方法
		function showReturnMsg(data){
			
			var conData = data.list[0];

			
			
			document.getElementById("userId1Key").value = conData.userId;
			document.getElementById("loginname3Key").value = conData.loginname;
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
// 			document.getElementById("phoneremark1Key").value = conData.phoneremark;
			document.getElementById("integralCount1Key").value = conData.integralCount;
			document.getElementById("createDate1Key").value = timeFormat(conData.createDate);
			
			//input值
			$("#userIdKey").attr("value",conData.userId);
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
// 			document.getElementById("area2Key").value = conData.area2;
			document.getElementById("addressKey").value = conData.address;
// 			document.getElementById("phoneremarkKey").value = conData.phoneremark;
			document.getElementById("integralCountKey").value = conData.integralCount;
			
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
		
		//------------------------------显示个人信息----------------------
		$("body").on("click", ".showMyUserModal", function() {
			
			//后台清空模态框里面的内容
			$("#showMyUserModal input").val("");
			
			param.userId = $(this).attr("userId");
			
			//回显
			$.ajax({
				url : "${ctp}/user/querry",
				data : {
					userId : param.userId
				},
				dataType: 'json',
				success : function(data) {
// 					console.log(data);
					showReturnMsg(data);
					
				}
			});
			
			//显示模态框
			$("#showMyUserModal").modal({
	   			backdrop : 'static',
	   			show : true
	   		});
			
			
			$("body").on("click", ".updateUserModalBtn", function() {
				
				//关闭模态框
				$("#showMyUserModal").modal('hide');
				
				//后台清空模态框里面的内容
				$("#updateUserModalBtn input").val("");
				
				$.ajax({
					url : "${ctp}/user/querry",
					data : {
						userId : param.userId
					},
					dataType: 'json',
					success : function(data) {
						showReturnMsg(data);
					}
				});
				
				//显示模态框
				$("#updateUserModalBtn").modal({
		   			backdrop : 'static',
		   			show : true
		   		});
				
			});
			
		});
		
		
		//-------------------------修改---------------------------------
		
		$("#subUpdateUserBtn").click(function(){
			//获取表单数据
			var params = $("#updateUserForm").serialize();
			
			artDialog.confirm("question", "提示", "确定是否修改用户信息？", function() {
				$.post("${ctp }/user/updateUser", params, function(data) {
					//后台返回的内容显示提示
					layer.msg(data.msg);
					//关闭模态框
					$("#updateUserModalBtn").modal('hide');
					//后台清空模态框里面的内容
					$("#updateUserModalBtn input").val("");
					
					//来到最后一页；
					page.pn = pageNum;
					getusers();

					//失败返回的msg
				}).fail(function() {
					layer.msg(data.msg);
					//关闭模态框
					$("#updateUserModalBtn").modal('hide');
					//后台清空模态框里面的内容
					$("#updateUserModalBtn input").val("");
					//来到当前页；
					page.pn = pageNum;
					getusers();
				});
			});
		});
		
	function nullIsZero(data){
		
		if (data == null) {
			return data = 0;
		}
		return data;
		
		
	}	
	
	
	</script>
</body>

</html>
