<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="favicon.ico">
<title>活动管理页面</title>
<!-- css样式抽取 -->
<!-- 公共的css样式 -->
<%@include file="/commons/common-css.jsp"%>

<!--培训活动模块--活动管理页面  -->

</head>

<body>

	<section id="container"> <!--内容部分开始--> 
		<section id="main-content"> 
			<section class="wrapper">

				<div class="row">
					<div class="col-lg-12">
						<ul class="breadcrumb">
							<li><a href="#"><i class="fa fa-home"></i>首页</a></li>
							<li>»</li>
							<li><a href="#">培训活动</a></li>
							<li>»</li>
							<li class="active">活动管理</li>
						</ul>
					</div>
				</div>
				
				<div class="row">
					<div class="col-sm-9">
						<section>
							<button type="button" class="btn btn-info btn-primary"
								style="margin-left: 5%;" data-toggle="modal" data-target="#newActivityBtn">
								<i class="fa fa-edit"> </i> 新增活动
							</button>
						</section>
					</div>
				</div>
				
				<!--筛选开始-->
				<div class="layui-field-box" style="margin-top: 10px;">
					<form id="activity-form" class="layui-form" action="">
						<div class="layui-form-item">
			
							<div class="layui-inline">
								<label class="layui-form-label">标题查询</label>
								<div class="layui-input-block">
									<input id="inputId" type="text" name="activityTitle" placeholder="请输入活动标题" class="layui-input">
								</div>
							</div>
			
							<div class="layui-inline" style="margin-top: -5px; margin-left: 5%;">
								<button id="querryOneBtn" type="button" class="layui-btn layui-btn-primary-search">查询</button>
							</div>
						</div>
					</form>
				</div>
<!-- 				<div class="layui-field-box" style="margin-top: 10px;"> -->
<!-- 					<form id="activity-form" class="layui-form" action=""> -->
<!-- 						<div class="layui-form-item"> -->
			
<!-- 							<div class="layui-inline"> -->
<!-- 								<label class="layui-form-label">根据id查询</label> -->
<!-- 								<div class="layui-input-block"> -->
<!-- 									<input id="inputId" type="text" name="activityId" placeholder="请输入活动序号" class="layui-input"> -->
<!-- 								</div> -->
<!-- 							</div> -->
			
