<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="favicon.ico">
<title>订单信息中心</title>

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
				<li><a href="#">客户管理</a></li>
				<li>»</li>
				<li class="active">订单管理</li>
				<li>»</li>
				<li class="#">个人订单</li>
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
		<form class="layui-form" action="${ctp }/user/updateUser"
			id="updateOrderForm" style="width: 90%; margin: 10 auto;">
			<table>
				<tr>
					<div class="layui-form-item2" id="updateOrderDiv">
						<div class="layui-inline">
							<label class="layui-form-label2"><a
								style="color: red;">*</a>订单序号:</label>
							<div class="layui-input-block">
								<input type="text" name="id" disabled="disabled"
									value="${sessionScope.order.id }" class="layui-input">
								<input type="hidden" name="id"
									value="${sessionScope.order.id }" />
							</div>
						</div>
						<div class="layui-inline">
							<label class="layui-form-label2"><a
								style="color: red;">*</a>用户id</label>
							<div class="layui-input-block">
								<input type="text" name="userId"
									value="${empty sessionScope.order.userId ? '未设置': sessionScope.order.userId }"
									class="layui-input">
							</div>
						</div>
	
					</div>
				</tr>
				<tr>
					<div class="layui-form-item2">
						<div class="layui-inline">
							<label class="layui-form-label2">商品id</label>
							<div class="layui-input-block">
								<input type="text" name="productId"
									value="${empty sessionScope.order.productId ? '未设置': sessionScope.order.productId}"
									class="layui-input">
							</div>
						</div>
						<div class="layui-inline">
							<label class="layui-form-label2">商品名称</label>
							<div class="layui-input-block">
								<input type="text" name="productName"
									value="${empty sessionScope.order.productName ? '未设置': sessionScope.order.productName}"
									class="layui-input">
							</div>
						</div>
					</div>
				</tr>
				<tr>
					<div class="layui-form-item2">
	
						<div class="layui-inline">
							<label class="layui-form-label2">微信昵称</label>
							<div class="layui-input-block">
								<input type="text" name="wechatName"
									value="${empty sessionScope.order.wechatName ? '未设置': sessionScope.order.wechatName}"
									class="layui-input">
							</div>
						</div>
						<div class="layui-inline">
							<label class="layui-form-label2">收货人名称</label>
							<div class="layui-input-block">
								<input type="text" name="consigneeName"
									value="${empty sessionScope.order.consigneeName ? '未设置': sessionScope.order.consigneeName}"
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
									value="${empty sessionScope.order.phone ? '未设置': sessionScope.order.phone}"
									class="layui-input">
							</div>
						</div>
						<div class="layui-inline">
							<label class="layui-form-label2"><a
								style="color: red;">*</a>收货地址</label>
							<div class="layui-input-block">
								<input type="text" name="consigneePath"
									value="${empty sessionScope.order.consigneePath ? '未设置': sessionScope.order.consigneePath}"
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
								<input type="text" name="area"
									value="${empty sessionScope.order.area ? '未设置': sessionScope.order.area}"
									class="layui-input">
							</div>
						</div>
						<div class="layui-inline">
							<label class="layui-form-label2"><a
								style="color: red;">*</a>发放状态</label>
							<div class="layui-input-block">
								<input type="text" name="status"
									value="${empty sessionScope.order.status ? '未设置': sessionScope.order.status}"
									class="layui-input">
							</div>
						</div>
					</div>
				</tr>
			</table>
		</form>
		<!-- 模态框主题内容结束 -->
		<div class="modal-footer">
			<button type="button" class="updateOrderBtn btn btn-primary">提交更新</button>
			<button type="button" class="btn btn-default" data-dismiss="modal"><a href="../index.html">返回首页</a></button>
			<button type="button" class="btn btn-default" data-dismiss="modal"><a href="javascript:history.back(-1);">返回上一步</a></button>
		</div>
	</div>
	
	
	<!-- JS --> <script type="text/javascript"
		src="${ctp }/js/jquery-2.1.1.min.js"></script><!-- BASIC JQUERY 1.8.3 LIB. JS -->

	<script type="text/javascript" src="${ctp }/js/bootstrap.min.js"></script>
	<!-- BOOTSTRAP JS --> <script type="text/javascript"
		src="${ctp }/js/jquery.dcjqaccordion.2.7.js"></script> <!-- 左测点击拉下去 JS -->

	<script type="text/javascript" src="${ctp }/js/jquery.nicescroll.js"></script>
	<!-- 滚动条 JS --> <script type="text/javascript"
		src="${ctp }/js/common-scripts.js"></script> <!-- 公用的 JS --> <!--<script type="text/javascript" src="${ctp }/js/jquery.min.js" ></script>-->

	<script type="text/javascript" src="${ctp }/js/placeholder-IE789.js"></script>

	<script type="text/javascript" src="${ctp }/js/layer/layer.js"></script>

	<!--全选js--> <script type="text/javascript"
		src="${ctp }/js/tableCheckbox.js"></script> <!--弹出层js引用--> <script
		type="text/javascript" src="${ctp }/js/jquery.artDialog.source.js"></script>
	<script type="text/javascript" src="${ctp }/js/iframeTools.source.js"></script>
	<script type="text/javascript" src="${ctp }/js/msgbox.js"></script> <script
		type="text/javascript">
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

		$(".updateOrderBtn").click(function() {

			//获取表单数据
			var data = $("#updateOrderForm").serialize();

			layer.confirm("是否确认修改？", {
				btn : [ '确定修改', '算了吧' ]
			}, function() {
				$.ajax({
					type : "POST",
					url : "${ctp }/order/update",
					data : data,
					success : function(msg) {
						layer.msg(msg.msg);
						
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
