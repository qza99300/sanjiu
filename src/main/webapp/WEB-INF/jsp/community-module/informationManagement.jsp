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
<!-- <link rel="stylesheet" href="../css/reveal.css" />-->
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
				<button data-toggle="modal" data-target="#newTopicModalBtn" type="button" class="btn  btn-info" style="margin-left: 5%;">
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
				<th>用户名</th>
				<th>点赞量</th>
				<th>发布日期</th>
				<th>话题内容</th>
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
	<!-- 新增话题开始 -->
	<div class="modal fade" id="newTopicModalBtn" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	    <div class="modal-dialog">
	        <div  class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                <h4 class="modal-title" id="myModalLabel">创建订单</h4>
	            </div>
	            <div class="modal-body">
				<!-- 内容开始 -->
					<form class="layui-form" action="" id="addtopicForm" style="width: 100%; margin: 10 auto;">
						<table>
							<tr>
								<div class="layui-form-item2">
									<div class="layui-inline"><label class="layui-form-label2"><a
											style="color: red;">*</a>用户id</label>
										<div class="layui-input-block">
											<input type="text" value="" name="userId" class="layui-input">
										</div>
									</div>
								</div>
							</tr>
							<tr>
								<div class="layui-form-item2">
									<div class="layui-inline"><label class="layui-form-label2"><a
											style="color: red;">*</a>用户名</label>
										<div class="layui-input-block">
											<input type="text" value="" name="userName" class="layui-input">
										</div>
									</div>
								</div>
							</tr>
							<tr>
								<div class="layui-form-item2">
									<div class="layui-inline"><label class="layui-form-label2"><a
											style="color: red;">*</a>点赞量</label>
										<div class="layui-input-block">
											<input type="text" value="" name="likeCount" class="layui-input">
										</div>
									</div>
								</div>
							</tr>
							<tr>
								<div class="layui-form-item2">
										<div class="layui-inline">
										<label class="layui-form-label2"><a
											style="color: red;">*</a>话题内容</label>
										<div class="layui-input-block">
											<input type="text" value="" name="topicMatter" class="layui-input">
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
	                <button id="createTopicBtn" type="button" class="btn btn-primary">创建</button>
	            </div>
	        </div><!-- /.modal-content -->
	    </div><!-- /.modal -->
	</div>	
	<!-- 新增话题结束 -->
	
	
	<!-- 修改话题开始 -->
	<div class="modal fade" id="updatetopicBtn" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	    <div class="modal-dialog">
	        <div  class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                <h4 class="modal-title" id="myModalLabel">修改话题</h4>
	            </div>
	            <div class="modal-body">
				<!-- 内容开始 -->
					<form class="layui-form" action="" id="updatetopicForm" style="width: 100%; margin: 10 auto;">
						<table>
							<tr>
								<div class="layui-form-item2">
									<div class="layui-inline"><label class="layui-form-label2"><a
											style="color: red;">*</a>话题id</label>
										<div class="layui-input-block">
											<input id="topicIdKey" disabled="disabled" type="text" name="topicId" class="layui-input">
											<input id="htopicIdKey" type="hidden" name="topicId" class="layui-input">
										</div>
									</div>
									<div class="layui-inline"><label class="layui-form-label2"><a
											style="color: red;">*</a>用户id</label>
										<div class="layui-input-block">
											<input id="userIdKey" disabled="disabled" type="text" name="userId" class="layui-input">
											<input id="huserIdKey" type="hidden" name="userId" class="layui-input">
										</div>
									</div>
								</div>
							</tr>
							<tr>
								<div class="layui-form-item2">
									<div class="layui-inline"><label class="layui-form-label2"><a
											style="color: red;">*</a>用户名</label>
										<div class="layui-input-block">
											<input type="text" id="userNameKey" name="userName" class="layui-input">
										</div>
									</div>
									<div class="layui-inline"><label class="layui-form-label2"><a
											style="color: red;">*</a>点赞量</label>
										<div class="layui-input-block">
											<input type="text" id="likeCountKey" name="likeCount" class="layui-input">
										</div>
									</div>
								</div>
							</tr>
							<tr>
								<div class="layui-form-item2">
									<div class="layui-inline"><label class="layui-form-label2">话题内容</label>
										<div class="layui-input-block">
											<textarea wrap id="topicMatterKey" name="topicMatter" class="layui-input" style="width:435px;height: 90px  " ></textarea>
