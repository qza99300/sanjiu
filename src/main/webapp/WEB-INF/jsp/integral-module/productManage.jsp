<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="favicon.ico">
<title>物品管理</title>

<!-- css样式抽取 -->
<!-- 公共的css样式 -->
<%@include file="/commons/common-css.jsp"%>

<!--积分中心--物品管理页面  -->

<!--选择区域css-->
<style type="text/css">
.info select {
	height: 38px;
	line-height: 38px;
	line-height: 36px\9;
	border: 1px solid #e6e6e6;
	background-color: #fff;
	border-radius: 2px;
}

.info {
	margin: 20px;
	text-align: left;
	margin-left: 0px;
}

.info #show {
	color: #3399FF;
}

.bottom {
	text-align: right;
	font-size: 12px;
	color: #CCCCCC;
	width: 1000px;
}
</style>
<style>
select {
	padding: 7px 8px;
	border: 1px solid #e6e6e6;
	border-radius: 2px;
}

.outer {
	width: 500px;
	margin: 2px auto;
}
</style>

</head>

<body>

	<section id="container"> <!--内容部分开始--> <section
		id="main-content"> <section class="wrapper">

	<div class="row">
		<div class="col-lg-12">
			<ul class="breadcrumb">
				<li><a href="#"><i class="fa fa-home"></i>首页</a></li>
				<li>»</li>
				<li><a href="#">会员中心</a></li>
				<li>»</li>
				<li class="active">物品管理</li>
			</ul>
		</div>
	</div>

	<div class="row">
		<div class="col-sm-9">
			<section>
			<button type="button" class="btn btn-info btn-primary"
				style="margin-left: 5%;" data-toggle="modal" data-target="#newActivityBtn">
				<i class="fa fa-edit"> </i> 新增物品
			</button>
			<button type="button" class="btn  btn-info" style="margin-left: 5%;">
				<i class="fa fa-level-up"> </i> 导出
			</button>
			<button type="button" class="btn btn-info btn-primary"
				style="margin-left: 5%;">
				<i class="fa fa-level-down"> </i> 导入
			</button>
			</section>
		</div>
	</div>

	<!--筛选开始-->
	<div class="layui-field-box" style="margin-top: 10px;">
		<form class="layui-form" id="activity-form" action="">
			<div class="layui-form-item">
				<div class="layui-inline">
					<label class="layui-form-label">物品id</label>
					<div class="layui-input-block">
						<input type="text" placeholder="请输入物品id" name="productId" id="inputId" class="layui-input">
					</div>
				</div>

				<div class="layui-inline" style="margin-top: -5px; margin-left: 5%;">
					<button id="querryOneBtn" type="button" class="layui-btn layui-btn-primary-search">查询</button>
				</div>
			</div>
		</form>
	</div>


	<!--table开始-->
	<table class="site-table table-hover" id="activityTable">
		<thead>
			<tr>
				<th>序号</th>
				<th>商品图片</th>
				<th>商品名称</th>
				<th>兑换积分</th>
				<th>剩余数量</th>
				<th>创建日期</th>
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
	</section> </section> </section>

	<!--编辑   弹出层开始--> 
	<!-- 新增模态框（Modal） -->
	<div class="modal fade" id="newActivityBtn" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	    <div class="modal-dialog">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                <h4 class="modal-title" id="myModalLabel">新增物品管理窗口</h4>
	            </div>
	            <div class="modal-body">
				<!-- 内容开始 -->
					<form class="layui-form" action="${ctp }/consignee/add"
					id="addConsigneeForm" style="width: 100%; margin: 10 auto;">
					<div class="layui-form-item2">
							<div class="layui-inline">
								<label class="layui-form-label2"><a style="color: red;">*</a>商品名称</label>
								<div class="layui-input-block">
									<input type="text" id="" name="productName" class="layui-input">
								</div>
							</div>
						</div>
						
						<div class="layui-form-item2">
							<label class="layui-form-label2"><a style="color: red;">*</a>产品图片</label>
							<div class="layui-input-block">
								<div class="company-logo">
									<div class="logo-top">
										<span>上传产品图片</span>
										<span style="cursor: pointer;color: red;">建议尺寸：68*68像素 图片大小300k以内 支持JPG PNG</span>
									</div>
									<div class="logo-cen">
										<img src="images/step-img.png">
									</div>
									<div class="logo-btm">
