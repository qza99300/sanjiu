<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="favicon.ico">
<title>角色管理页</title>

<!-- css样式抽取 -->
<!-- 公共的css样式 -->
<%@include file="/commons/common-css.jsp"%>

<!-- 系统管理模块--角色管理页面 -->

</head>

<body style="overflow-x: hidden;">

	<section id="container"> <!--内容部分开始--> <section
		id="main-content"> <section class="wrapper">

	<div class="row">
		<div class="col-lg-12">
			<ul class="breadcrumb">
				<li><a href="#"><i class="fa fa-home"></i>首页</a></li>
				<li>»</li>
				<li><a href="#">系统管理</a></li>
				<li>»</li>
				<li class="active">角色管理</li>
			</ul>
		</div>
	</div>

	<div class="row">
		<div class="col-sm-9">
			<section>
			<button type="button" class="btn btn-info btn-primary"
				style="margin-left: 5%;" data-toggle="modal" data-target="#newRoleModelBtn">
				<i class="fa fa-edit"> </i> 新增角色
			</button>
			</section>
		</div>
	</div>

	<!--筛选开始-->
	<div class="layui-field-box" style="margin-top: 10px;">
		<form id="querryRoleForm" class="layui-form" action="">
			<div class="layui-form-item">

				<div class="layui-inline">
					<label class="layui-form-label">角色序号</label>
					<div class="layui-input-block">
						<input id="inputId" type="text" name="roleName" placeholder="请输入角色名" class="layui-input">
					</div>
				</div>

				<div class="layui-inline" style="margin-top: -5px; margin-left: 5%;">
					<button id="querryOneBtn" type="button" class="layui-btn layui-btn-primary-search">查询</button>
				</div>
			</div>
		</form>
	</div>

<!-- 	<div class="layui-field-box" style="margin-top: 10px;"> -->
<!-- 		<form id="querryRoleForm" class="layui-form" action=""> -->
<!-- 			<div class="layui-form-item"> -->

<!-- 				<div class="layui-inline"> -->
<!-- 					<label class="layui-form-label">角色序号</label> -->
<!-- 					<div class="layui-input-block"> -->
<!-- 						<input id="inputId" type="text" name="roleId" placeholder="请输入角色id" class="layui-input"> -->
<!-- 					</div> -->
<!-- 				</div> -->

<!-- 				<div class="layui-inline" style="margin-top: -5px; margin-left: 5%;"> -->
<!-- 					<button id="querryOneBtn" type="button" class="layui-btn layui-btn-primary-search">查询</button> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</form> -->
<!-- 	</div> -->

	<!--table开始-->
	<div id="gundong">
		<table id="roleTable" class="site-table table-hover"
			style="width: 100%;">
			<thead>
				<tr>
					<th>角色序号</th>
					<th>角色名</th>
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
	
	<!-- 新增角色模态框（Modal） -->
	<div class="modal fade" id="newRoleModelBtn" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	    <div class="modal-dialog">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                <h4 class="modal-title" id="myModalLabel">新增角色窗口</h4>
	            </div>
	            <div class="modal-body" id="updateRoleVue">
				<!-- 内容开始 -->
					<form class="layui-form" action=""
						id="addRoleForm" style="width: 100%; margin: 10 auto;">
						<table>
							<tr>
								<div class="layui-form-item2">
									<div class="layui-inline">
										<label class="layui-form-label2">角色名称</label>
										<div class="layui-input-block">
											<input type="text" name="roleName"  class="layui-input">
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
	                <button id="addRoleBtn" type="button" class="btn btn-primary">创建</button>
	            </div>
	        </div><!-- /.modal-content -->
	    </div><!-- /.modal -->
	</div>
	
	<!-- 修改角色模态框（Modal） -->
	<div class="modal fade" id="updateRoleModelBtn" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	    <div class="modal-dialog">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                <h4 class="modal-title" id="myModalLabel">修改角色窗口</h4>
	            </div>
	            <div class="modal-body">
				<!-- 内容开始 -->
					<form class="layui-form" action=""
						id="updateRoleForm" style="width: 100%; margin: 10 auto;">
						<table>
							<tr>
								<div class="layui-form-item2" id="updateOrderDiv">
									<div class="layui-inline">
										<label class="layui-form-label2"><a
											style="color: red;">*</a>角色名称</label>
										<div id="optionNameDiv" class="layui-input-block">
											<input  type="hidden" id="roleInputId" name="roleId" value="">
											<input  type="text" id="roleInputName" name="roleName" value="" class="layui-input">
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
	                <button id="updateRoleBtn" type="button" class="btn btn-primary">修改</button>
	            </div>
	        </div><!-- /.modal-content -->
	    </div><!-- /.modal -->
	</div>
	
	<!-- 修改权限模态框（Modal -->
	<div class="modal fade" id="permissionModal" tabindex="-1"
		role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">权限分配</h4>
				</div>
				<div class="modal-body">
					<ul id="permissionTree" class="ztree"></ul>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" id="addPermissionBtn">分配权限</button>
				</div>
			</div>
		</div>
	</div>
	