<!-- 											<input type="text" id="topicMatterKey" name="topicMatter" class="layui-input"> -->
										</div>
									</div>
<!-- 									<div class="layui-inline"> -->
<!-- 										<label class="layui-form-label2">创建时间</label> -->
<!-- 										<div class="layui-input-block"> -->
<!-- 											<input  type="text" id="createDateKey" disabled="disabled" name="createDatex"  class="layui-input"> -->
<!-- 										</div> -->
<!-- 									</div> -->
								</div>
							</tr>
						</table>
					</form>
				<!-- 内容结束 -->
			    </div>
	            <div class="modal-footer">
	                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
	                <button id="updateSubTopicBtn" type="button" class="btn btn-primary">修改</button>
	            </div>
	        </div><!-- /.modal-content -->
	    </div><!-- /.modal -->
	</div>
	<!-- 修改话题结束 -->
	
	
	<!-- 查看话题开始 -->
	<div class="modal fade" id="querryModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	    <div class="modal-dialog">
	        <div  class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                <h4 class="modal-title" id="myModalLabel">修改话题</h4>
	            </div>
	            <div class="modal-body">
				<!-- 内容开始 -->
					<form class="layui-form" action="" id="updatetopicForm" style="width: 100%; margin: 10 auto;">
						<table>
							<tr>
								<div class="layui-form-item2">
									<div class="layui-inline"><label class="layui-form-label2">话题id</label>
										<div class="layui-input-block">
											<input id="1topicIdKey" disabled="disabled" type="text" name="topicId" class="layui-input">
										</div>
									</div>
									<div class="layui-inline"><label class="layui-form-label2">用户id</label>
										<div class="layui-input-block">
											<input id="1userIdKey" disabled="disabled" type="text" name="userId" class="layui-input">
										</div>
									</div>
								</div>
							</tr>
							<tr>
								<div class="layui-form-item2">
									<div class="layui-inline"><label class="layui-form-label2">用户名</label>
										<div class="layui-input-block">
											<input type="text" id="1userNameKey" disabled="disabled" name="userName" class="layui-input">
										</div>
									</div>
									<div class="layui-inline"><label class="layui-form-label2">点赞量</label>
										<div class="layui-input-block">
											<input type="text" id="1likeCountKey" disabled="disabled" name="likeCount" class="layui-input">
										</div>
									</div>
								</div>
							</tr>
							<tr>
								<div class="layui-form-item2">
									<div class="layui-inline"><label class="layui-form-label2">话题内容</label>
										<div class="layui-input-block">
											<input type="text" id="1topicMatterKey" disabled="disabled" name="topicMatter" class="layui-input">
										</div>
									</div>
									<div class="layui-inline">
										<label class="layui-form-label2">创建时间</label>
										<div class="layui-input-block">
											<input  type="text" id="1createDateKey" disabled="disabled" name="createDatex"  class="layui-input">
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
	<!-- 查看话题结束 -->

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
// 			alert(data.size);
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
				
// 				alert(this.createDate);
// 				alert(new Date());
// 				alert(new Date().Format("yyyy-MM-dd"));
// 				var date = this.createDate.Format("yyyy-MM-dd");
// 				alert(date);
				//操作列
	
				btnTd.append('<button topicId = "' + this.topicId + '" type = "button" class = "topicModelShowBtn btn btn-sm btn-success" title="查看信息" ><i class="fa fa-qrcode"></i></button>')
					 .append('&nbsp;<button topicId = "' + this.topicId + '" type = "button" class = "updatetopicModelBtn btn btn-sm btn-info" title="修改信息" ><i class="fa fa-pencil"></i></button>')
					 .append('&nbsp;<button topicId = "' + this.topicId + '" type = "button" class = "deletetopicBtn btn btn-sm btn-danger" title="删除话题" id="removeUserBtn"><i class="fa fa-trash"></i></button>');
	
				tr.append("<td><input type='checkbox' topicId="+ this.topicId +" class='itemCheckBox'></td>")
				  .append("<td>" + this.topicId + "</td>")
				  .append("<td>" + this.userId + "</td>")
				  .append("<td>" + this.userName + "</td>")
				  .append("<td>" + this.likeCount + "</td>")
				  .append("<td>" + timeFormat(this.createDate) + "</td>")