<!-- 							<div class="layui-inline" style="margin-top: -5px; margin-left: 5%;"> -->
<!-- 								<button id="querryOneBtn" type="button" class="layui-btn layui-btn-primary-search">查询</button> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</form> -->
<!-- 				</div> -->
				
				<div id="gundong">
					<table id="activityTable" class="site-table table-hover"
						style="width: 100%;">
						<thead>
							<tr>
								<th width="30"><input id="allCheckBox" type="checkbox">全选</th>
								<th>序号</th>
								<th>活动人数</th>
								<th>活动主题</th>
								<th>活动状态</th>
								<th>所在区域</th>
								<th>创建人</th>
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
				

			</section> 
		</section>
	</section>
	
	
	
	<!--编辑   弹出层开始--> 
	<!-- 新增模态框（Modal） -->
	<div class="modal fade" id="newActivityBtn" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	    <div class="modal-dialog">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                <h4 class="modal-title" id="myModalLabel">新增活动窗口</h4>
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
										style="color: red;">*</a>活动人数</label>
									<div class="layui-input-block">
										<input type="text" name="activityNum"  class="layui-input">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label2"><a
										style="color: red;">*</a>活动标题</label>
									<div class="layui-input-block">
										<input type="text" name="activityTitle"  class="layui-input">
									</div>
								</div>
							</div>
						</tr>
						<tr>
							<div class="layui-form-item2">
								<div class="layui-inline">
									<label class="layui-form-label2">活动状态</label>
									<div class="layui-input-block">
										<input type="text" name="activityStatus"  class="layui-input">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label2">创建年度</label>
									<div class="layui-input-block">
										<input type="text" name="createYear"  class="layui-input">
									</div>
								</div>
							</div>
						</tr>
						<tr>
							<div class="layui-form-item2" id="updateOrderDiv">
								<div class="layui-inline">
									<label class="layui-form-label2"><a
										style="color: red;">*</a>所属部门</label>
									<div class="layui-input-block">
										<input type="text" name="department"  class="layui-input">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label2"><a
										style="color: red;">*</a>所属区域</label>
									<div class="layui-input-block">
										<input type="text" name="area"  class="layui-input">
									</div>
								</div>
							</div>
						</tr>
						<tr>
							<div class="layui-form-item2">
								<div class="layui-inline">
									<label class="layui-form-label2"><a
										style="color: red;">*</a>备注</label>
									<div class="layui-input-block">
										<input type="text" name="remark"  class="layui-input">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label2">附件路径</label>
									<div class="layui-input-block">
										<input type="text" name="accessoryPath"  class="layui-input">
									</div>
								</div>
							</div>
						</tr>
						<tr>
							<div class="layui-form-item2">
								<div class="layui-inline">
									<label class="layui-form-label2">图片上传</label>
									<div class="layui-input-block">
										<input type="image" name="picture"  class="layui-input">
									</div>
								</div>
							
								<div class="layui-inline">
									<label class="layui-form-label2"><a
										style="color: red;">*</a>活动内容</label>
									<div class="layui-input-block">
										<input type="text"  style="width:400px; height=200px"  maxlength="500" name="activityMatter"  class="layui-input">
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
                <h4 class="modal-title" id="myModalLabel">修改活动信息</h4>
            </div>
            <div class="modal-body">
			<!-- 内容开始 -->
			<form  class="layui-form" action=""
					id="UpdateModelForm" style="width: 100%; margin: 10 auto;">
				<div class="layui-form-item2" id="updateOrderDiv">
					<div class="layui-inline">
						<label class="layui-form-label2"><a
							style="color: red;">*</a>活动序号</label>
						<div class="layui-input-block">
							<input type="text" name="activityId" value="" id="activityId" class="layui-input">
						</div>
					</div>

					<div class="layui-inline">
						<label class="layui-form-label2"><a
							style="color: red;">*</a>活动标题</label>
						<div class="layui-input-block">
							<input type="text" name="activityTitle" id="activityTitle"  class="layui-input">
						</div>
					</div>
				</div>
				<div class="layui-form-item2">
					<div class="layui-inline">
						<label class="layui-form-label2"><a
							style="color: red;">*</a>活动人数</label>
						<div class="layui-input-block">
							<input type="text" name="activityNum" id="activityNum"  class="layui-input">
						</div>
					</div>
				</div>
				<div class="layui-form-item2">
					<div class="layui-inline">
						<label class="layui-form-label2">活动状态</label>
						<div class="layui-input-block">
							<input type="text" name="activityStatus" id="activityStatus" class="layui-input">
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label2"><a
							style="color: red;">*</a>备注</label>
						<div class="layui-input-block">
							<input type="text" name="remark" id="remark"  class="layui-input">
						</div>
					</div>
				</div>
				<div class="layui-form-item2" id="updateOrderDiv">
					<div class="layui-inline">
						<label class="layui-form-label2"><a
							style="color: red;">*</a>所属部门</label>
						<div class="layui-input-block">
							<input type="text" name="department" id="department" class="layui-input">
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label2"><a
							style="color: red;">*</a>所属区域</label>
						<div class="layui-input-block">
							<input type="text" name="area" id="area" class="layui-input">
						</div>
					</div>
				</div>
<!-- 						<tr> -->
<!-- 							<div class="layui-form-item2"> -->
					
<!-- 								<div class="layui-inline"> -->
<!-- 									<label class="layui-form-label2">附件路径</label> -->
<!-- 									<div class="layui-input-block"> -->
<!-- 										<input type="file" name="accessoryPath"  class="layui-input"> -->
<!-- 									</div> -->
<!-- 								</div> -->
					