<!-- 公共的js样式 -->
<%@include file="/commons/common-js.jsp"%>
<script src="${ctp }/static/zTree_v3-3.5.28/js/jquery.ztree.all.min.js"></script>


	<script type="text/javascript">
	
	
		var treeObj;
	
		var param ={};
	
		var page = {
			pn : 1,
			ps : 5,
			lastPage : 10
		};
		$(function() {
			page.pn = 1;
			getRoles();
		});

		function getRoles() {
			$.ajax({
				url : "${ctp}/role/roles",
				data : {
					pn : page.pn,
					ps : page.ps
				},
				success : function(a) {
					showRoles(a);
				}
			});
		}
		function showRoles(data) {
			// 1.清空数据
			$("ul.pagination").empty();
			$("#roleTable tbody").empty();

			//2.显示表格
			buildTable(data);

			//3.显示分页条
			buildPage(data);
		}

		function buildTable(data) {
			var roleData = data.list;
			$.each(roleData,function() {
				//创建tr
				var tr = $("<tr></tr>");
				//创建td
	
				var btnTd = $("<td></td>")
				//操作列
	
				btnTd.append('<button roleId = "' + this.roleId + '" type = "button" class = "permissionModelShowBtn btn btn-sm btn-success" title="添加权限" ><i class="fa fa-qrcode"></i></button>')
					 .append('&nbsp;<button roleId = "' + this.roleId + '" type = "button"  class = "updateRoleModelShowBtn btn btn-sm btn-info" title="修改信息" ><i class="fa fa-pencil"></i></button>')
					 .append('&nbsp;<button roleId = "' + this.roleId + '" type = "button" class = "deleteRoleBtn btn btn-sm btn-danger" title="删除角色" id="removeUserBtn"><i class="fa fa-trash"></i></button>');
	
				tr.append("<td>" + this.roleId + "</td>")
				  .append("<td>" + this.roleName + "</td>")
				  .append(btnTd)
				  .appendTo($("#roleTable"));
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
			getRoles();
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
		
		//------------------------------------------------------------------------------------------------
		//显示权系树
		$("body").on("click", ".permissionModelShowBtn", function() {
			param.roleId = $(this).attr("roleId");
			//初始化权限树
			initPermissionTree();
			$("#permissionModal").modal({
				backdrop : 'static',
				show : true
			});
		});
		
		//初始化权限树；
		function initPermissionTree() {
			var setting = {
					
					check : {
						enable : true
					},
					
					data : {
						simpleData : {
							enable : true,
							idKey: "permissionId",
							pIdKey: "parentId",
							rootPId: 0
	
						},
						
						key : {
							url : "haha"
						}
					}
			};
			
			//发送请求获取所有权限并初始化权限树
			$.post("${ctp}/per/permissions", function(data) {
				treeObj = $.fn.zTree.init($("#permissionTree"), setting, data);
				//初始化完成后返回ztree对象
				treeObj.expandAll(true);
				
				//作用，获取当前角色已有的权限  param.roleId;
				$.get("${ctp}/per/roleperm", param, function(data) {
					//perms获取不到数据
					var perms = data.content;
					$.each(perms, function() {
						//查到这个节点并选中
						var node = treeObj.getNodeByParam("permissionId", this.permissionId, null);
						//第三个禁用掉，否则，父元素被选中后，子元素就全部选中
						treeObj.checkNode(node, true, false);
					});

				});
			});
		}
		
		//更新权限
		$("#addPermissionBtn").click(function() {
			//点击找到所有选中的权限id。
			var allCheckedNodes = treeObj.getCheckedNodes(true);
			var temp = "";
			$.each(allCheckedNodes, function() {
				temp += this.permissionId + ",";
			});

			//提交的数据
			param.permissionIds = temp;
			//发ajax请求更新
			$.post("${ctp}/per/update", param, function(data) {
				layer.msg(data.msg);
				
				//更新完成关闭模态框
				$("#permissionModal").modal('hide');
			}).fail(function() {
				layer.msg("网络问题，权限更新失败！");
			});
		});
		
//------------------------------------------------------------------------------------------------
		$("#querryOneBtn").click(function(){
			//获取表单数据
			var data = $("#querryRoleForm").serialize();
			var dataVal = document.getElementById("inputId").value;
			
			page.pn = 1;//第一页数据
			if (dataVal) {
				getRoleOne(data);
			}else{
				getRoles();
			}
		});
		
		function getRoleOne(data){
			$.post("${ctp}/role/querryByLike",data,function(data){
				showRoles(data);
			});
		}

		//------------------------------------------------------------------------------------------------
		//删除一个角色
		$("body").on("click", ".deleteRoleBtn", function() {

			param.roleId = $(this).attr("roleId");
			layer.confirm("确认删除【" + param.roleId + "】号员工吗？", {
				btn : [ '确定删除', '取消删除' ]
			}, function() {
				$.get("${ctp}/role/delete", param, function(data) {
					layer.msg(data.msg);
				});
				location.reload();
				//跳转当前页
				page.pn = page.pageNum;
				getRoles();
			}, function() {
				layer.msg("....");
			});
			return false;
		});
//------------------------------------------------------------------------------------------------
		//添加角色
		$("#addRoleBtn").click(function() {
			//获取表单数据
			var data = $("#addRoleForm").serialize();
			artDialog.confirm("question", "提示", "确定是否添加地址？", function(){
				$.post("${ctp }/role/add", data, function(data) {
					//后台返回的内容显示提示
					layer.msg(data.msg);
					//关闭模态框
					$("#newRoleModelBtn").modal('hide');
					//后台清空模态框里面的内容
					$("#newRoleModelBtn input").val("");
					//来到最后一页；
					page.pn = page.lastPage + 10;
					getRoles();

					//失败返回的msg
				}).fail(function() {
					layer.msg(data.msg);
					//关闭模态框
					$("#newRoleModelBtn").modal('hide');
					//后台清空模态框里面的内容
					$("#newRoleModelBtn input").val("");
					//来到最后一页；
					page.pn = page.lastPage + 10;
					getRoles();
					
				});
			});
		});
//------------------------------------------修改------------------------------------------------------
	//显示修改角色信息
	$("body").on("click", ".updateRoleModelShowBtn", function() {
   		param.roleId = $(this).attr("roleId");
   		//主要做回显功能，未实现
   		getUpdateRole();
	});	
	
	//获取修改数据
	function getUpdateRole(){
		$.ajax({
			url : "${ctp}/role/roles",
			data : {
				roleId : param.roleId
			},
			dataType: 'json',
			success : function(data) {
				
				showUpdateRole(data);
			}
		});
		
	}
	//显示修改按钮查出的数据
	function showUpdateRole(data){
		
// 		console.log(data.list);
		
		var roleData = data.list[0];
		
		//回显部分
		$("#roleInputId").attr('value',roleData.roleId);
		document.getElementById("roleInputName").value = roleData.roleName; 
		
			
		 //显示模态框
   		$("#updateRoleModelBtn").modal({
   			backdrop : 'static',
   			show : true
   		});
		 return false;
	}
	
	//提交表单信息
	$("#updateRoleBtn").click(function(){
		//获取表单信息
		var data = $("#updateRoleForm").serialize();

		artDialog.confirm("question", "提示", "确定是否添加地址？", function(){
			$.post("${ctp }/role/update", data, function(data) {
				//后台返回的内容显示提示
				layer.msg(data.msg);
				//关闭模态框
				$("#updateRoleModelBtn").modal('hide');
				//后台清空模态框里面的内容
				$("#updateRoleModelBtn input").val("");
				$("#updateRoleModelBtn input").val("");
				//跳转当前页
				page.pn = page.pageNum;
				getRoles();
				//失败返回的msg
			}).fail(function() {
				layer.msg(data.msg);
				//关闭模态框
				$("#updateRoleModelBtn").modal('hide');
				//后台清空模态框里面的内容
				$("#updateRoleModelBtn input").val("");
				//跳转当前页
				page.pn = page.pageNum;
				getRoles();
			});
		});
		
	});
	
	</script>
</body>

</html>
