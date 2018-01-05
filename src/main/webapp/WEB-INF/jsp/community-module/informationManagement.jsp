<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="favicon.ico">
<title>信息管理页面</title>
<!-- css样式抽取 -->
<!-- 公共的css样式 -->
<%@include file="/commons/common-css.jsp"%>

<!--社区管理--信息管理页面  -->

<!--第二个汤出层css开始-->
<!--<link rel="stylesheet" href="../css/reveal.css" />-->
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

	<section id="container"> <section id="main-content">
	<section class="wrapper">

	<div class="row">
		<div class="col-lg-12">
			<ul class="breadcrumb">
				<li><a href="#"><i class="fa fa-home"></i>首页</a></li>
				<li>»</li>
				<li><a href="#">社区管理</a></li>
				<li>»</li>
				<li class="active">信息管理</li>
			</ul>
		</div>
	</div>

	<div class="row">
		<div class="col-sm-9">
			<section>
				<button id="addTopicBtn" type="button" class="btn  btn-info" style="margin-left: 5%;">
					<i class="fa fa-level-up"> </i> 新增话题
				</button>
			</section>
		</div>
	</div>

	<!--筛选开始-->
	<div class="layui-field-box" style="margin-top: 10px;">
		<form id="querryByIdForm"  class="layui-form" action="">
			<div class="layui-form-item">
			
				<div class="layui-inline">
					<label class="layui-form-label">话题序号</label>
					<div class="layui-input-block">
						<input id="inputId" name="topicId" type="text" placeholder="请输入话题id" class="layui-input">
					</div>
				</div>

				<div class="layui-inline" style="margin-top: -5px; margin-left: 5%;">
					<button id="querryOneBtn" type="button" class="layui-btn layui-btn-primary-search">查询</button>
				</div>
			</div>
		</form>
	</div>

	<!--table开始-->
	<table id="topicTable" class="site-table table-hover">
		<thead>
			<tr>
				<th width="30"><input id="allCheckBox" type="checkbox">全选</th>
				<th>话题序号</th>
				<th>用户ID</th>
				<th>内容</th>
				<th>点赞量</th>
				<th>用户</th>
				<th>发布日期</th>
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
	</section> 