<!-- 								<div class="layui-inline"> -->
<!-- 									<label class="layui-form-label2">图片上传</label> -->
<!-- 									<div class="layui-input-block"> -->
<!-- 										<input type="file" name="picture"  class="layui-input"> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</tr> -->
				<div class="layui-form-item2">
					<div class="layui-inline">
						<label class="layui-form-label2"><a
							style="color: red;">*</a>活动内容</label>
						<div class="layui-input-block">
							<input type="text"   style="width:400px; height=200px" id="activityMatter"  maxlength="500" name="activityMatter"  class="layui-input">
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
	
<!-- 查看活动信息 -->	
<div class="modal fade" id="querryModelShowBtn" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">查看活动信息</h4>
            </div>
            <div class="modal-body">
			<!-- 内容开始 -->
<form  class="layui-form" action=""
		id="querryModelForm" style="width: 100%; margin: 10 auto;">
				<div class="layui-form-item2" id="updateOrderDiv">
					<div class="layui-inline">
						<label class="layui-form-label2"><a
							style="color: red;">*</a>活动序号</label>
						<div class="layui-input-block">
							<input type="text" name="activityId" disabled="disabled" value="" id="activityIds" class="layui-input">
						</div>
					</div>

					<div class="layui-inline">
						<label class="layui-form-label2"><a
							style="color: red;">*</a>活动标题</label>
						<div class="layui-input-block">
							<input type="text" name="activityTitle" id="activityTitles" disabled="disabled"  class="layui-input">
						</div>
					</div>
				</div>
				<div class="layui-form-item2">
					<div class="layui-inline">
						<label class="layui-form-label2">活动人数</label>
						<div class="layui-input-block">
							<input type="text" name="activityNum" id="activityNums" disabled="disabled" class="layui-input">
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label2">创建年度</label>
						<div class="layui-input-block">
							<input type="text" name="createYear" id="createYears" disabled="disabled" class="layui-input">
						</div>
					</div>
				</div>
				<div class="layui-form-item2">
					<div class="layui-inline">
						<label class="layui-form-label2">活动状态</label>
						<div class="layui-input-block">
							<input type="text" name="activityStatus" id="activityStatuss" disabled="disabled" class="layui-input">
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label2">备注</label>
						<div class="layui-input-block">
							<input type="text" name="remark" id="remarks" disabled="disabled" class="layui-input">
						</div>
					</div>
				</div>
				<div class="layui-form-item2" id="updateOrderDiv">
					<div class="layui-inline">
						<label class="layui-form-label2">所属部门</label>
						<div class="layui-input-block">
							<input type="text" name="department" id="departments" disabled="disabled" class="layui-input">
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label2">所属区域</label>
						<div class="layui-input-block">
							<input type="text" name="area" id="areas" disabled="disabled" class="layui-input">
						</div>
					</div>
				</div>
<!-- 						<tr> -->
<!-- 							<div class="layui-form-item2"> -->
					
<!-- 								<div class="layui-inline"> -->
<!-- 									<label class="layui-form-label2">附件路径</label> -->
<!-- 									<div class="layui-input-block"> -->
<!-- 										<input type="file" name="accessoryPath"  class="layui-input"> -->
<!-- 									</div> -->
<!-- 								</div> -->
					
