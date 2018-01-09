<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="favicon.ico">
<title>订单管理页面</title>

<!-- css样式抽取 -->
<!-- 公共的css样式 -->
<%@include file="/commons/common-css.jsp"%>

<!-- 客户管理模块--订单管理页面 -->

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
			</ul>
		</div>
	</div>

	<div class="row">
		<div class="col-sm-9">

			<section> <!-- 按钮触发模态框 -->
			<button class="btn btn-info btn-primary" style="margin-left: 5%;"
				data-toggle="modal" data-target="#newOrderBtn">新增订单</button>
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
						<input id="inputId" type="text" name="productName" placeholder="请输入商品名称"
							class="layui-input">
					</div>
				</div>

				<div class="layui-inline" style="margin-top: -5px; margin-left: 5%;">
					<button id="querryByUserId" type="button" class="layui-btn layui-btn-primary-search">查询</button>
				</div>
			</div>
		</form>
	</div>
	
<!-- 	<div class="layui-field-box" style="margin-top: 10px;"> -->
<!-- 		<form id="querryForm" class="layui-form" -->
<%-- 			action="${ctp }/order/querryOne"> --%>
<!-- 			<div class="layui-form-item"> -->
<!-- 				<div class="layui-inline"> -->
<!-- 					<label class="layui-form-label">查询条件</label> -->
<!-- 					<div class="layui-input-block"> -->
<!-- 						<input id="inputId" type="text" name="userId" placeholder="请输入用户id" -->
<!-- 							class="layui-input"> -->
<!-- 					</div> -->
<!-- 				</div> -->

