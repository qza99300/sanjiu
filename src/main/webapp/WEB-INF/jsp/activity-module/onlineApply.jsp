<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<!--培训活动模块--报名明细   -->

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="favicon.ico">
<title>报名明细</title>
<!-- 公共的css样式 -->
<%@include file="/commons/common-css.jsp"%>

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
							<li class="active">报名列表</li>
						</ul>
					</div>
				</div>
				
				<div class="row">
					<div class="col-sm-9">
						<section>
							<button type="button" class="btn btn-info btn-primary"
								style="margin-left: 5%;" data-toggle="modal" data-target="#newApplyModelBtn">
								<i class="fa fa-edit"> </i> 新增报名
							</button>
						</section>
					</div>
				</div>
				
				<!--筛选开始-->
				<div class="layui-field-box" style="margin-top: 10px;">
					<form id="apply-form" class="layui-form" action="">
						<div class="layui-form-item">
			
							<div class="layui-inline">
								<label class="layui-form-label">根据id查询</label>
								<div class="layui-input-block">
									<input id="inputId" type="text" name="applyId" placeholder="请输入报名序号" class="layui-input">
								</div>
							</div>
			
							<div class="layui-inline" style="margin-top: -5px; margin-left: 5%;">
								<button id="querryOneBtn" type="button" class="layui-btn layui-btn-primary-search">查询</button>
							</div>
						</div>
					</form>
				</div>
				
				<div id="gundong">
					<table id="activityApplyTable" class="site-table table-hover"
						style="width: 100%;">
						<thead>
							<tr>
								<th width="30px"><input id="allCheckBox" type="checkbox">全选</th>
								<th>报名序号</th>
								<th>用户序号</th>
								<th>活动序号</th>
								<th>活动标题</th>
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
	<div class="modal fade" id="newApplyModelBtn" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	    <div class="modal-dialog">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                <h4 class="modal-title" id="myModalLabel">新增报名信息</h4>
	            </div>
	            <div class="modal-body">
				<!-- 内容开始 -->
					<form class="layui-form" action=""
					id="addApplyForm" style="width: 100%; margin: 10 auto;">
							<div class="layui-form-item2" id="updateOrderDiv">
								<div class="layui-inline">
									<label class="layui-form-label2"><a
										style="color: red;">*</a>用户序号</label>
									<div class="layui-input-block">
										<input type="text" name="userId"  class="layui-input">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label2"><a
										style="color: red;">*</a>创建人</label>
									<div class="layui-input-block">
										<input type="text" name="createBy"  class="layui-input">
									</div>
								</div>
							</div>
							<div class="layui-form-item2" id="updateOrderDiv">
								<div class="layui-inline">
									<label class="layui-form-label2"><a
										style="color: red;">*</a>活动id</label>
									<div class="layui-input-block">
										<input type="text" name="activityId"  class="layui-input">
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
							<div class="layui-form-item2" id="updateOrderDiv">
								<div class="layui-inline">
									<label class="layui-form-label2">所属部门</label>
									<div class="layui-input-block">
										<input type="text" name="department"  class="layui-input">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label2">所属区域</label>
									<div class="layui-input-block">
										<input type="text" name="area"  class="layui-input">
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
                <h4 class="modal-title" id="myModalLabel">修改报名信息</h4>
            </div>
            <div class="modal-body">
			<!-- 内容开始 -->
					<form class="layui-form" action="" id="UpdateModelForm"
						style="width: 100%; margin: 10 auto;">
						<input type="hidden" name="applyId" id="applyId">
						<div class="layui-form-item2" id="updateOrderDiv">
							<div class="layui-inline">
								<label class="layui-form-label2"><a style="color: red;">*</a>用户序号</label>
								<div class="layui-input-block">
									<input type="text" name="userId" id="userId" class="layui-input">
								</div>
							</div>
							<div class="layui-inline">
								<label class="layui-form-label2"><a style="color: red;">*</a>创建人</label>
								<div class="layui-input-block">
									<input type="text" name="createBy" id="createBy" class="layui-input">
								</div>
							</div>
						</div>
						<div class="layui-form-item2" id="updateOrderDiv">
							<div class="layui-inline">
								<label class="layui-form-label2"><a style="color: red;">*</a>活动id</label>
								<div class="layui-input-block">
									<input type="text" name="activityId" id="activityId" class="layui-input">
								</div>
							</div>
							<div class="layui-inline">
								<label class="layui-form-label2"><a style="color: red;">*</a>活动标题</label>
								<div class="layui-input-block">
									<input type="text" name="activityTitle" id="activityTitle" class="layui-input">
								</div>
							</div>

						</div>
						<div class="layui-form-item2" id="updateOrderDiv">
							<div class="layui-inline">
								<label class="layui-form-label2">所属部门</label>
								<div class="layui-input-block">
									<input type="text" name="department" id="department" class="layui-input">
								</div>
							</div>
							<div class="layui-inline">
								<label class="layui-form-label2">所属区域</label>
								<div class="layui-input-block">
									<input type="text" name="area" id="area" class="layui-input">
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

