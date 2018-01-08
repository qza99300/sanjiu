<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="favicon.ico">
<title>学院简介页面</title>

<!-- css样式抽取 -->
<!-- 公共的css样式 -->
<%@include file="/commons/common-css.jsp"%>

<!-- 项目管理模块--学院简介页面 -->



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
				<li><a href="#">项目管理</a></li>
				<li>»</li>
				<li class="active">学院简介</li>
			</ul>
		</div>
	</div>

	<div class="row">
		<div class="col-sm-9">
			<section>
			<button type="button" data-toggle="modal" data-target="#addIntroBtn" class="btn btn-info btn-primary"
				style="margin-left: 5%;">
				<i class="fa fa-edit"> </i> 新增简介
			</button>
			</section>
		</div>
	</div>

	<!--筛选开始-->
	<div class="layui-field-box" style="margin-top: 10px;">
		<form id="introForm" class="layui-form" action="">
			<div class="layui-form-item">
				<div class="layui-inline">
					<label class="layui-form-label">查询条件</label>
					<div class="layui-input-block">
						<input id="inputId" name="collegeId" type="text" placeholder="请输入简介id号" class="layui-input">
					</div>
				</div>

				<div class="layui-inline" style="margin-top: -5px; margin-left: 5%;">
					<button id="querryBtn" type="button" class="layui-btn layui-btn-primary-search">查询</button>
				</div>


			</div>
		</form>
	</div>


	<!--table开始-->
	<table id="collegeTable" class="site-table table-hover" style="width: 100%;">
		<thead>
			<tr>
				<th width="30px"><input type="checkbox" id="allCheckBox">全选</th>
				<th>id</th>
				<th>用户id</th>
				<th>简介标题</th>
				<th>操作</th>
			</tr>
		</thead>
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

	</section> 
	</section> 
	</section>
	
	<!-- 模态框部分开始 -->
	<!-- 新建简介模态框（Modal） -->
<div class="modal fade" id="addIntroBtn" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" align="center" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">新建简介窗口</h4>
            </div>
            <div class="modal-body">
				<!-- 内容开始 -->
					<form  lass="layui-form" action="" id="addIntroForm" style="width: 100%; margin: 10 auto;">
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
								</div>
							</tr>
							
							<tr>
								<div class="layui-form-item2" id="updateOrderDiv">
									<div class="layui-inline">
										<label class="layui-form-label2"><a
											style="color: red;">*</a>简介标题</label>
										<div class="layui-input-block">
											<input  type="text" name="titleCollege"  class="layui-input">
										</div>
									</div>
								</div>
							</tr>
							<tr>
								<div class="layui-form-item2" id="updateOrderDiv">
									<div class="layui-inline">
										<label class="layui-form-label2"><a
											style="color: red;">*</a>简介内容</label>
										<div class="layui-input-block">
											<input  type="text" name="titleMaster"  class="layui-input">
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
                <button id="submitIntroBtn" type="button" class="btn btn-primary">提交更改</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
	
	<!-- 模态框（Modal） -->

	
	
	<!-- 查看简介模态框（Modal） -->
<div class="modal fade" id="querryIntroModalBtn" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" align="center" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">查看简介窗口</h4>
            </div>
            <div class="modal-body">
			<!--内容开始 -->
					<form  lass="layui-form" action="" id="addIntroForm" style="width: 100%; margin: 10 auto;">
						<table>
							<tr>
								<div class="layui-form-item2" id="updateOrderDiv">
									<div class="layui-inline">
										<label class="layui-form-label2">简介Id</label>
										<div class="layui-input-block">
											<input type="text" id="collegeIdKey" disabled="disabled" name="collegeId"  class="layui-input">
										</div>
									</div>
								</div>
							</tr>
							<tr>
								<div class="layui-form-item2" id="updateOrderDiv">
									<div class="layui-inline">
										<label class="layui-form-label2">用户id</label>
										<div class="layui-input-block">
											<input type="text" id="userIdKey" disabled="disabled" name="userId"  class="layui-input">
										</div>
									</div>
								</div>
							</tr>
							
							<tr>
								<div class="layui-form-item2" id="updateOrderDiv">
									<div class="layui-inline">
										<label class="layui-form-label2">简介标题</label>
										<div class="layui-input-block">
											<input  type="text" id="titleCollegeKey" disabled="disabled" name="titleCollege"  class="layui-input">
										</div>
									</div>
								</div>
							</tr>
							<tr>
								<div class="layui-form-item2" id="updateOrderDiv">
									<div class="layui-inline">
										<label class="layui-form-label2">简介内容</label>
										<div class="layui-input-block">
											<input  type="text" id="titleMasterKey" disabled="disabled" name="titleMaster"  class="layui-input">
										</div>
									</div>
								</div>
							</tr>
							<tr>
								<div class="layui-form-item2" id="updateOrderDiv">
									<div class="layui-inline">
										<label class="layui-form-label2">创建时间</label>
										<div class="layui-input-block">
											<input  type="text" id="createDateKey" disabled="disabled" name="createDatex"  class="layui-input">
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
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
	<!-- 模态框部分结束 -->
	
	<!-- 公共的js样式 -->