<!-- 				<div class="layui-inline" style="margin-top: -5px; margin-left: 5%;"> -->
<!-- 					<button id="querryByUserId" type="button" class="layui-btn layui-btn-primary-search">查询</button> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</form> -->
<!-- 	</div> -->


	<!--table开始-->
	<div id="gundong">
		<table class="site-table table-hover" id="orderTable"
			style="width: 100%;">
			<thead>
				<!-- 目录列表 -->
				<tr>
					<th height="1" width="30"><input id="allCheckBox" type="checkbox">全选</th>
					<th>序号</th>
					<th>用户名称</th><!-- 后台js未改 -->
					<th>微信名称</th>
					<th>商品名称</th>
					<th>收货人名称</th>
					<th>收货人电话</th>
					<th>收货人地址</th>
					<th>操作</th>
				</tr>
			</thead>

			<!--内容容器-->
			<tbody>

			</tbody>

			<tfoot>
				<tr>
					<td colspan="6" align="center">
						<ul class="pagination">


						</ul>
					</td>
				</tr>
			</tfoot>
		</table>
	</div>
	</section> </section> 
	
	<!--编辑   弹出层开始--> 
	<!-- 查看信息模态框开始 -->
	<div class="modal fade" id="selectOrderDiv" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog ">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">用户个人信息</h4>
				</div>
				<div class="modal-body">
					<!-- 模态框主题内容开始 -->
					<table>
						<tr>
							<div class="layui-form-item2" id="updateOrderDiv">
								<div class="layui-inline">
									<label class="layui-form-label2"><a
										style="color: red;">*</a>订单序号:</label>
									<div class="layui-input-block">
										<input type="text" id="idKey" name="id" disabled="disabled"
											 class="layui-input">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label2"><a
										style="color: red;">*</a>用户id</label>
									<div class="layui-input-block">
										<input type="text" id="userIdKey" name="userId" disabled="disabled"
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
										<input type="text" name="productId" id="productIdKey" disabled="disabled"
											class="layui-input">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label2">商品名称</label>
									<div class="layui-input-block">
										<input type="text" name="productName" id="productNameKey" disabled="disabled"
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
										<input type="text" name="wechatName" id="wechatNameKey" disabled="disabled"
											class="layui-input">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label2">收货人名称</label>
									<div class="layui-input-block">
										<input type="text" name="consigneeName" id="consigneeNameKey" disabled="disabled"
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
										<input type="text" name="phone" id="phoneKey" disabled="disabled"
											class="layui-input">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label2"><a
										style="color: red;">*</a>收货地址</label>
									<div class="layui-input-block">
										<input type="text" name="consigneePath" id="consigneePathKey" disabled="disabled"
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
										<input type="text" name="area" id="areaKey" disabled="disabled"
											class="layui-input">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label2"><a
										style="color: red;">*</a>发放状态</label>
									<div class="layui-input-block">
										<input type="text" name="status" id="statusKey" disabled="disabled"
											class="layui-input">
									</div>
								</div>
								
							</div>
						</tr>
						<tr>
							<div class="layui-form-item2">
								<div class="layui-inline">
									<label class="layui-form-label2"><a
										style="color: red;">*</a>创建时间</label>
									<div class="layui-input-block">
										<input type="text" name=createDate id="TimeKey" disabled="disabled"
											class="layui-input">
									</div>
								</div>
							</div>
						</tr>
					</table>
					<!-- 模态框主题内容结束 -->
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
	<!-- 查看信息模态框结束 -->
	
	<!-- 新增订单开始 -->
	<div class="modal fade" id="newOrderBtn" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	    <div class="modal-dialog">
	        <div  class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                <h4 class="modal-title" id="myModalLabel">创建订单</h4>
	            </div>
	            <div class="modal-body">
				<!-- 内容开始 -->
					<form class="layui-form" action="" id="addOrderForm" style="width: 100%; margin: 10 auto;">
			<table>
				<tr>
					<div class="layui-form-item2" id="updateOrderDiv">
						<div class="layui-inline">
							<label class="layui-form-label2"><a
								style="color: red;">*</a>用户id</label>
							<div class="layui-input-block">
								<input type="text" name="userId" value="" class="layui-input">
							</div>
						</div>
						<div class="layui-inline">
							<label class="layui-form-label2"><a
								style="color: red;">*</a>商品id</label>
							<div class="layui-input-block">
								<input type="text" name="productId" value="" class="layui-input">
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
								<input type="text" name="phone" value="" class="layui-input">
							</div>
						</div>
						<div class="layui-inline">
							<label class="layui-form-label2"><a
								style="color: red;">*</a>商品名称</label>
							<div class="layui-input-block">
								<input type="text" name="productName" value="" class="layui-input">
							</div>
						</div>
					</div>
				</tr>
				<tr>
					<div class="layui-form-item2">
	
						<div class="layui-inline">
							<label class="layui-form-label2">微信昵称</label>
							<div class="layui-input-block">
								<input type="text" name="wechatName" value="" class="layui-input">
							</div>
						</div>
						<div class="layui-inline">
							<label class="layui-form-label2">收货人名称</label>
							<div class="layui-input-block">
								<input type="text" name="consigneeName" value="" class="layui-input">
							</div>
						</div>
					</div>
				</tr>
				<tr>
					<div class="layui-form-item2">
						<div class="layui-inline">
							<label class="layui-form-label2">收货地址</label>
							<div class="layui-input-block">
								<input type="text" name="consigneePath" value="" class="layui-input">
							</div>
						</div>
						<div class="layui-inline">
							<label class="layui-form-label2"><a
								style="color: red;">*</a>发放状态</label>
							<div class="layui-input-block">
								<input type="text" name="status" value="" class="layui-input">
							</div>
						</div>
					</div>
				</tr>
				<tr>
					<div class="layui-form-item2">
						<div class="layui-inline">
							<label class="layui-form-label2">所在区域</label>
							<div class="layui-input-block">
								<input type="text" name="area" value="" class="layui-input">
							</div>
						</div>
					</div>
				</tr>
			</table>
		</form>
				<!-- 内容结束 -->
			    </div>
	            <div class="modal-footer">
	                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
	                <button id="addOrderBtn" type="button" class="btn btn-primary">创建</button>
	            </div>
	        </div><!-- /.modal-content -->
	    </div><!-- /.modal -->
	</div>	
	<!-- 查看订单结束 -->
	
	<!-- 修改模态框（Modal） -->
	<div class="modal fade" id="updateOrderModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	    <div class="modal-dialog">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                <h4 class="modal-title" id="myModalLabel">修改订单窗口</h4>
	            </div>
	            <div class="modal-body">
				<!-- 内容开始 -->
					<form class="layui-form" action="" id="updateOrderForm" style="width: 100%; margin: 10 auto;">
						<table>
							<tr>
								<div class="layui-form-item2" id="updateOrderDiv">
									<div class="layui-inline">
										<label class="layui-form-label2"><a
											style="color: red;">*</a>用户id</label>
										<div class="layui-input-block">
											<input id="id1Key" type="hidden" name="id" value="">
											<input id="userId1Key" type="text" name="userId" value="" class="layui-input">
										</div>
									</div>
									<div class="layui-inline">
										<label class="layui-form-label2"><a
											style="color: red;">*</a>商品id</label>
										<div class="layui-input-block">
											<input id="productId1Key" type="text" name="productId" value="" class="layui-input">
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
											<input id="phone1Key" type="text" name="phone" value="" class="layui-input">
										</div>
									</div>
									<div class="layui-inline">
										<label class="layui-form-label2"><a
											style="color: red;">*</a>商品名称</label>
										<div class="layui-input-block">
											<input id="productName1Key" type="text" name="productName" value="" class="layui-input">
										</div>
									</div>
								</div>
							</tr>
							<tr>
								<div class="layui-form-item2">
				
									<div class="layui-inline">
										<label class="layui-form-label2">微信昵称</label>
										<div class="layui-input-block">
											<input id="wechatName1Key" type="text" name="wechatName" value="" class="layui-input">
										</div>
									</div>
									<div class="layui-inline">
										<label class="layui-form-label2">收货人名称</label>
										<div class="layui-input-block">
											<input id="consigneeName1Key" type="text" name="consigneeName" value="" class="layui-input">
										</div>
									</div>
								</div>
							</tr>
							<tr>
								<div class="layui-form-item2">
									<div class="layui-inline">
										<label class="layui-form-label2">收货地址</label>
										<div class="layui-input-block">
											<input id="consigneePath1Key" type="text" name="consigneePath" value="" class="layui-input">
										</div>
									</div>
									<div class="layui-inline">
										<label class="layui-form-label2"><a
											style="color: red;">*</a>发放状态</label>
										<div class="layui-input-block">
											<input id="status1Key" type="text" name="status" value="" class="layui-input">
										</div>
									</div>
								</div>
							</tr>
							<tr>
								<div class="layui-form-item2">
									<div class="layui-inline">
										<label class="layui-form-label2">所在区域</label>
										<div class="layui-input-block">
											<input id="area1Key" type="text" name="area" value="" class="layui-input">
										</div>
									</div>
								</div>
							</tr>
						</table>
					</form>
				<!-- 内容结束 -->
			    </div>
	            <div class="modal-footer">
	                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
	                <button id="subOrderBtn" type="button" class="btn btn-primary">提交更改</button>
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
		
		//页面加载完成后显示第一页数据
		$(function() {
			page.pn = 1;//第一页数据
			getOrders();
		});
		
		$('#gundong').niceScroll({
			cursorcolor : "#ccc",//#CC0071 光标颜色
			cursoropacitymax : 1, //改变不透明度非常光标处于活动状态（scrollabar“可见”状态），范围从1到0
			touchbehavior : false, //使光标拖动滚动像在台式电脑触摸设备
			cursorwidth : "5px", //像素光标的宽度
			cursorborder : "0", // 	游标边框css定义
			cursorborderradius : "5px",//以像素为光标边界半径
			autohidemode : false, //是否隐藏滚动条
		});
		
		
		//----------------------------------------------------------		

		//根据查询id查询订单详细信息 
		$("body").on("click","#querryOneOrderBtn",function(){
			param.id = $(this).attr("oid");

			$.ajax({
				url : "${ctp}/order/querryById",
				data : {
					id : param.id,
					pn : page.pn,
					ps : page.ps
				},
				dataType: 'json',
				success : function(data) {

					showReturnMsg(data);
					
				}
			});
			
			//显示模态框
			$("#selectOrderDiv").modal({
	   			backdrop : 'static',
	   			show : true
	   		});

		});

		function initPageObject(data) {
			page.pn = data.pageNum;
			page.ps = data.pageSize;
			page.lastPage = data.lastPage;
		}
		
		//删除一个订单
		$("body").on("click", ".deleteOrderBtn", function() {

			param.ids = $(this).attr("oid");
			layer.confirm("确认删除【" + param.ids + "】号员工吗？", {
				btn : [ '确定删除', '取消删除' ]
			}, function() {
				$.get("${ctp}/order/delete", param, function(data) {
					layer.msg(data.msg);
				});
// 				location.reload();

				//跳转当前页
				page.pn = page.pageNum;
				getOrders();
			}, function() {
				layer.msg("....");
			});

			return false;
		});


		//---------------------单机事件-切换跳转显示某一页的数据-----------------------
		//绑定单机事件
		$(".pagination").on("click", ".jumpli", function() {

			//查出某页的数据
			page.pn = $(this).attr("pn");
			getOrders();
		});

		//---------------------修改用户-----------------------------------
		//ajax方式获取所有用户的数据
		function getOrders() {
			$.ajax({
				url : "${ctp}/order/querry",
				data : {
					pn : page.pn,
					ps : page.ps
				},
				success : function(a, b, c) {

					//showOrders(a);
					showOrders(a);
				}
			});
		}

		//---------------------添加用户--------------------------------------------
		//保存添加用户按钮绑定单机事件
		$("#addOrderBtn").click(function() {
			//获取表单数据
			var data = $("#addOrderForm").serialize();


			artDialog.confirm("question", "提示", "确定是否添加订单？", function() {
				$.post("${ctp }/order/add", data, function(data) {
					//后台返回的内容显示提示
					layer.msg(data.msg);
					//关闭模态框
					$("#newOrderBtn").modal('hide');
					//后台清空模态框里面的内容
					$("#newOrderBtn input").val("");
					//来到最后一页；
					page.pn = page.lastPage + 10;
					getOrders();

					//失败返回的msg
				}).fail(function() {
					layer.msg(data.msg);
					//关闭模态框
					$("#newOrderBtn").modal('hide');
					//后台清空模态框里面的内容
					$("#newOrderBtn input").val("");
					//来到最后一页；
					page.pn = page.lastPage + 10;
					getOrders();
					
				});
			});
		});

		//-----------------显示所有用户------------------------------

		//显示所有用户
		function showOrders(data) {
			// 1.清空数据
			$("ul.pagination").empty();
			$("#orderTable tbody").empty();

			//2.显示表格
			buildTable(data);

			//3.显示分页条
			buildPage(data);
		}

		//表格显示
		function buildTable(data) {
			var userData = data.list;

			$.each(userData,function() {
				//创建tr
				var tr = $("<tr></tr>");
				//创建td
				var btnTd = $("<td></td>")
				//操作列
				btnTd.append('<button id="querryOneOrderBtn" oid = "'+ this.id+ '" type = "button"  class = "orderModelShowBtn btn btn-sm btn-success" title="查看订单" ><i class="fa fa-qrcode"></i></button>')
					 .append('&nbsp;<button oid = "'+ this.id+ '" type = "button" class = "updateOrderBtn btn btn-sm btn-info" title="修改订单" ><i class="fa fa-pencil"></i></button>')
					 .append('&nbsp;<button oid = "'+ this.id+ '" type = "button" class = "deleteOrderBtn btn btn-sm btn-danger" title="删除订单" id="removeUserBtn"><i class="fa fa-trash"></i></button>');

				tr.append("<td><input type='checkbox' orderId="+ this.id +" class='itemCheckBox'></td>")
				  .append("<td>" + this.id + "</td>")
				  .append("<td>" + this.userId + "</td>")
				  .append("<td>" + this.wechatName+ "</td>")
				  .append("<td>" + this.productName + "</td>")
				  .append("<td>" + this.consigneeName + "</td>")
				  .append("<td>" + this.phone + "</td>")
				  .append("<td>" + this.consigneePath + "</td>")
				  .append(btnTd).appendTo($("#orderTable tbody"));
			});
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
		//回显信息
		function showReturnMsg(data){
			
			var conData = data.list[0];
			//input值
			$("#id1Key").attr("value",conData.id);
			$("#userIdKey").attr("value",conData.userId);
			//回显操作
			document.getElementById("idKey").value = conData.id;
			document.getElementById("userIdKey").value = conData.userId;
			document.getElementById("productNameKey").value = conData.productName;
			document.getElementById("wechatNameKey").value = conData.wechatName;
			document.getElementById("consigneeNameKey").value = conData.consigneeName;
			document.getElementById("phoneKey").value = conData.phone;
			document.getElementById("consigneePathKey").value = conData.consigneePath;
			document.getElementById("areaKey").value = conData.area;
			document.getElementById("statusKey").value = conData.status;
			document.getElementById("TimeKey").value = conData.createDate;
			document.getElementById("productIdKey").value = conData.productId;
			
			document.getElementById("userId1Key").value = conData.userId;
			document.getElementById("productName1Key").value = conData.productName;
			document.getElementById("wechatName1Key").value = conData.wechatName;
			document.getElementById("consigneeName1Key").value = conData.consigneeName;
			document.getElementById("phone1Key").value = conData.phone;
			document.getElementById("consigneePath1Key").value = conData.consigneePath;
			document.getElementById("area1Key").value = conData.area;
			document.getElementById("status1Key").value = conData.status;
// 			document.getElementById("createDate1Key").value = conData.createDate;
			document.getElementById("productId1Key").value = conData.productId;
		}
		
		
		
	//-----------------------------------------------
		//根据用户id查询订单
		$("#querryByUserId").click(function() {
			
			//获取表单数据
			var params = $("#querryForm").serialize();
			var dataVal = document.getElementById("inputId").value;
			page.pn = 1;//第一页数据
			
			if (dataVal) {
				getOrderOne(params);
			}else{
				getOrders();
			}
			
		});
		
	function getOrderOne(data){
		
		$.post("${ctp}/order/querryByLike",data,function(data){
			console.log(data);
			showOrders(data);
		});
		
	}
	
	//---------------------------------------------------------------
	$("body").on("click", ".updateOrderBtn", function() {
		
		param.id = $(this).attr("oid");
		$.ajax({
			url : "${ctp}/order/querryById",
			data : {
				id : param.id,
				pn : page.pn,
				ps : page.ps
			},
			dataType: 'json',
			success : function(data) {

				showReturnMsg(data);
				
			}
		});
		
		//显示模态框
		$("#updateOrderModal").modal({
   			backdrop : 'static',
   			show : true
   		});
		
	});
	
	$("#subOrderBtn").click(function(){
		
		var params = $("#updateOrderForm").serialize();
		
		artDialog.confirm("question", "提示", "确定是否修改信息？", function() {
			$.post("${ctp }/order/update", params, function(data) {
				//后台返回的内容显示提示
				layer.msg(data.msg);
				//关闭模态框
				$("#updateOrderModal").modal('hide');
				//后台清空模态框里面的内容
				$("#updateOrderModal input").val("");
				
				//来到当前页；
				page.pn = pageNum;
				getOrders();

				//失败返回的msg
			}).fail(function() {
				layer.msg(data.msg);
				//关闭模态框
				$("#updateOrderModal").modal('hide');
				//后台清空模态框里面的内容
				$("#updateOrderModal input").val("");
				//来到当前页；
				page.pn = pageNum;
				getOrders();
			});
		});
		
	});
	
	
	</script>
</body>

</html>