<!-- 										class="layui-btn layui-btn-normal" -->
<!-- 										class="layui-btn layui-btn-grayness" -->
<!-- 										<button  style="margin-top: 8px;margin-left: 2%;">确认</button> -->
<!-- 										<button  style="margin-top: 8px;">取消</button> -->
									</div>
								</div>
							</div>
						</div>
						
						<div class="layui-form-item2" style="margin-top: 10px;">
							<div class="layui-inline">
								<label class="layui-form-label2"><a style="color: red;">*</a>兑换积分</label>
								<div class="layui-input-block">
									<input type="text" id="" name="productIntegral" class="layui-input">
								</div>
							</div>
						</div>
						
						<div class="layui-form-item2">
							<div class="layui-inline">
								<label class="layui-form-label2"><a style="color: red;">*</a>物品数量</label>
								<div class="layui-input-block">
									<input type="text" id="" name="productCount"  class="layui-input">
								</div>
							</div>
						</div>
						
						<div class="layui-form-item2">
							<div class="layui-form-item">
								<label class="layui-form-label2"><a style="color: red;">*</a>商品介绍</label>
								<div class="layui-input-block">
									<input type="text" id="" name="productPresentation" placeholder="请输入商品介绍" class="layui-input" style="width: 96%;">
								</div>
							</div>
						</div>
				</form>
				<!-- 内容结束 -->
		    </div>
	            <div class="modal-footer">
	                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
	                <button type="button" id="addActivityBtn" class="btn btn-primary">提交更改</button>
	            </div>
	        </div><!-- /.modal-content -->
	    </div><!-- /.modal -->
	</div>
	
	<!-- 修改模态框 -->
	<div class="modal fade" id="updateModelDiv" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	    <div class="modal-dialog">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                <h4 class="modal-title" id="myModalLabel">修改商品信息</h4>
	            </div>
	            <div class="modal-body">
				<!-- 内容开始 -->
				<form  class="layui-form" action=""
						id="UpdateModelForm" style="width: 100%; margin: 10 auto;">
						<input type="hidden" name="productId" id="productId">
					<div class="layui-form-item2">
							<div class="layui-inline">
								<label class="layui-form-label2"><a style="color: red;">*</a>商品名称</label>
								<div class="layui-input-block">
									<input type="text" id="productName" name="productName" class="layui-input">
								</div>
							</div>
						</div>
						
						<div class="layui-form-item2">
							<label class="layui-form-label2"><a style="color: red;">*</a>产品图片</label>
							<div class="layui-input-block">
								<div class="company-logo">
									<div class="logo-top">
										<span>上传产品图片</span>
										<span style="cursor: pointer;color: red;">建议尺寸：68*68像素 图片大小300k以内 支持JPG PNG</span>
									</div>
									<div class="logo-cen">
										<img src="images/goods.jpg">
									</div>
									<div class="logo-btm">
										<button class="layui-btn layui-btn-normal" style="margin-top: 8px;margin-left: 2%;">确认</button>
										<button class="layui-btn layui-btn-grayness" style="margin-top: 8px;">取消</button>
									</div>
								</div>
							</div>
						</div>
						
						<div class="layui-form-item2" style="margin-top: 10px;">
							<div class="layui-inline">
								<label class="layui-form-label2"><a style="color: red;">*</a>兑换积分</label>
								<div class="layui-input-block">
									<input type="text" id="productIntegral" name="productIntegral" class="layui-input">
								</div>
							</div>
						</div>
						
						<div class="layui-form-item2">
							<div class="layui-inline">
								<label class="layui-form-label2"><a style="color: red;">*</a>物品数量</label>
								<div class="layui-input-block">
									<input type="text" id="productCount"  name="productCount" class="layui-input">
								</div>
							</div>
						</div>
						
							<div class="layui-form-item2">
							<div class="layui-form-item">
								<label class="layui-form-label2"><a style="color: red;">*</a>商品介绍</label>
								<div class="layui-input-block">
									<input type="text" id="productPresentation" name="productPresentation" placeholder="请输入商品介绍" class="layui-input" style="width: 96%;">
								</div>
							</div>
						</div>
				</form>
				<!-- 内容结束 -->
		    </div>
	            <div class="modal-footer">
	                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
	                <button type="button" id="updateModelBtn" class="btn btn-primary">提交更改</button>
	            </div>
	        </div><!-- /.modal-content -->
	    </div><!-- /.modal -->
	</div>



		<!-- —————————————————————————————————————js开始——————————————————————————————————————————— --> 
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
			getActivitys();
		});

		function getActivitys() {
			$.ajax({
				url : "${ctp}/product/querry",
				data : {
					pn : page.pn,
					ps : page.ps
				},
				success : function(a) {
					showActivitys(a);
				}
			});
		}
		function showActivitys(data) {
			//alert(data.size);
			// 1.清空数据
			$("ul.pagination").empty();
			$("#activityTable tbody").empty();

			//2.显示表格
			buildTable(data);

			//3.显示分页条
			buildPage(data);
		}

		function buildTable(data) {
			var activityData = data.list;
			//alert(activityData);
			$.each(activityData,function() {
				//创建tr
				var tr = $("<tr></tr>");
				//创建td

				var btnTd = $("<td></td>")
				//操作列

				btnTd.append('&nbsp;<button productId = "' + this.productId + '" type = "button" onclick="show('+this.productId+')" data-toggle="modal" data-target="#updateModelDiv" class = "updateModelBtn btn btn-sm btn-info" title="修改活动" ><i class="fa fa-pencil"></i></button>')
					 .append('&nbsp;<button productId = "' + this.productId + '" type = "button" class = "deleteActivityBtn btn btn-sm btn-danger" title="删除活动" id="removeUserBtn"><i class="fa fa-trash"></i></button>');

				tr
				  .append("<td>" + this.productId + "</td>")
				  .append("<td>" +  + "</td>")
				  .append("<td>" + this.productName + "</td>")
				  .append("<td>" + this.productIntegral + "</td>")
				  .append("<td>" + this.productCount + "</td>")
				  .append("<td>" + this.createDate + "</td>")
				  .append(btnTd)
				  .appendTo($("#activityTable"));
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
			getActivitys();
		});
	
		//------------------------------------------------------------------------------------------------
		$('#gundong').niceScroll({
			cursorcolor : "#ccc",//#CC0071 光标颜色
			cursoropacitymax : 1, //改变不透明度非常光标处于活动状态（scrollabar“可见”状态），范围从1到0
			touchbehavior : false, //使光标拖动滚动像在台式电脑触摸设备
			cursorwidth : "5px", //像素光标的宽度
			cursorborder : "0", // 	游标边框css定义
			cursorborderradius : "5px",//以像素为光标边界半径
			autohidemode : false, //是否隐藏滚动条
		});
		
		//----------------------------------删除--------------------------------------------------------------
		$("body").on("click", ".deleteActivityBtn", function() {

			param.productId = $(this).attr("productId");

			layer.confirm("确认删除【" + param.productId + "】号员工吗？", {
				btn : [ '确定删除', '取消删除' ]
			}, function() {
				$.get("${ctp}/product/delete", param, function(data) {
					
					layer.msg(data.msg);
					//跳转当前页
					page.pn = page.pageNum;
					getActivitys();
				});
				
				//location.reload();

				
				
			}, function() {
				layer.msg("....");
			});

			return false;
		});
		
		//----------------------------------添加--------------------------------------------------------------
		$("#addActivityBtn").click(function() {
			//获取表单数据
			var params = $("#addConsigneeForm").serialize();

			artDialog.confirm("question", "提示", "确定是否添加物品？", function(){
				$.post("${ctp }/product/add", params, function(data) {
					//后台返回的内容显示提示
					//alert(data.msg);
					layer.msg(data.msg);
					//关闭模态框
					$("#newActivityBtn").modal('hide');
					//后台清空模态框里面的内容
					$("#newActivityBtn input").val("");
					//来到最后一页；
					page.pn = page.lastPage + 10;
					getActivitys();

					//失败返回的msg
				}).fail(function() {
					layer.msg(data.msg);
					//关闭模态框
					$("#newActivityBtn").modal('hide');
					//后台清空模态框里面的内容
					$("#newActivityBtn input").val("");
					//来到最后一页；
					page.pn = page.lastPage + 10;
					getActivitys();
					
				});
			});
		});
		//----------------------------------查询一个--------------------------------------------------------------
		$("#querryOneBtn").click(function(){
			var params = $("#activity-form").serialize();
			
			var dataVal = document.getElementById("inputId").value;
			
			page.pn = 1;//第一页数据
			
			if (dataVal) {
				getActivityOne(params);
			}else{
				getActivitys();
			}
			
		});
		
		function getActivityOne(data){
 			alert(data);
			$.post("${ctp}/product/querry",data,function(data){
				showActivitys(data);
			});
			
		}
		
		//点击修改显示信息
		function show(i) {
			$.ajax({
	            url: "${ctp }/product/displayActivity",
	            type: "post",
	            datatype: "json",
	            data: { "productId": i},
	            success: function (data) {
	            	alert(data.productId);
	            	$("#productId").val(data.productId);
	            	$("#productName").val(data.productName);
	            	$("#productIntegral").val(data.productIntegral);
	            	$("#productCount").val(data.productCount);
	            	$("#productPresentation").val(data.productPresentation);
	            }
	        })
		}
		
		
		//----------------------------------修改,做到回显--------------------------------------------------------------
		
		$("body").on("click", "#updateModelBtn", function() {
			//获取表单数据
			var params = $("#UpdateModelForm").serialize();
			
			artDialog.confirm("question", "提示", "确定是否修改？", function() {
				$.post("${ctp }/product/update", params, function(data) {
					//后台返回的内容显示提示
					alert(data.msg);
					layer.msg(data.msg);
					//关闭模态框
					$("#updateModelDiv").modal('hide');
					//后台清空模态框里面的内容
					$("#updateModelDiv input").val("");
					//来到最后一页；
					page.pn = page.lastPage + 10;
					getActivitys();

					//失败返回的msg
				}).fail(function() {
					layer.msg(data.msg);
					//关闭模态框
					$("#updateModelDiv").modal('hide');
					//后台清空模态框里面的内容
					$("#updateModelDiv input").val("");
					//来到最后一页；
					page.pn = page.lastPage + 10;
					getActivitys();
				});
			});
			
			
		});

		
		
		
		
		
		
	</script>
	<!-- —————————————————————————————————————js结束——————————————————————————————————————————— --> 
</body>

</html>