<!-- 								<div class="layui-inline"> -->
<!-- 									<label class="layui-form-label2">图片上传</label> -->
<!-- 									<div class="layui-input-block"> -->
<!-- 										<input type="file" name="picture"  class="layui-input"> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</tr> -->
				<div class="layui-form-item2">
					<div class="layui-inline">
						<label class="layui-form-label2">活动内容</label>
						<div class="layui-input-block">
							<input type="text" disabled="disabled"  style="width:400px; height=200px" id="activityMatter"  maxlength="500" name="activityMatter"  class="layui-input">
						</div>
					</div>
					
				</div>
				</form>
			<!-- 内容结束 -->
	    </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
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
				url : "${ctp}/activity/querryAll",
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
			$.each(activityData,function() {
				//创建tr
				var tr = $("<tr></tr>");
				//创建td

				var btnTd = $("<td></td>")
				//操作列

				btnTd.append('<button activityId = "'+ this.activityId + '" type = "button" onclick="showActivity('+this.activityId+')" data-toggle="modal" data-target="#querryModelShowBtn" class = " btn btn-sm btn-success" title="查看活动" ><i class="fa fa-qrcode"></i></button>')
					 .append('&nbsp;<button activityId = "' + this.activityId + '" type = "button" onclick="show('+this.activityId+')" data-toggle="modal" data-target="#updateModelDiv" class = "btn btn-sm btn-info" title="修改活动" ><i class="fa fa-pencil"></i></button>')
					 .append('&nbsp;<button activityId = "' + this.activityId + '" type = "button" class = "deleteActivityBtn btn btn-sm btn-danger" title="删除活动" id="removeUserBtn"><i class="fa fa-trash"></i></button>');

				tr.append("<td><input type='checkbox' activityId="+ this.activityId +" class='itemCheckBox'></td>")
				  .append("<td>" + this.activityId + "</td>")
				  .append("<td>" + this.activityNum + "</td>")
				  .append("<td>" + this.activityTitle + "</td>")
				  .append("<td>" + this.activityStatus + "</td>")
				  .append("<td>" + this.area + "</td>")
				  .append("<td>" + nullIsZero(this.createBy) + "</td>")
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

			param.activityIds = $(this).attr("activityId");
			layer.confirm("确认删除【" + param.activityIds + "】号员工吗？", {
				btn : [ '确定删除', '取消删除' ]
			}, function() {
				$.get("${ctp}/activity/delete", param, function(data) {
					
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

			artDialog.confirm("question", "提示", "确定是否添加地活动？", function(){
				$.post("${ctp }/activity/add", params, function(data) {
					//后台返回的内容显示提示
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
			$.post("${ctp}/activity/querryByLike",data,function(data){
				showActivitys(data);
			});
			
		}
		
		//点击修改显示信息
		function show(i) {
			$.ajax({
	            url: "${ctp }/activity/displayActivity",
	            type: "post",
	            datatype: "json",
	            data: { "activityId": i},
	            success: function (data) {
	            	$("#activityId").val(data.activityId);
	            	$("#activityTitle").val(data.activityTitle);
	            	$("#activityNum").val(data.activityNum);
	            	$("#createYear").val(data.createYear);
	            	$("#activityStatus").val(data.activityStatus);
	            	$("#remark").val(data.remark);
	            	$("#department").val(data.department);
	            	$("#area").val(data.area);
	            	$("#activityMatter").val(data.activityMatter);
	            }
	        });
		}
		//点击显示信息
		function showActivity(i) {
			$.ajax({
	            url: "${ctp }/activity/displayActivity",
	            type: "post",
	            datatype: "json",
	            data: { "activityId": i},
	            success: function (data) {
	            	$("#activityIds").val(data.activityId);
	            	$("#activityTitles").val(data.activityTitle);
	            	$("#activityNums").val(data.activityNum);
	            	$("#createYears").val(data.createYear);
	            	$("#activityStatuss").val(data.activityStatus);
	            	$("#remarks").val(data.remark);
	            	$("#departments").val(data.department);
	            	$("#areas").val(data.area);
	            	$("#activityMatters").val(data.activityMatter);
	            }
	        });
		}
		
		
		//----------------------------------修改--------------------------------------------------------------
		//提交修改表单
		$("body").on("click", "#updateModelBtn", function() {
			//获取表单数据
			var params = $("#UpdateModelForm").serialize();
			
			artDialog.confirm("question", "提示", "确定是否修改？", function() {
				$.post("${ctp }/activity/update", params, function(data) {
					//后台返回的内容显示提示
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
		
		
		function nullIsZero(data){
			
			if (data == null) {
				return data = "";
			}
			return data;
			
			
		}	

		//---------------------------------------------------------------------------------------------
		
		
	</script>
	<!-- —————————————————————————————————————js结束——————————————————————————————————————————— --> 
</body>

</html>