<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="favicon.ico">
<title>用户管理页面</title>

<!-- css样式抽取 -->
<!-- 公共的css样式 -->
<%@include file="/commons/common-css.jsp"%>

<!-- 客户管理模块--用户管理页面 -->

</head>

<body style="overflow-x: hidden;">
	<section id="container"> 内容部分开始 <section id="main-content">
	<section class="wrapper">

	<div class="row">
		<div class="col-lg-12">
			<ul class="breadcrumb">
				<li><a href="#"><i class="fa fa-home"></i>首页</a></li>
				<li>»</li>
				<li><a href="#">用户管理</a></li>
				<li>»</li>
				<li class="active">用户信息管理</li>
			</ul>
		</div>
	</div>

	<div class="row">
		<div class="col-sm-9">

			<section> <!-- 按钮触发模态框 -->
			<button class="btn btn-info btn-primary" style="margin-left: 5%;"
				data-toggle="modal" data-target="#myModal111">新增用户</button>
			</button>
			<button type="button" class="btn  btn-info" style="margin-left: 5%;"
				id="removeUserBtn">
				<i class="fa fa-level-up"> </i> 删除用户
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
						<input id="inputId" type="text" name="userId" placeholder="请输入用户id"
							class="layui-input">
					</div>
				</div>

				<div class="layui-inline" style="margin-top: -5px; margin-left: 5%;">
					<button type="button" id="querryBtn" class="layui-btn layui-btn-primary-search">查询</button>
				</div>
			</div>
		</form>
	</div>


	<!--table开始-->
	<div id="gundong">
		<table class="site-table table-hover" id="userTable"
			style="width: 100%;">
			<thead>
				<!-- 目录列表 -->
				<tr>
					<th width="30"><input id="allCheckBox" type="checkbox">全选</th>
					<th>用户id</th>
					<th>用户名</th>
					<th>联系方式</th>
					<th>邮箱</th>
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
	</section> </section> <!--编辑   弹出层开始--> <!-- 新增用户窗口模态框（Modal） -->
	<div class="modal fade" id="myModal111" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">新增用户窗口</h4>
				</div>

				<legend
					style="font-size: 14px; border-bottom: 1px solid #fff; width: auto;">
					<a style="color: red;">*为必填项</a>
				</legend>
				<div class="modal-body">
					<form class="layui-form" id="addUser-form" action=""
						style="width: 95%; margin: 10 auto;">
						<div class="layui-form-item2" align="center">
							<div class="layui-inline">
								<label class="layui-form-label2"><a style="color: red;">*</a>用户名</label>
								<div class="layui-input-block">
									<input type="text" name="userName" class="layui-input">
								</div>
							</div>
							<div class="layui-inline" style="margin-left: 10%;">
								<label class="layui-form-label2"><a style="color: red;">*</a>联系方式</label>
								<div class="layui-input-block">
									<input type="text" name="phone" class="layui-input">
								</div>
							</div>
						</div>
						<div class="layui-form-item2" align="center">
							<div class="layui-inline">
								<label class="layui-form-label2"><a style="color: red;">*</a>微信账号</label>
								<div class="layui-input-block">
									<input type="text" name="openId" class="layui-input">
								</div>
							</div>
							<div class="layui-inline" style="margin-left: 10%;">
								<label class="layui-form-label2">微信昵称</label>
								<div class="layui-input-block">
									<input type="text" name="wechatName" class="layui-input">
								</div>
							</div>
						</div>
						<div class="layui-form-item2" align="center">
							<div class="layui-inline">
								<label class="layui-form-label2">所在公司</label>
								<div class="layui-input-block">
									<input type="text" name="company" class="layui-input">
								</div>
							</div>
							<div class="layui-inline" style="margin-left: 10%;">
								<label class="layui-form-label2">所在部门</label>
								<div class="layui-input-block">
									<input type="text" name="department" class="layui-input">
								</div>
							</div>
						</div>

						<div class="layui-form-item2" align="center">
							<div class="layui-inline">
								<label class="layui-form-label2">所在区域</label>
								<div class="layui-input-block">
									<input type="text" name="area1" class="layui-input">
								</div>
							</div>
							<div class="layui-inline" style="margin-left: 10%;">
								<label class="layui-form-label2"><a style="color: red;">*</a>邮箱地址</label>
								<div class="layui-input-block">
									<input type="text" name="email" class="layui-input">
								</div>
							</div>
						</div>

						<div class="layui-form-item2" align="center">
							<div class="layui-inline">
								<label class="layui-form-label2"><a style="color: red;">*</a>现任职务</label>
								<div class="layui-input-block">
									<input type="text" name="duty" class="layui-input">
								</div>
							</div>
							<div class="layui-inline" style="margin-left: 10%;">
								<label class="layui-form-label2">备 注</label>
								<div class="layui-input-block">
									<input type="text" name="phoneremark" class="layui-input">
								</div>
							</div>
						</div>

						<!--发货方-->
						<div class="layui-form-item2" style="margin-top: 15px;">
							<label class="layui-form-label"
								style="color: #FF3030; font-weight: bold;">详细地址</label>
							<div class="layui-input-block">
								<input type="text" name="address" class="layui-input">
							</div>
						</div>
					</form>
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" id="addNewUserBtn" class="btn btn-primary">创建</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal --> <!--分页开始--> <!--弹出层结束--> <!-- 添加角色模态框开始 --> <!-- 模态框（Modal） -->
	<div class="modal fade" id="userModel" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" id="userRoleDiv" align="center">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">用户角色框</h4>
				</div>
				<div class="modal-body">
					<form role="form" class="form-inline">
						<div class="form-group">
							<label for="exampleInputPassword1">全部角色</label><br> <select
								id="noRoleSelect" class="form-control" multiple size="10"
								style="width: 120px; overflow-y: auto;">
							</select>
						</div>
						<div class="form-group">
							<ul>
								<li id="addRoleBtn" class="btn btn-default"><label>》》设置》》</label></li>
								<!-- glyphicon glyphicon-chevron-right -->
								<br>
								<li id="removeRoleBtn" class="btn btn-default"
									style="margin-top: 20px;"><label>《《解除《《</label></li>
								<!-- glyphicon glyphicon-chevron-lef -->
							</ul>
						</div>
						<div class="form-group" style="margin-left: 40px;">
							<label for="exampleInputPassword1">我的角色</label><br> <select
								id="myRoleSelect" class="form-control" multiple size="10"
								style="width: 120px; overflow-y: auto;">
							</select>
						</div>
					</form>

				</div>
				<div class="modal-footer">
					<button type="button" id="closeRoleBtn" class="btn btn-primary"
						data-dismiss="modal">关闭</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
	<!-- 添加角色模态框结束 --> 
	
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

		$('#gundong').niceScroll({
			cursorcolor : "#ccc",//#CC0071 光标颜色
			cursoropacitymax : 1, //改变不透明度非常光标处于活动状态（scrollabar“可见”状态），范围从1到0
			touchbehavior : false, //使光标拖动滚动像在台式电脑触摸设备
			cursorwidth : "5px", //像素光标的宽度
			cursorborder : "0", // 	游标边框css定义
			cursorborderradius : "5px",//以像素为光标边界半径
			autohidemode : false, //是否隐藏滚动条
		});

		//页面加载完成后显示第一页数据
		$(function() {
			page.pn = 1;//第一页数据
			getusers();

		});

		//-------------------------修改---------------------------------
		$("body").on("click", ".updateMyUserBtn", function() {

			param.userId = $(this).attr("userId");
// 			alert(param.userId);

			location.href = "${ctp }/user/querryUser?userId=" + param.userId;

		});
		//----------------------------------------------------------		

		//根据查询id查询用户信息 
		$("#querryBtn").click(function() {

			//获取表单数据
			var params = $("#querryForm").serialize();
			var dataVal = document.getElementById("inputId").value;
			
// 			alert(params);
// 			alert(dataVal);
			page.pn = 1;//第一页数据
			
			if (dataVal = null) {
				getusers();
			}else{
				
				getUserOne(params);
			}

			//发起请求
		});

		//更新我的角色操作
		$(function() {
			$("#myRoleSelect option").each(function() {
				var delRoleId = this.value;
				// 						alert(this.value+"aaa");
				$("#noRoleSelect option[value=" + delRoleId + "]").remove();
			});
		});
		//更新所有角色操作
		$(function() {
			$("#noRoleSelect option").each(function() {
				var delRoleId = this.value;
				// 						alert(this.value+"bbb");
				$("#myRoleSelect option[value=" + delRoleId + "]").remove();
			});
		});

		function initPageObject(data) {
			page.pn = data.pageNum;
			page.ps = data.pageSize;
			page.lastPage = data.lastPage;
		}

		//初始化更新所有的角色
		function initAllRole() {
			$("#noRoleSelect").empty(); //清空所有角色

			//获取所有的角色名
			$.ajax({
				type : "GET",
				url : "${ctp}/user/userRole",
				success : function(a) {
					//<option value="pm">PM</option>
					$.each(a, function() {
						$("#noRoleSelect").append(
								'<option value="'+this.roleId+'">'
										+ this.roleName + '</option>');
					});
				}
			});
		}

		//更新我的角色
		function initMyRole() {
			$("#myRoleSelect").empty(); //清空所有角色

			//发送请求获取用户的所有角色
			$.get("${ctp}/user/userRole", param, function(data) {

				$.each(data, function() {
					$("#myRoleSelect").append(
							'<option value="'+this.roleId+'">' + this.roleName
									+ '</option>');
				});
			});

		}

		//添加角色单机事件
		$("#addRoleBtn").click(function() {
			//1、添加数据
			var params = {};
			params.userId = param.userId;
			params.roleIds = "";

			/*添加或者删除角色*/
			$("#noRoleSelect :selected").each(function() {
				params.roleIds += this.value + ",";
			})

			//用户添加角色
			$.post("${ctp}/user/addRole", params).done(function(data) {
				layer.msg(data.msg);
				$("#noUserRolesSelect :selected").appendTo($("#myRoleSelect"));

				//获取所有的角色
				initAllRole();

				//获取我的角色
				initMyRole();

			}).fail(function() {
				layer.msg("网络异常！");
			});
		});

		//绑定单机事件，--删除用户角色
		$("#removeRoleBtn").click(function() {
			//1、发送请求进行添加
			var params = {};
			params.userId = param.userId;
			params.roleIds = "";
			$("#myRoleSelect :selected").each(function() {
				params.roleIds += this.value + ",";

			});

			//删除角色
			$.post("${ctp}/user/removeRole", params).done(function(data) {
				layer.msg(data.msg);
				//2、页面效果过来
				$("#myRoleSelect :selected").appendTo($("#noUserRolesSelect"));

				//初始化我的角色
				initMyRole();

			}).fail(function() {
				// 				
				// 				alert(param.userId);
				layer.msg("网络异常！");
			});

		})

		//初始化用户，并处理添加角色功能的回显
		function iniUser() {
			// 			alert(param.userId);
			var setting = {
				check : {
					enable : true
				},
				data : {
					simpleData : {
						enable : true,
						idKey : "userId",
						pIdKey : "roleId",
						rootPId : 0
					},
					key : {
						url : "666"
					}
				}
			};

		}

		//删除一个用户
		$("body").on("click", ".deleteUserBtn", function() {

			param.userIds = $(this).attr("userId");
			alert(param.userIds);
			layer.confirm("确认删除【" + param.userIds + "】号员工吗？", {
				btn : [ '确定删除', '取消删除' ]
			}, function() {
				$.get("${ctp}/user/delUser", param, function(data) {
					layer.msg(data.msg);
				});
				location.reload();

				//跳转当前页
				page.pn = page.pageNum;
				getusers();
			}, function() {
				layer.msg("....");
			});

			return false;
		})

		//批量删除用户  
		$("#removeUserBtn").click(function() {
			//找到选中的员工的checkbox并获取到id
			param.userIds = "";

			$(".itemCheckBox:checked").each(function() {
				param.userIds += $(this).attr("userId") + ",";
			});

			// 			alert(param.userIds);

			layer.confirm("确认删除【" + param.userIds + "】号员工吗？", {
				btn : [ "确定删除", "取消删除" ]
			}, function() {
				//删除员工
				$.post("${ctp }/user/delUser", param, function(data) {
					//返回参数
					layer.msg(data.msg);

					//来到最后一页；
					page.pn = page.lastPage + 10;
					getusers();
				});
			}, function() {

			});
		});

		//----------------获取所有用户列表操作,以及遍历所有用户角色和所有的角色-----------------------
		//获取所有用户列表操作,以及遍历所有用户角色和所有的角色
		$("body").on("click", ".userModelShowBtn", function() {

			var userId = $(this).attr("userId");
			param.userId = userId;

			//初始化用户
			iniUser();
			$("#userModel").modal({
				backdrop : 'static',
				show : true
			});

			//发送请求获取用户的所有角色
			initMyRole();
			//获取所有的角色名
			initAllRole();

			$("#closeRoleBtn").click(function() {
				$("#myRoleSelect").empty(); //清空我的角色
				$("#noRoleSelect").empty(); //清空所有角色

			});

		});

		//---------------------单机事件-切换跳转显示某一页的数据-----------------------
		//绑定单机事件
		$(".pagination").on("click", ".jumpli", function() {

			//查出某页的数据
			page.pn = $(this).attr("pn");
			getusers();
		});

		//ajax方式获取所有用户的数据
		function getusers() {
			$.ajax({
				url : "${ctp}/user/querry",
				data : {
					pn : page.pn,
					ps : page.ps
				},
				success : function(a) {

					showUsers(a);
				}
			});
		}
		//获取用户的数据
		function getUserOne(data) {
			$.post("${ctp}/user/querry",data,function(data){
				showUsers(data);
			});
		}

		//---------------------添加用户--------------------------------------------
		//保存添加用户按钮绑定单机事件
		$("#addNewUserBtn").click(function() {
			//获取表单数据
			var data = $("#addUser-form").serialize();

			// 			alert(data.userName);

			artDialog.confirm("question", "提示", "确定是否添加用户？", function() {
				$.post("${ctp }/user/add", data, function(data) {
					//后台返回的内容显示提示
					layer.msg(data.msg);
					//关闭模态框
					$("#myModal111").modal('hide');
					//后台清空模态框里面的内容
					$("#myModal111 input").val("");
					//来到最后一页；
					page.pn = page.lastPage + 10;
					getusers();

					//失败返回的msg
				}).fail(function() {
					layer.msg(data.msg);
					//关闭模态框
					$("#mymodelDiv").modal('hide');
					//后台清空模态框里面的内容
					$("#mymodelDiv input").val("");
					//来到最后一页；
					page.pn = page.lastPage + 10;
					getusers();
				});
			});
		});

		//-----------------显示所有用户------------------------------

		//显示所有用户
		function showUsers(data) {
			// 1.清空数据
			$("ul.pagination").empty();
			$("#userTable tbody").empty();

			//2.显示表格
			buildTable(data);

			//3.显示分页条
			buildPage(data);
		}

		//表格显示
		function buildTable(data) {
			// 			alert(data.list+"++++");
			var userData = data.list;
			// 			alert(data.list+"----");

			$.each(userData,function() {
				//创建tr
				var tr = $("<tr></tr>");
				//创建td

				var btnTd = $("<td></td>")
				//操作列

				btnTd.append('<button userId = "'+ this.userId+ '" type = "button" class = "userModelShowBtn btn btn-sm btn-success" title="添加角色" ><i class="fa fa-qrcode"></i></button>')
					 .append('&nbsp;<button userId = "'+ this.userId+ '" type = "button" class = "updateMyUserBtn btn btn-sm btn-info" title="查看信息" ><i class="fa fa-pencil"></i></button>')
					 .append('&nbsp;<button userId = "'+ this.userId+ '" type = "button" class = "deleteUserBtn btn btn-sm btn-danger" title="删除用户" id="removeUserBtn"><i class="fa fa-trash"></i></button>');

				tr.append("<td><input type='checkbox' userId="+ this.userId +" class='itemCheckBox'></td>")
				  .append("<td>" + this.userId + "</td>")
				  .append("<td>" + this.userName+ "</td>")
				  .append("<td>" + this.phone + "</td>")
				  .append("<td>" + this.email + "</td>")
				  .append(btnTd).appendTo($("#userTable tbody"));
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
		
		
		
	</script>
</body>

</html>
