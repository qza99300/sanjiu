<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="favicon.ico">
<title>地址管理页面</title>

<!-- css样式抽取 -->
<!-- 公共的css样式 -->
<%@include file="/commons/common-css.jsp"%>

<!-- 客户管理模块--地址管理页面 -->

</head>

<body style="overflow-x: hidden;">

	<section id="container"> <!--内容部分开始--> <section
		id="main-content"> <section class="wrapper">

	<div class="row">
		<div class="col-lg-12">
			<ul class="breadcrumb">
				<li><a href="#"><i class="fa fa-home"></i>首页</a></li>
				<li>»</li>
				<li><a href="#">客户管理</a></li>
				<li>»</li>
				<li class="active">地址管理</li>
			</ul>
		</div>
	</div>

	<div class="row">
		<div class="col-sm-9">
			<section>
				<button class="btn btn-info btn-primary" style="margin-left: 5%;"
					data-toggle="modal" data-target="#newConsigneeBtn">新增地址</button>
				</button>
			</section>
		</div>
	</div>

	<!--筛选开始-->
	<div class="layui-field-box" style="margin-top: 10px;">
		<form id="Consignee-form" class="layui-form" action="">
			<div class="layui-form-item">
				<div class="layui-inline">
					<label class="layui-form-label">查询条件</label>
					<div class="layui-input-block">
						<input id="inputId" type="text" name="consigneeName" placeholder="请输入兑换人名称" class="layui-input">
					</div>
				</div>

				<div class="layui-inline" style="margin-top: -5px; margin-left: 5%;">
					<button id="querryOneBtn" type="button" class="layui-btn layui-btn-primary-search">查询</button>
				</div>

			</div>
		</form>
	</div>


	<!--table开始-->
	<div id="gundong">
		<table id="consigneeTable" class="site-table table-hover" style="width: 100%;">
			<thead>
				<tr>
					<th width="30"><input type="checkbox" id="allCheckBox">全选</th>
					<th>序号</th>
					<th>用户名称</th><!-- js未改 -->
					<th>收货人电话</th><!-- js未改 -->
					<th>收货人名称</th>
					<th>收货地址</th>
					<th>操作</th>
				</tr>
			</thead>
			<!--内容容器-->
			<tbody >
				
			</tbody>

			<!-- 分页部分 -->
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
	<!-- 新增地址开始 -->
	<div class="modal fade" id="newConsigneeBtn" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	    <div class="modal-dialog">
	        <div  class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                <h4 class="modal-title" id="myModalLabel">创建地址</h4>
	            </div>
	  <div class="modal-body">
	  <!-- 内容开始 -->
		<form class="layui-form" action=""
			id="addConsigneeForm" style="width: 100%; margin: 10 auto;">
			<table>
				<tr>
					<div class="layui-form-item2" id="updateOrderDiv">
						<div class="layui-inline">
							<label class="layui-form-label2"><a
								style="color: red;">*</a>用户id</label>
							<div class="layui-input-block">
								<input type="text" name="userId"  class="layui-input">
							</div>
						</div>
						<div class="layui-inline">
							<label class="layui-form-label2"><a
								style="color: red;">*</a>收货人名称</label>
							<div class="layui-input-block">
								<input  type="text" name="consigneeName"  class="layui-input">
							</div>
						</div>
					</div>
				</tr>
				<tr>
					<div class="layui-form-item2">
						<div class="layui-inline">
							<label class="layui-form-label2"><a
								style="color: red;">*</a>收货人地址</label>
							<div class="layui-input-block">
								<input type="text" name="consigneePath"  class="layui-input">
							</div>
						</div>
						<div class="layui-inline">
							<label class="layui-form-label2">所在区域</label>
							<div class="layui-input-block">
								<input type="text" name="area"  class="layui-input">
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
	                <button id="addConsigneeBtn" type="button" class="btn btn-primary">创建</button>
	            </div>
	        </div><!-- /.modal-content -->
	    </div><!-- /.modal -->
	</div>	
	<!-- 新增地址结束 -->
	<!-- 修改地址开始 -->
	<div class="modal fade" id="updateConsigneeBtn" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	    <div class="modal-dialog">
	        <div  class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                <h4 class="modal-title" id="myModalLabel">修改信息窗口</h4>
	            </div>
	  <div class="modal-body">
	  <!-- 内容开始 -->
		<form class="layui-form" action=""
			id="updateConsigneeForm" style="width: 100%; margin: 10 auto;">
			<table>
				<tr>
					<div class="layui-form-item2" id="updateOrderDiv">
						<div class="layui-inline">
							<label class="layui-form-label2"><a
								style="color: red;">*</a>用户id</label>
							<div class="layui-input-block">
								<input id="conIdKey" type="hidden" name="consigneeId" value="" >
								<input id="userIdKey" type="hidden" name="userId" value=""  class="layui-input">
								<input id="user1IdKey" type="text" name="userId" disabled="disabled"  class="layui-input">
							</div>
						</div>
						<div class="layui-inline">
							<label class="layui-form-label2"><a
								style="color: red;">*</a>收货人名称</label>
							<div class="layui-input-block">
								<input id="nameIdKey" type="text" name="consigneeName"  class="layui-input">
							</div>
						</div>
					</div>
				</tr>
				<tr>
					<div class="layui-form-item2">
						<div class="layui-inline">
							<label class="layui-form-label2"><a
								style="color: red;">*</a>收货人地址</label>
							<div class="layui-input-block">
								<input id="pathIdKey" type="text" name="consigneePath"  class="layui-input">
							</div>
						</div>
						<div class="layui-inline">
							<label class="layui-form-label2">所在区域</label>
							<div class="layui-input-block">
								<input id="areaIdKey" type="text" name="area"  class="layui-input">
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
	                <button id="updateConBtn" type="button" class="btn btn-primary">修改</button>
	            </div>
	        </div><!-- /.modal-content -->
	    </div><!-- /.modal -->
	</div>	
	<!-- 修改地址结束 -->
	
	<!-- 查看一个地址信息开始 -->
	<!-- 模态框（Modal） -->
	<div class="modal fade" id="selectConsigneeDiv" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	    <div class="modal-dialog modal-lg">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                <h4 class="modal-title" id="myModalLabel">收货人地址信息明细</h4>
	            </div>
	            <div class="modal-body" align="center">
			<!-- 内容开始 -->
				<table >
						<tr>
							<div class="layui-form-item2" id="updateOrderDiv">
								<div class="layui-inline">
									<label class="layui-form-label2"><a
										style="color: red;">*</a>序号id</label>
									<div class="layui-input-block">
										<input id="selIdKey" type="text" name="consigneeId" disabled="disabled"
											value="" class="layui-input">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label2"><a
										style="color: red;">*</a>用户id</label>
									<div class="layui-input-block">
										<input id="selUserIdKey" type="text" name="userId"
											value="" disabled="disabled"
											class="layui-input">
									</div>
								</div>
			
							</div>
						</tr>
						<tr>
							<div class="layui-form-item2">
								<div class="layui-inline">
									<label class="layui-form-label2">收件人名称</label>
									<div class="layui-input-block">
										<input id="selNameKey" type="text" name="consigneeName"
											value="" disabled="disabled"
											class="layui-input">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label2">收件地址</label>
									<div class="layui-input-block">
										<input id="selPathKey" type="text" name="consigneePath"
											value="" disabled="disabled"
											class="layui-input">
									</div>
								</div>
							</div>
						</tr>
						<tr>
							<div class="layui-form-item2" >
			
								<div class="layui-inline">
									<label class="layui-form-label2">所属区域</label>
									<div class="layui-input-block">
										<input id="selAreaKey" type="text" name="area"
											value="" disabled="disabled"
											class="layui-input">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label2">创建时间</label>
									<div class="layui-input-block">
										<input id="selTimeKey"  type="text" disabled="disabled" name="createDate"
											value=""
											class="layui-input">
									</div>
								</div>
							</div>
						</tr>
					</table>
			<!-- 内容结束 -->
		    </div>
	            <div class="modal-footer">
	                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
	            </div>
	        </div><!-- /.modal-content -->
	    </div><!-- /.modal -->
	</div>
	
	<!-- 修改模态框 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	    <div class="modal-dialog">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                <h4 class="modal-title" id="myModalLabel">模态框（Modal）标题</h4>
	            </div>
	            <div class="modal-body">
			<!-- 内容开始 -->
			<!-- 内容结束 -->
		    </div>
	            <div class="modal-footer">
	                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
	                <button type="button" class="btn btn-primary">提交更改</button>
	            </div>
	        </div><!-- /.modal-content -->
	    </div><!-- /.modal -->
	</div>
	
	
	<!-- 查看一个地址信息结束 -->
	
	
	
	