<!-- 查看报名信息模态框 -->
<div class="modal fade" id="userModelShowBtn" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">查看报名信息</h4>
            </div>
            <div class="modal-body">
			<!-- 内容开始 -->
					<form class="layui-form" action="" id="UpdateModelForm"
						style="width: 100%; margin: 10 auto;">
						<input type="hidden" name="applyId" id="applyId">
						<div class="layui-form-item2" id="updateOrderDiv">
							<div class="layui-inline">
								<label class="layui-form-label2"><a style="color: red;">*</a>用户序号</label>
								<div class="layui-input-block">
									<input type="text" disabled="disabled" name="userId" id="userId1" class="layui-input">
								</div>
							</div>
							<div class="layui-inline">
								<label class="layui-form-label2"><a style="color: red;">*</a>创建人</label>
								<div class="layui-input-block">
									<input type="text" name="createBy" disabled="disabled" id="createBy1" class="layui-input">
								</div>
							</div>
						</div>
						<div class="layui-form-item2" id="updateOrderDiv">
							<div class="layui-inline">
								<label class="layui-form-label2"><a style="color: red;">*</a>活动id</label>
								<div class="layui-input-block">
									<input type="text" name="activityId" disabled="disabled" id="activityId1" class="layui-input">
								</div>
							</div>
							<div class="layui-inline">
								<label class="layui-form-label2"><a style="color: red;">*</a>活动标题</label>
								<div class="layui-input-block">
									<input type="text" name="activityTitle" disabled="disabled" id="activityTitle1" class="layui-input">
								</div>
							</div>

						</div>
						<div class="layui-form-item2" id="updateOrderDiv">
							<div class="layui-inline">
								<label class="layui-form-label2">所属部门</label>
								<div class="layui-input-block">
									<input type="text" name="department" disabled="disabled" id="department1" class="layui-input">
								</div>
							</div>
							<div class="layui-inline">
								<label class="layui-form-label2">所属区域</label>
								<div class="layui-input-block">
									<input type="text" name="area" disabled="disabled" id="area1" class="layui-input">
								</div>
							</div>
						</div>
						<div class="layui-form-item2" id="updateOrderDiv">
							<div class="layui-inline">
								<label class="layui-form-label2">创建时间</label>
								<div class="layui-input-block">
									<input type="text" name="createDate" disabled="disabled" id="createDate1" class="layui-input">
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
			getApplys();
		});

		function getApplys() {
			$.ajax({
				url : "${ctp}/apply/querry",
				data : {
					pn : page.pn,
					ps : page.ps
				},
				success : function(a) {
					showApplys(a);
				}
			});
		}
		function showApplys(data) {
			// 1.清空数据
			$("ul.pagination").empty();
			$("#activityApplyTable tbody").empty();

			//2.显示表格
			buildTable(data);

			//3.显示分页条
			buildPage(data);
		}

		function buildTable(data) {
			var activityData = data.list;
			
			
			$.each(activityData,function() {
				
				var dateVal = function (date){
				    var y = date.getFullYear();  
				    var m = date.getMonth() + 1;  
				    m = m < 10 ? '0' + m : m;  
				    var d = date.getDate();  
				    d = d < 10 ? ('0' + d) : d;  
				    return y + '-' + m + '-' + d;  
				};
				//创建tr
				var tr = $("<tr></tr>");
				//创建td

				var btnTd = $("<td></td>")
				//操作列

				btnTd.append('<button applyId = "'+ this.applyId + '" type = "button" onclick="show1('+this.applyId+')" data-toggle="modal" data-target="#userModelShowBtn" class = " btn btn-sm btn-success" title="查看活动" ><i class="fa fa-qrcode"></i></button>')
					 .append('&nbsp;<button applyId = "' + this.applyId + '" type = "button" onclick="show('+this.applyId+')" data-toggle="modal" data-target="#updateModelDiv" class = "updateModelBtn btn btn-sm btn-info" title="修改活动" ><i class="fa fa-pencil"></i></button>')
					 .append('&nbsp;<button applyId = "' + this.applyId + '" type = "button" class = "deleteApplyBtn btn btn-sm btn-danger" title="删除活动" id="removeUserBtn"><i class="fa fa-trash"></i></button>');

				tr.append("<td><input type='checkbox' applyId="+ this.applyId +" class='itemCheckBox'></td>")
				  .append("<td>" + this.applyId + "</td>")
				  .append("<td>" + this.userId + "</td>")
				  .append("<td>" + this.activityId + "</td>")
				  .append("<td>" + this.activityTitle + "</td>")
				  .append(btnTd)
				  .appendTo($("#activityApplyTable"));
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
			getApplys();
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
		$("body").on("click", ".deleteApplyBtn", function() {

			param.applyId	 = $(this).attr("applyId");
			layer.confirm("确认删除【" + param.applyId + "】号报名信息吗？", {
				btn : [ '确定删除', '取消删除' ]
			}, function() {
				$.get("${ctp}/apply/delete", param, function(data) {
					layer.msg(data.msg);
					
					//跳转当前页
					page.pn = page.pageNum;
					getApplys();
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
			var params = $("#addApplyForm").serialize();
			

			artDialog.confirm("question", "提示", "确定是否添加报名信息？", function(){
				$.post("${ctp }/apply/add", params, function(data) {
					//后台返回的内容显示提示
					layer.msg(data.msg);
					//关闭模态框
					$("#newApplyModelBtn").modal('hide');
					//后台清空模态框里面的内容
					$("#newApplyModelBtn input").val("");
					//来到最后一页；
					page.pn = page.lastPage + 10;
					getApplys();

					//失败返回的msg
				}).fail(function() {
					layer.msg(data.msg);
					//关闭模态框
					$("#newApplyModelBtn").modal('hide');
					//后台清空模态框里面的内容
					$("#newApplyModelBtn input").val("");
					//来到最后一页；
					page.pn = page.lastPage + 10;
					getApplys();
					
				});
			});
		});
		//----------------------------------查询一个--------------------------------------------------------------
		$("#querryOneBtn").click(function(){
			
			var params = $("#apply-form").serialize();
			
			var dataVal = document.getElementById("inputId").value;
			
			page.pn = 1;//第一页数据
			
			if (dataVal) {
				getApplyOne(params);
			}else{
				getApplys();
			}
			
		});
		
		function getApplyOne(data){
			$.post("${ctp}/apply/querry",data,function(data){
				showApplys(data);
			});
			
		}
		
		//点击修改显示信息
		function show(i) {
			$.ajax({
	            url: "${ctp }/apply/displayActivity",
	            type: "post",
	            datatype: "json",
	            data: { "applyId": i},
	            success: function (data) {
	            	$("#userId").val(data.userId);
	            	$("#applyId").val(data.applyId);
	            	$("#createBy").val(data.createBy);
	            	$("#createDate1").val(data.createDate);
	            	$("#activityId").val(data.activityId);
	            	$("#activityTitle").val(data.activityTitle);
	            	$("#department").val(data.department);
	            	$("#area").val(data.area);
	            }
	        });
		}
		//点击显示信息
		function show1(i) {
			$.ajax({
	            url: "${ctp }/apply/displayActivity",
	            type: "post",
	            datatype: "json",
	            data: { "applyId": i},
	            success: function (data) {
	            	$("#userId1").val(data.userId);
	            	$("#applyId1").val(data.applyId);
	            	$("#createBy1").val(data.createBy);
	            	$("#activityId1").val(data.activityId);
	            	$("#activityTitle1").val(data.activityTitle);
	            	$("#department1").val(data.department);
	            	$("#area1").val(data.area);
	            	$("#createDate1").val(timeFormat(data.createDate));
	            }
	        });
		}
		
		//----------------------------------修改,做到回显--------------------------------------------------------------
		
		$("body").on("click", "#updateModelBtn", function() {
			//获取表单数据
			var params = $("#UpdateModelForm").serialize();
			
			artDialog.confirm("question", "提示", "确定是否修改？", function() {
				$.post("${ctp }/apply/update", params, function(data) {
					//后台返回的内容显示提示
					layer.msg(data.msg);
					//关闭模态框
					$("#updateModelDiv").modal('hide');
					//后台清空模态框里面的内容
					$("#updateModelDiv input").val("");
					//来到最后一页；
					page.pn = page.lastPage + 10;
					getApplys();

					//失败返回的msg
				}).fail(function() {
					layer.msg(data.msg);
					//关闭模态框
					$("#updateModelDiv").modal('hide');
					//后台清空模态框里面的内容
					$("#updateModelDiv input").val("");
					//来到最后一页；
					page.pn = page.lastPage + 10;
					getApplys();
				});
			});
			
			
		});

	//------------------------------------------------------------------
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
	<!-- —————————————————————————————————————js结束——————————————————————————————————————————— -->
	</body>

</html>