<%@include file="/commons/common-js.jsp"%>

	<script type="text/javascript">
	
		var param = {};
		
		$('#gundong').niceScroll({
			cursorcolor : "#ccc",//#CC0071 光标颜色
			cursoropacitymax : 1, //改变不透明度非常光标处于活动状态（scrollabar“可见”状态），范围从1到0
			touchbehavior : false, //使光标拖动滚动像在台式电脑触摸设备
			cursorwidth : "5px", //像素光标的宽度
			cursorborder : "0", // 	游标边框css定义
			cursorborderradius : "5px",//以像素为光标边界半径
			autohidemode : false, //是否隐藏滚动条
		});
		
		var page = {
			pn : 1,
			ps : 5,
			lastPage : 10
		};
		$(function() {
			page.pn = 1;
			getColleges();
		});

		function getColleges() {
			$.ajax({
				url : "${ctp}/college/querry",
				data : {
					pn : page.pn,
					ps : page.ps
				},
				success : function(a) {
					showcolleges(a);
				}
			});
		}
		
		function getCollegeOne(data){
			
			$.post("${ctp}/college/querry",data,function(data){
				showcolleges(data);
			});
		}
		
		function showcolleges(data) {
// 			alert(data.size);
			// 1.清空数据
			$("ul.pagination").empty();
			$("#collegeTable tbody").empty();

			//2.显示表格
			buildTable(data);

			//3.显示分页条
			buildPage(data);
		}

		function buildTable(data) {
			var collegeData = data.list;
			//alert(collegeData);
			$.each(collegeData,function() {
				//创建tr
				var tr = $("<tr></tr>");
				//创建td
	
				var btnTd = $("<td></td>")
				//操作列
	
				btnTd.append('<button collegeId = "' + this.collegeId + '" type = "button" class = "introModelShowBtn btn btn-sm btn-success" title="查看简介" ><i class="fa fa-qrcode"></i></button>')
					 .append( '&nbsp;<button collegeId = "' + this.collegeId + '" type = "button" class = "deleteCollegeBtn btn btn-sm btn-danger" title="删除简介" id="removeUserBtn"><i class="fa fa-trash"></i></button>');
	
				tr.append("<td><input type='checkbox' collegeId="+ this.collegeId +" class='itemCheckBox'></td>")
				  .append("<td>" + this.collegeId + "</td>")
				  .append("<td>" + this.userId + "</td>")
				  .append("<td>" + this.titleCollege + "</td>")
				  .append(btnTd)
				  .appendTo($("#collegeTable"));
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
			getColleges();
		});
		
		//————————————————————————————删除当前简介——————————————————————————————————————————
		$("body").on("click", ".deleteCollegeBtn", function() {

			param.collegeIds = $(this).attr("collegeId");
// 			alert(param.collegeIds);
			layer.confirm("确认删除【" + param.collegeIds + "】号员工吗？", {
				btn : [ '确定删除', '取消删除' ]
			}, function() {
				$.get("${ctp}/college/deleteIntro", param, function(data) {
					layer.msg(data.msg);
				});
// 				location.reload();

				//跳转当前页
				page.pn = page.pageNum;
				getColleges();
			}, function() {
				layer.msg("....");
			});

			return false;
		});
		
		//----------------------------------------------
		$("#querryBtn").click(function(){
			
			var data = $("#introForm").serialize();
			var dataVal = document.getElementById("inputId").value;
			
			page.pn = 1;//第一页数据
			
			if (dataVal != null) {
				getCollegeOne(data);
				
			}else{
				getColleges();
			}
			
		});
		
	//--------------------------------------------
	 //新增提交按钮      
	 $("#submitIntroBtn").click(function(){
		 
		 var data = $("#addIntroForm").serialize();
		 
		 artDialog.confirm("question", "提示", "确定是否添加简介？", function(){
			$.post("${ctp }/college/addIntro", data, function(data) {
				//后台返回的内容显示提示
				layer.msg(data.msg);
				//关闭模态框
				$("#addIntroBtn").modal('hide');
				//后台清空模态框里面的内容
				$("#addIntroBtn input").val("");
				//来到最后一页；
				page.pn = page.lastPage + 10;
				getColleges();

				//失败返回的msg
			}).fail(function() {
				layer.msg(data.msg);
				//关闭模态框
				$("#addIntroBtn").modal('hide');
				//后台清空模态框里面的内容
				$("#addIntroBtn input").val("");
				//来到最后一页；
				page.pn = page.lastPage + 10;
				getColleges();
				
			});
		});
	 });
		
	//-----------------------------------------------
	
	$("body").on("click",".introModelShowBtn",function(){
		
		param.collegeId = $(this).attr("collegeId");
		alert(param.collegeId);
		$.ajax({
			url : "${ctp}/college/querry",
			data : {
				collegeId : param.collegeId
			},
			dataType: 'json',
			success : function(data) {
				
				showReturnMsg(data);
				
			}
		});
		
		//显示模态框
		$("#querryIntroModalBtn").modal({
   			backdrop : 'static',
   			show : true
   		});
	});
	
	
	//回显信息
	function showReturnMsg(data){
		
		var conData = data.list[0];
// 		alert(conData.collegeId);
		//input值
		$("#conIdKey").attr("value",conData.consigneeId);
		$("#userIdKey").attr("value",conData.userId);
		//回显操作
		document.getElementById("collegeIdKey").value = conData.collegeId;
		document.getElementById("userIdKey").value = conData.userId;
		document.getElementById("titleCollegeKey").value = conData.titleCollege;
		document.getElementById("titleMasterKey").value = conData.titleMaster;
		document.getElementById("createDateKey").value = timeFormat(conData.createDate);
		
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
		// var mseconds = datetime.getMilliseconds();
		//		 	      return year + "-" + month + "-" + date+" "+hour+":"+minute+":"+second;//+"."+mseconds;
		return year + "-" + month + "-" + date;//+"."+mseconds;
	};
	
	</script>

</body>

</html>