<!-- 公共的js样式 -->
<%@include file="/commons/common-js.jsp"%>

	<script type="text/javascript">
	
		var param = {};
		
		var page = {
			pn : 1,
			ps : 5,
			lastPage : 10
		};
		
		$(function() {
			page.pn = 1;
			getConsignees();
		});

		function getConsignees() {
			$.ajax({
				url : "${ctp}/consignee/querry",
				data : {
					pn : page.pn,
					ps : page.ps
				},
				success : function(a) {
					showconsignees(a);
				}
			});
		}
		
		function showconsignees(data) {
			// 1.清空数据
			$("ul.pagination").empty();
			$("#consigneeTable tbody").empty();

			//2.显示表格
			buildTable(data);

			//3.显示分页条
			buildPage(data);
		}

		function buildTable(data) {
			var consigneeData = data.list;
			$.each(consigneeData, function() {
				//创建tr
				var tr = $("<tr></tr>");
				//创建td
	
				var btnTd = $("<td></td>")
				//操作列
	
				btnTd.append('<button consigneeId = "' + this.consigneeId + '" type = "button" class = "consigneeModelShowBtn btn btn-sm btn-success" title="查看信息" ><i class="fa fa-qrcode"></i></button>')
					 .append('&nbsp;<button consigneeId = "' + this.consigneeId + '" type = "button" class = "updateConsigneeModelBtn btn btn-sm btn-info" title="修改地址" ><i class="fa fa-pencil"></i></button>')
					 .append('&nbsp;<button consigneeId = "' + this.consigneeId + '" type = "button" class = "deleteConsigneeBtn btn btn-sm btn-danger" title="删除地址" id="removeUserBtn"><i class="fa fa-trash"></i></button>');
	
				tr.append("<td><input type='checkbox' consigneeId="+ this.consigneeId +" class='itemCheckBox'></td>")
				  .append("<td>" + this.consigneeId + "</td>")
				  .append("<td>" + this.userId + "</td>")
				  .append("<td>" + this.phone + "</td>")
				  .append("<td>" + this.consigneeName + "</td>")
				  .append("<td>" + this.consigneePath)
				  .append(btnTd).appendTo($("#consigneeTable"));
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
			var lastPage = $('<li class="jumpli" pn="'+data.pages+'"><a href="#">末页</a></li>');

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
		$(".pagination").on("click", ".jumpli", function() {

			//查出某页的数据
			page.pn = $(this).attr("pn");
			getConsignees();
		});


		//---------------------------------------------------------------------------------------------
		$('#gundong').niceScroll({
			cursorcolor : "#ccc",//#CC0071 光标颜色
			cursoropacitymax : 1, //改变不透明度非常光标处于活动状态（scrollabar“可见”状态），范围从1到0
			touchbehavior : false, //使光标拖动滚动像在台式电脑触摸设备
			cursorwidth : "5px", //像素光标的宽度
			cursorborder : "0", // 	游标边框css定义
			cursorborderradius : "5px",//以像素为光标边界半径
			autohidemode : false, //是否隐藏滚动条
		});
		//---------------------------------------------------------------------------------------------
		
		//----------------------------------新增地址----------------------------------------
		$("#addConsigneeBtn").click(function() {
			//获取表单数据
			var data = $("#addConsigneeForm").serialize();

			artDialog.confirm("question", "提示", "确定是否添加地址？", function(){
				$.post("${ctp }/consignee/add", data, function(data) {
					//后台返回的内容显示提示
					layer.msg(data.msg);
					//关闭模态框
					$("#newConsigneeBtn").modal('hide');
					//后台清空模态框里面的内容
					$("#newConsigneeBtn input").val("");
					//来到最后一页；
					page.pn = page.lastPage + 10;
					getConsignees();

					//失败返回的msg
				}).fail(function() {
					layer.msg(data.msg);
					//关闭模态框
					$("#newConsigneeBtn").modal('hide');
					//后台清空模态框里面的内容
					$("#newConsigneeBtn input").val("");
					//来到最后一页；
					page.pn = page.lastPage + 10;
					getConsignees();
					
				});
			});
		});
		
		//----------------------------------删除地址----------------------------------------
		//删除一个
		$("body").on("click", ".deleteConsigneeBtn", function() {

			param.consigneeIds = $(this).attr("consigneeId");
			layer.confirm("确认删除【" + param.consigneeIds + "】号地址吗？", {
				btn : [ '确定删除', '取消删除' ]
			}, function() {
				$.get("${ctp}/consignee/delete", param, function(data) {
					layer.msg(data.msg);
				});
				location.reload();

				//跳转当前页
				page.pn = page.pageNum;
				getConsignees();
			}, function() {
				layer.msg("....");
			});

			return false;
		});
		
		//----------------------------------查询一个用户所有地址----------------------------------------
		//根据id查询
		$("#querryOneBtn").click(function(){
			
			//获取表单数据
			var data = $("#Consignee-form").serialize();
// 			alert(data);
			var dataVal = document.getElementById("inputId").value;
			
			page.pn = 1;//第一页数据
			
			if (dataVal) {
				getConsigneeOne(data);
			}else{
				getConsignees();
			}
		});
		
		function getConsigneeOne(data){

			$.post("${ctp}/consignee/querryByLike",data,function(data){
				showconsignees(data);
			});
		}
		
		//----------------------------------查询一个地址----------------------------------------
// 		查看个人信息
		$("body").on("click",".consigneeModelShowBtn", function(){
			
			param.consigneeId = $(this).attr("consigneeId");
			
			$.ajax({
				url : "${ctp}/consignee/querry",
				data : {
					consigneeId : param.consigneeId
				},
				dataType: 'json',
				success : function(data) {
					
					showReturnMsg(data);
					
				}
			});
			
			//显示模态框
			$("#selectConsigneeDiv").modal({
	   			backdrop : 'static',
	   			show : true
	   		});
			
		});
		
		//——————————————————————————————————————————————————————————
		//修改模态框的操作 完成
		$("body").on("click",".updateConsigneeModelBtn", function(){
			
			param.consigneeId = $(this).attr("consigneeId");

			$.ajax({
				url : "${ctp}/consignee/querry",
				data : {
					consigneeId : param.consigneeId
				},
				dataType: 'json',
				success : function(data) {
					
					showReturnMsg(data);
					
				}
			});

			//显示模态框
			$("#updateConsigneeBtn").modal({
	   			backdrop : 'static',
	   			show : true
	   		});
		});
		
		//回显信息
		function showReturnMsg(data){
			
			var conData = data.list[0];
			//input值
			$("#conIdKey").attr("value",conData.consigneeId);
			$("#userIdKey").attr("value",conData.userId);
			//回显操作
			document.getElementById("selIdKey").value = conData.consigneeId;
			document.getElementById("user1IdKey").value = conData.userId;
			document.getElementById("selUserIdKey").value = conData.userId;
			document.getElementById("nameIdKey").value = conData.consigneeName;
			document.getElementById("selNameKey").value = conData.consigneeName;
			document.getElementById("pathIdKey").value = conData.consigneePath;
			document.getElementById("selPathKey").value = conData.consigneePath;
			document.getElementById("areaIdKey").value = conData.area;
			document.getElementById("selAreaKey").value = conData.area;
			document.getElementById("selTimeKey").value = timeFormat(conData.createDate);
			
		}
		
		//提交表单信息
		$("#updateConBtn").click(function(){
			//获取表单信息
			var data = $("#updateConsigneeForm").serialize();

			artDialog.confirm("question", "提示", "确定是否修改地址？", function(){
				$.post("${ctp }/consignee/update", data, function(data) {
					//后台返回的内容显示提示
					layer.msg(data.msg);
					//关闭模态框
					$("#updateConsigneeBtn").modal('hide');
					//后台清空模态框里面的内容
					$("#updateConsigneeBtn input").val("");
					//跳转当前页
					page.pn = page.pageNum;
					getConsignees();
					//失败返回的msg
				}).fail(function() {
					layer.msg(data.msg);
					//关闭模态框
					$("#updateConsigneeBtn").modal('hide');
					//后台清空模态框里面的内容
					$("#updateConsigneeBtn input").val("");
					//跳转当前页
					page.pn = page.pageNum;
					getConsignees();
				});
			});
			
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
			// var mseconds = datetime.getMilliseconds();
			//		 	      return year + "-" + month + "-" + date+" "+hour+":"+minute+":"+second;//+"."+mseconds;
			return year + "-" + month + "-" + date;//+"."+mseconds;
		};
	</script>
</body>

</html>

