<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="favicon.ico">
<title>积分规则页面</title>

<!-- css样式抽取 -->
<!-- 公共的css样式 -->
<%@include file="/commons/common-css.jsp"%>

<!--积分中心--积分规则页面  -->


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
				<li><a href="#">积分中心</a></li>
				<li>»</li>
				<li class="active">积分规则</li>
			</ul>
		</div>
	</div>

	<div class="row">
		<div class="col-sm-9">
			<section>
				<button type="button" class="btn btn-info btn-primary"
					style="margin-left: 5%;" onclick="show()">
					<i class="fa fa-edit"> </i> 设置积分获取规则
				</button>
				<button type="button" class="btn btn-info btn-primary"
					style="margin-left: 5%;" data-toggle="modal" data-target="#newApplyModelBtn">
					<i class="fa fa-edit"> </i> 新增积分获取规则
				</button>
			</section>
		</div>
	</div>

	<!--筛选开始--> <!--<div class="layui-field-box" style="margin-top: 10px;">
	                <form class="layui-form" action="">
							<div class="layui-form-item">
							<div class="layui-inline">
								<label class="layui-form-label">站点名称</label>
								<div class="layui-input-block">
									<input type="text" placeholder="请输入站点名称" class="layui-input" >
								</div>
							</div>
					
							

							
							<div class="layui-inline" style="margin-top: -5px;margin-left: 5%;">
								<button class="layui-btn layui-btn-primary-search">查询</button>
							</div>
							
							
							
						</div>
						</form>
					</div>	--> <!--table开始-->
	<table class="site-table table-hover" id="activityApplyTable" style="margin-top: 20px;">
		<thead>
			<tr>
				<th width="30px"><input id="allCheckBox" type="checkbox">全选</th>
				<th>序号</th>
				<th>规则名称</th>
				<th>积分</th>
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
	</section> </section> <!--弹出层开始-->
	
	<!-- 新增模态框（Modal） -->
	<div class="modal fade" id="newApplyModelBtn" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	    <div class="modal-dialog">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                <h4 class="modal-title" id="myModalLabel">新增积分规则</h4>
	            </div>
	            <div class="modal-body">
				<!-- 内容开始 -->
					<form class="layui-form" action=""
					id="addApplyForm" style="width: 100%; margin: 10 auto;">
							<div class="layui-form-item2" id="updateOrderDiv">
								<div class="layui-inline">
									<label class="layui-form-label2"><a
										style="color: red;">*</a>规则名称</label>
									<div class="layui-input-block">
										<input type="text" name="ruleName"  class="layui-input">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label2"><a
										style="color: red;">*</a>积分</label>
									<div class="layui-input-block">
										<input type="text" name="ruleNum"  class="layui-input">
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
	    <div class="modal-dialog modal-sm">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                <h4 class="modal-title" id="myModalLabel">设置积分规则获取</h4>
	            </div>
	            <div class="modal-body">
				<!-- 内容开始 -->
						<form class="layui-form" action="" id="UpdateModelForm"
							style="width: 100%; margin: 10 auto;">
							<table>
								<tbody id="main">
									
								</tbody>
							</table>
						</form>
						<!-- 内容结束 -->
		    </div>
	            <div class="modal-footer">
	                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
	                <button type="button"  onclick="sub()" class="btn btn-primary">提交更改</button>
	            </div>
	        </div><!-- /.modal-content -->
	    </div><!-- /.modal -->
	</div>
	
	<!-- 修改规则详细模态框 -->
	<div class="modal fade" id="showUpdateRuleBtn" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	    <div class="modal-dialog">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                <h4 class="modal-title" id="myModalLabel">修改规则信息窗口</h4>
	            </div>
	            <div class="modal-body">
				<!-- 内容开始 -->
					<form  class="layui-form" action="" id="updateRuleForm" style="width: 100%; margin: 10 auto;">
						<div class="layui-form-item2" id="updateOrderDiv">
							<div class="layui-inline">
								<label class="layui-form-label2"><a
									style="color: red;">*</a>规则名称</label>
								<div class="layui-input-block">
									<input id="ruleIdKey" type="hidden" name="ruleId" value="">
									<input type="text" id="ruleNameKey" name="ruleName"  class="layui-input">
								</div>
							</div>
							<div class="layui-inline">
								<label class="layui-form-label2"><a
									style="color: red;">*</a>积分</label>
								<div class="layui-input-block">
									<input type="text" id="ruleNumKey" name="ruleNum"  class="layui-input">
								</div>
							</div>
						</div>
					</form>
				<!-- 内容结束 -->
			    </div>
	            <div class="modal-footer">
	                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
	                <button id="subUpdateBtn" type="button" class="btn btn-primary">提交更改</button>
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
					url : "${ctp}/integral/querry",
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
				//alert(data.size);
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
				
				
				//alert(activityData);
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
					
					btnTd.append('<button ruleId = "' + this.ruleId + '" type = "button" class = "updateRuleModalBtn btn btn-sm btn-success" title="修改规则" ><i class="fa fa-qrcode"></i></button>')
					 .append('&nbsp;<button ruleId = "' + this.ruleId + '" type = "button" class = "deleteRuleBtn btn btn-sm btn-danger" title="删除规则" id="removeUserBtn"><i class="fa fa-trash"></i></button>');
	
					
	
					tr.append("<td><input type='checkbox' applyId="+ this.ruleId +" class='itemCheckBox'></td>")
					  .append("<td>" + this.ruleId + "</td>")
					  .append("<td>" + this.ruleName + "</td>")
					  .append("<td>" + this.ruleNum + "</td>")
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
	// 			alert(param.applyIds);
				layer.confirm("确认删除【" + param.applyId + "】号员工吗？", {
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
				
			//	alert(params);
	
				artDialog.confirm("question", "提示", "确定是否添加积分规则？", function(){
					$.post("${ctp }/integral/add", params, function(data) {
						//后台返回的内容显示提示
						//alert(data.msg);
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
	// 			alert(data);
				$.post("${ctp}/integral/querry",data,function(data){
					showApplys(data);
				});
				
			}
			
			//点击修改显示信息
			function show() {
				var form=window.document.getElementById("main");
				$.ajax({
		            url: "${ctp }/integral/updateshow",
		            type: "post",
		            datatype: "json",
		            data: {},
		            success: function (data) {
		            	var str="";
		            	for (var i = 0; i < data.rows.length; i++) {
		            		str+="<tr class='mx'><td><div class='layui-form-item2'>"+
									"<div class='layui-inline'>"+
										"<label class='layui-form-label2'><a style='color: red;'>*</a>"+data.rows[i].ruleName+"</label>"+
									"<div class='layui-input-block'>"+
										"<input type='hidden' value='"+data.rows[i].ruleId+"' class='layui-input'>"+
										"<input type='text' value='"+data.rows[i].ruleNum+"' class='layui-input'>"+
									"</div>"+
								"</div></td></tr>";
						}
		            	form.innerHTML=str;
		            }
		        })
		   		$("#updateModelDiv").modal('show');
			}
			
			//修改提交
			var json="";
			function sub(){
				json="[";
				var trs=$("#main tr[class=mx]");
				var i=1;
			    var str="";
				$("#main tr[class=mx]").each(function(){
						var mx="{";
						mx+="'ruleId':'"+$(this).find("td:eq(0) input").val()+"',";
						mx+="'ruleNum':'"+$(this).find("td:eq(0) input+input").val()+"',";
						mx+="}";
						if(i<trs.length){
							mx+=",";
							i++;
						}
						json+=mx;
				});
				
				json+="]";
				
				
				$.ajax({
		            url: "${ctp }/integral/updates",
		            type: "post",
		            datatype: "json",
		            data: {"json":json},
		            success: function (data) {
		            	layer.msg(data.msg);
		            	
		            }
		        })
		        $("#updateModelDiv").modal('hide');
				page.pn = page.lastPage + 10;
				getApplys();
		        location.reload();
			}
			
			//----------------------------------修改,做到回显--------------------------------------------------------------
			
			$("body").on("click", "#updateModelBtn", function() {
				//获取表单数据
				var params = $("#UpdateModelForm").serialize();
				
				artDialog.confirm("question", "提示", "确定是否修改？", function() {
					$.post("${ctp }/apply/update", params, function(data) {
						//后台返回的内容显示提示
						alert(data.msg);
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
	
	//-----------------------------------------------------------------
	//删除一个
		$("body").on("click", ".deleteRuleBtn", function() {

			param.ruleId = $(this).attr("ruleId");
			//alert(param.consigneeIds);
			layer.confirm("确认删除【" + param.ruleId + "】号规则么吗？", {
				btn : [ '确定删除', '取消删除' ]
			}, function() {
				$.get("${ctp}/integral/delete", param, function(data) {
					layer.msg(data.msg);
				});
			//	location.reload();

				//跳转当前页
				page.pn = page.pageNum;
				getApplys();
			}, function() {
				layer.msg("....");
			});

			return false;
		});
			
	//---------------------------------------------------------------------------------
	//修改
	$("body").on("click",".updateRuleModalBtn",function(){
		
		param.ruleId = $(this).attr("ruleId");
		
		$.ajax({
			url : "${ctp}/integral/querry",
			data : {
				ruleId : param.ruleId
			},
			dataType: 'json',
			success : function(data) {
				
				showReturnMsg(data);
				
			}
		});
		
		
		//显示模态框
		$("#showUpdateRuleBtn").modal({
   			backdrop : 'static',
   			show : true
   		});
	});
	
	
	//回显信息
	function showReturnMsg(data){
		
		var conData = data.list[0];
		
		//input值
		$("#ruleIdKey").attr("value",conData.ruleId);
		
		//回显操作
		document.getElementById("ruleNameKey").value = conData.ruleName;
		document.getElementById("ruleNumKey").value = conData.ruleNum;
		
	}
	
	$("#subUpdateBtn").click(function(){
		//获取表单信息
		var data = $("#updateRuleForm").serialize();
		
		artDialog.confirm("question", "提示", "确定是否修改规则？", function(){
			$.post("${ctp }/integral/update", data, function(data) {
				//后台返回的内容显示提示
				layer.msg(data.msg);
				//关闭模态框
				$("#showUpdateRuleBtn").modal('hide');
				//后台清空模态框里面的内容
				$("#showUpdateRuleBtn input").val("");
				//跳转当前页
				page.pn = page.pageNum;
				getApplys();
				//失败返回的msg
			}).fail(function() {
				layer.msg(data.msg);
				//关闭模态框
				$("#showUpdateRuleBtn").modal('hide');
				//后台清空模态框里面的内容
				$("#showUpdateRuleBtn input").val("");
				//跳转当前页
				page.pn = page.pageNum;
				getApplys();
			});
		});
		
	});
			
			
			
		</script>
		<!-- —————————————————————————————————————js结束——————————————————————————————————————————— -->
	</body>

</html>