// 				  .append("<td>" + (this.createDate).Format("yyyy-MM-dd") + "</td>")
// 				  .append("<td>" + this.createDate + "</td>")
				  .append("<td>" + this.topicMatter + "</td>")
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
		$("#createTopicBtn").click(function() {
			//获取表单数据
			var data = $("#addtopicForm").serialize();

			artDialog.confirm("question", "提示", "确定是否添加话题？", function(){
				$.post("${ctp }/topic/add", data, function(data) {
					//后台返回的内容显示提示
					layer.msg(data.msg);
					//关闭模态框
					$("#newTopicModalBtn").modal('hide');
					//后台清空模态框里面的内容
					$("#newTopicModalBtn input").val("");
					//来到最后一页；
					page.pn = page.lastPage + 10;
					getTopics();

					//失败返回的msg
				}).fail(function() {
					layer.msg(data.msg);
					//关闭模态框
					$("#newTopicModalBtn").modal('hide');
					//后台清空模态框里面的内容
					$("#newTopicModalBtn input").val("");
					//来到最后一页；
					page.pn = page.lastPage + 10;
					getTopics();
					
				});
			});
		});
		
		//----------------------------------删除地址----------------------------------------
		//删除一个
		$("body").on("click", ".deletetopicBtn", function() {

			param.topicId = $(this).attr("topicId");
			//alert(param.topicIds);
			layer.confirm("确认删除【" + param.topicId + "】号员工吗？", {
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
			$("#querryModal").modal({
	   			backdrop : 'static',
	   			show : true
	   		});
			
		});
		
		//——————————————————————————————————————————————————————————
		//修改模态框的操作 完成
		$("body").on("click",".updatetopicModelBtn", function(){
			
			param.topicId = $(this).attr("topicId");
// 			alert(param.topicId);

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
// 			alert(conData.userName);
// 			alert(conData.topicMatter);
// 			alert(conData.createDate);
			//input值
			$("#htopicIdKey").attr("value",conData.topicId);
			$("#huserIdKey").attr("value",conData.userId);
			//回显操作
			document.getElementById("topicIdKey").value = conData.topicId;
			document.getElementById("userIdKey").value = conData.userId;
			document.getElementById("userNameKey").value = conData.userName;
			document.getElementById("likeCountKey").value = conData.likeCount;
// 			document.getElementById("createDateKey").value = conData.createDate;
			document.getElementById("topicMatterKey").value = conData.topicMatter;
			
			document.getElementById("1topicIdKey").value = conData.topicId;
			document.getElementById("1userIdKey").value = conData.userId;
			document.getElementById("1userNameKey").value = conData.userName;
			document.getElementById("1likeCountKey").value = conData.likeCount;
			document.getElementById("1createDateKey").value = conData.createDate;
			document.getElementById("1topicMatterKey").value = conData.topicMatter;
			
		}
		
		//提交修改表单信息
		$("#updateSubTopicBtn").click(function(){
			//获取表单信息
			var data = $("#updatetopicForm").serialize();

			artDialog.confirm("question", "提示", "确定是否修改话题信息？", function(){
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
//-------------------------------------------------------------------

//时间格式化
 function timeFormat (time){
		 if (time == null) {
				return null;
			}
	     var datetime = new Date();
	     datetime.setTime(time);
	     var year = datetime.getFullYear();
	     var month = datetime.getMonth() + 1;
	     var date = datetime.getDate();
	     var hour = datetime.getHours();
	     if(hour<=9){
	         hour="0"+hour;
	     }
	     var minute = datetime.getMinutes();
	     if(minute<=9){
	         minute="0"+minute;
	     }
	     var second = datetime.getSeconds();
	     if(second<=9){
	        second="0"+second;
	     }
	     // var mseconds = datetime.getMilliseconds();
// 	      return year + "-" + month + "-" + date+" "+hour+":"+minute+":"+second;//+"."+mseconds;
	     return year + "-" + month + "-" + date;//+"."+mseconds;
	 }; 
 
 
		</script>
</body>
</html>