</section> 
	<!--弹出层开始-->

	</section>


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
			getTopics();
		});

		function getTopics() {
			$.ajax({
				url : "${ctp}/topic/querry",
				data : {
					pn : page.pn,
					ps : page.ps
				},
				success : function(a) {
					showTopics(a);
				}
			});
		}
		
		function showTopics(data) {
			alert(data.size);
			// 1.清空数据
			$("ul.pagination").empty();
			$("#topicTable tbody").empty();

			//2.显示表格
			buildTable(data);

			//3.显示分页条
			buildPage(data);
		}

		function buildTable(data) {
			var topicData = data.list;
			//alert(topicData);
			$.each(topicData, function() {
				//创建tr
				var tr = $("<tr></tr>");
				//创建td
	
				var btnTd = $("<td></td>")
				//操作列
	
				btnTd.append('<button topicId = "' + this.topicId + '" type = "button" class = "topicModelShowBtn btn btn-sm btn-success" title="查看信息" ><i class="fa fa-qrcode"></i></button>')
					 .append('&nbsp;<button topicId = "' + this.topicId + '" type = "button" class = "updatetopicModelBtn btn btn-sm btn-info" title="修改地址" ><i class="fa fa-pencil"></i></button>')
					 .append('&nbsp;<button topicId = "' + this.topicId + '" type = "button" class = "deletetopicBtn btn btn-sm btn-danger" title="删除地址" id="removeUserBtn"><i class="fa fa-trash"></i></button>');
	
				tr.append("<td><input type='checkbox' topicId="+ this.topicId +" class='itemCheckBox'></td>")
				  .append("<td>" + this.topicId + "</td>")
				  .append("<td>" + this.userId + "</td>")
				  .append("<td>" + this.topicMatter + "</td>")
				  .append("<td>" + this.likeCount + "</td>")
				  .append("<td>" + this.userName + "</td>")
				  .append("<td>" + this.createDate + "</td>")
				  .append(btnTd).appendTo($("#topicTable"));
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
			getTopics();
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
		$("#addtopicBtn").click(function() {
			//获取表单数据
			var data = $("#addtopicForm").serialize();

			artDialog.confirm("question", "提示", "确定是否添加地址？", function(){
				$.post("${ctp }/topic/add", data, function(data) {
					//后台返回的内容显示提示
					layer.msg(data.msg);
					//关闭模态框
					$("#newtopicBtn").modal('hide');
					//后台清空模态框里面的内容
					$("#newtopicBtn input").val("");
					//来到最后一页；
					page.pn = page.lastPage + 10;
					getTopics();

					//失败返回的msg
				}).fail(function() {
					layer.msg(data.msg);
					//关闭模态框
					$("#newtopicBtn").modal('hide');
					//后台清空模态框里面的内容
					$("#newtopicBtn input").val("");
					//来到最后一页；
					page.pn = page.lastPage + 10;
					getTopics();
					
				});
			});
		});
		
		//----------------------------------删除地址----------------------------------------
		//删除一个
		$("body").on("click", ".deletetopicBtn", function() {

			param.topicIds = $(this).attr("topicId");
			//alert(param.topicIds);
			layer.confirm("确认删除【" + param.topicIds + "】号员工吗？", {
				btn : [ '确定删除', '取消删除' ]
			}, function() {
				$.get("${ctp}/topic/delete", param, function(data) {
					layer.msg(data.msg);
				});
				location.reload();

				//跳转当前页
				page.pn = page.pageNum;
				getTopics();
			}, function() {
				layer.msg("....");
			});

			return false;
		});
		
		//----------------------------------查询一个用户所有地址----------------------------------------
		//根据id查询
		$("#querryOneBtn").click(function(){
			
			//获取表单数据
			var data = $("#querryByIdForm").serialize();
// 			alert(data);
			var dataVal = document.getElementById("inputId").value;
			
// 			alert(dataVal);
			page.pn = 1;//第一页数据
			
			if (dataVal != null) {
				gettopicOne(data);
			}else{
				getTopics();
			}
		});
		
		function gettopicOne(data){
			//alert("路过这里");

			$.post("${ctp}/topic/querry",data,function(data){
				showTopics(data);
			});
		}
		
		//----------------------------------查询一个地址----------------------------------------
// 		查看个人信息
		$("body").on("click",".topicModelShowBtn", function(){
			
			param.topicId = $(this).attr("topicId");
			
			$.ajax({
				url : "${ctp}/topic/querry",
				data : {
					topicId : param.topicId
				},
				dataType: 'json',
				success : function(data) {
					
					showReturnMsg(data);
					
				}
			});
			
			//显示模态框
			$("#selecttopicDiv").modal({
	   			backdrop : 'static',
	   			show : true
	   		});
			
		});
		
		//——————————————————————————————————————————————————————————
		//修改模态框的操作 完成
		$("body").on("click",".updatetopicModelBtn", function(){
			
			param.topicId = $(this).attr("topicId");

			$.ajax({
				url : "${ctp}/topic/querry",
				data : {
					topicId : param.topicId
				},
				dataType: 'json',
				success : function(data) {
					
					showReturnMsg(data);
					
				}
			});

			//显示模态框
			$("#updatetopicBtn").modal({
	   			backdrop : 'static',
	   			show : true
	   		});
		});
		
		//回显信息
		function showReturnMsg(data){
			
			var conData = data.list[0];
// 			alert(conData.topicName);
			//input值
			$("#conIdKey").attr("value",conData.topicId);
			$("#userIdKey").attr("value",conData.userId);
			//回显操作
			document.getElementById("selIdKey").value = conData.topicId;
			document.getElementById("user1IdKey").value = conData.userId;
			document.getElementById("selUserIdKey").value = conData.userId;
			document.getElementById("nameIdKey").value = conData.topicName;
			document.getElementById("selNameKey").value = conData.topicName;
			document.getElementById("pathIdKey").value = conData.topicPath;
			document.getElementById("selPathKey").value = conData.topicPath;
			document.getElementById("areaIdKey").value = conData.area;
			document.getElementById("selAreaKey").value = conData.area;
			document.getElementById("selTimeKey").value = conData.createDate;
			
		}
		
		//提交表单信息
		$("#updateConBtn").click(function(){
			//获取表单信息
			var data = $("#updatetopicForm").serialize();

			artDialog.confirm("question", "提示", "确定是否修改地址？", function(){
				$.post("${ctp }/topic/update", data, function(data) {
					//后台返回的内容显示提示
					layer.msg(data.msg);
					//关闭模态框
					$("#updatetopicBtn").modal('hide');
					//后台清空模态框里面的内容
					$("#updatetopicBtn input").val("");
					//跳转当前页
					page.pn = page.pageNum;
					getTopics();
					//失败返回的msg
				}).fail(function() {
					layer.msg(data.msg);
					//关闭模态框
					$("#updatetopicBtn").modal('hide');
					//后台清空模态框里面的内容
					$("#updatetopicBtn input").val("");
					//跳转当前页
					page.pn = page.pageNum;
					getTopics();
				});
			});
			
		});
		
		</script>

</body>
</html>

