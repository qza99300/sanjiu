<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="favicon.ico">
<title>信息互动页面</title>

<!-- css样式抽取 -->
<!-- 公共的css样式 -->
<%@include file="/commons/common-css.jsp"%>

<!--社区管理--信息互动页面  -->
<!-- pc端不做发布操作 -->

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
				<li><a href="#">社区管理</a></li>
				<li>»</li>
				<li class="active">信息互动</li>
			</ul>
		</div>
	</div>

	<div class="row">
		<div class="col-sm-9">
			<section>
			<button type="button" class="btn btn-info btn-primary"
				style="margin-left: 5%;" onclick="Newdeliverer()">
				<i class="fa fa-edit"> </i> 新增领导
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
		<form class="layui-form" action="">
			<div class="layui-form-item">
				<div class="layui-inline">
					<label class="layui-form-label">领导名称</label>
					<div class="layui-input-block">
						<input type="text" placeholder="请输入领导名称" class="layui-input">
					</div>
				</div>

				<div class="layui-inline">
					<label class="layui-form-label">所属公司</label>
					<div class="layui-input-block">
						<input type="tel" placeholder="请输入公司名称" class="layui-input">
					</div>
				</div>



				<div class="layui-inline" style="margin-top: -5px; margin-left: 5%;">
					<button class="layui-btn layui-btn-primary-search">查询</button>
				</div>



			</div>
		</form>
	</div>


	<!--table开始-->
	<table class="site-table table-hover">
		<thead>
			<tr>
				<!--<th><input type="checkbox" id="">全选</th>-->
				<th>序号</th>
				<th>领导姓名</th>
				<th>职称</th>
				<th>所属公司</th>
				<th>所属部门</th>
				<th>联系方式</th>
				<th>操作</th>
			</tr>
		</thead>
		<!--内容容器-->
		<tbody>
			<tr>
				<td>1</td>
				<th>小领导</th>
				<th>职称是什么</th>
				<th>华为技术有限公司</th>
				<th>开发部</th>
				<th>0795-6859655</th>
				<td>
					<button type="button" class="btn btn-sm btn-info" title="编辑"
						onclick="Examine()">
						<i class="fa fa-pencil"> </i>
					</button>
					<button type="button" class="btn btn-sm btn-danger" title="删除..."
						onclick="Del()">
						<i class="fa fa-trash"> </i>
						<!--删除-->
					</button>
				</td>
			</tr>
		</tbody>
		<tbody>
			<tr>
				<td>2</td>
				<th>大领导</th>
				<th>职称是什么</th>
				<th>华为技术有限公司</th>
				<th>设计部</th>
				<th>0795-6859655</th>
				<td>
					<button type="button" class="btn btn-sm btn-info" title="编辑"
						onclick="Examine()">
						<i class="fa fa-pencil"> </i>
					</button>
					<button type="button" class="btn btn-sm btn-danger" title="删除..."
						onclick="Del()">
						<i class="fa fa-trash"> </i>
						<!--删除-->
					</button>
				</td>
			</tr>
		</tbody>
		<tbody>
			<tr>
				<td>3</td>
				<th>领导</th>
				<th>职称是什么</th>
				<th>华为技术有限公司</th>
				<th>测试部</th>
				<th>0795-6859655</th>
				<td>
					<button type="button" class="btn btn-sm btn-info" title="编辑"
						onclick="Examine()">
						<i class="fa fa-pencil"> </i>
					</button>
					<button type="button" class="btn btn-sm btn-danger" title="删除..."
						onclick="Del()">
						<i class="fa fa-trash"> </i>
						<!--删除-->
					</button>
				</td>
			</tr>
		</tbody>
		<tbody>
			<tr>
				<td>4</td>
				<th>大领导</th>
				<th>职称是什么</th>
				<th>华为技术有限公司</th>
				<th>营销部</th>
				<th>0795-6859655</th>
				<td>
					<button type="button" class="btn btn-sm btn-info" title="编辑"
						onclick="Examine()">
						<i class="fa fa-pencil"> </i>
					</button>
					<button type="button" class="btn btn-sm btn-danger" title="删除..."
						onclick="Del()">
						<i class="fa fa-trash"> </i>
						<!--删除-->
					</button>
				</td>
			</tr>
		</tbody>
		<tbody>
			<tr>
				<td>5</td>
				<th>无劳务</th>
				<th>职称是什么</th>
				<th>华为技术有限公司</th>
				<th>设计部</th>
				<th>0795-6859655</th>
				<td>
					<button type="button" class="btn btn-sm btn-info" title="编辑"
						onclick="Examine()">
						<i class="fa fa-pencil"> </i>
					</button>
					<button type="button" class="btn btn-sm btn-danger" title="删除..."
						onclick="Del()">
						<i class="fa fa-trash"> </i>
						<!--删除-->
					</button>
				</td>
			</tr>
		</tbody>
		<tbody>
			<tr>
				<td>6</td>
				<th>大领导</th>
				<th>职称是什么</th>
				<th>华为技术有限公司</th>
				<th>财务部</th>
				<th>0795-6859655</th>
				<td>
					<button type="button" class="btn btn-sm btn-info" title="编辑"
						onclick="Examine()">
						<i class="fa fa-pencil"> </i>
					</button>
					<button type="button" class="btn btn-sm btn-danger" title="删除..."
						onclick="Del()">
						<i class="fa fa-trash"> </i>
						<!--删除-->
					</button>
				</td>
			</tr>
		</tbody>

	</table>
	<!--分页容器--> <nav aria-label="Page navigation" style="float: right;">
	<ul class="pagination">

		<li class="disabled"><a href="#"> <i
				class="fa fa-angle-double-left"></i>

		</a></li>

		<li><a href="#">首页</a></li>



		<li class="active"><a href="#">1</a></li>



		<li><a href="#">2</a></li>



		<li><a href="#">3</a></li>



		<li><a href="#">4</a></li>



		<li><a href="#">5</a></li>

		<li><a href="#">末页</a></li>



		<li><a href="#"> <i class="fa fa-angle-double-right"></i>

		</a></li>

	</ul>
	</nav>



	</div>
	</section> </section> <!--弹出层开始-->
	<div class="pop-cot">

		<!--编辑领导-->
		<div id="examine-xg" class="pop-div student-info"
			style="width: 768px;">
			<fieldset class="layui-elem-field" style="margin-top: 20px;">
				<legend
					style="font-size: 14px; border-bottom: 1px solid #fff; width: auto;">
					<a style="color: red;">*为必填项</a>
				</legend>

				<form class="layui-form" action=""
					style="width: 95%; margin: 0 auto;""">
					<div class="layui-form-item2">
						<div class="layui-inline">
							<label class="layui-form-label2"><a style="color: red;">*</a>领导姓名</label>
							<div class="layui-input-block">
								<input type="text" id="" class="layui-input">
							</div>
						</div>
						<div class="layui-inline" style="margin-left: 10%;">
							<label class="layui-form-label2"><a style="color: red;">*</a>职称</label>
							<div class="layui-input-block">
								<input type="text" class="layui-input">
							</div>
						</div>
					</div>
					<div class="layui-form-item2">
						<div class="layui-inline">
							<label class="layui-form-label2"><a style="color: red;">*</a>所属公司</label>
							<div class="layui-input-block">
								<input type="text" id="" class="layui-input">
							</div>
						</div>
						<div class="layui-inline" style="margin-left: 10%;">
							<label class="layui-form-label2"><a style="color: red;">*</a>所属部门</label>
							<div class="layui-input-block">
								<input type="text" class="layui-input">
							</div>
						</div>
					</div>
					<div class="layui-form-item2">
						<div class="layui-inline">
							<label class="layui-form-label2"><a style="color: red;">*</a>联系方式</label>
							<div class="layui-input-block">
								<input type="tel" id="" class="layui-input">
							</div>
						</div>
					</div>

					<div class="aui_buttons" style="margin-top: 20px;">
						<button class="aui_state_highlight" type="button">确定</button>
						<button class="aui_state_highlighth" type="button">取消</button>
					</div>

				</form>
			</fieldset>
		</div>


		<!--新增领导-->
		<div id="new-deliverer" class="pop-div student-info"
			style="width: 768px;">
			<fieldset class="layui-elem-field" style="margin-top: 20px;">
				<legend
					style="font-size: 14px; border-bottom: 1px solid #fff; width: auto;">
					<a style="color: red;">*为必填项</a>
				</legend>

				<form class="layui-form" action=""
					style="width: 95%; margin: 0 auto;""">
					<div class="layui-form-item2">
						<div class="layui-inline">
							<label class="layui-form-label2"><a style="color: red;">*</a>领导姓名</label>
							<div class="layui-input-block">
								<input type="text" id="" class="layui-input">
							</div>
						</div>
						<div class="layui-inline" style="margin-left: 10%;">
							<label class="layui-form-label2"><a style="color: red;">*</a>职称</label>
							<div class="layui-input-block">
								<input type="text" class="layui-input">
							</div>
						</div>
					</div>
					<div class="layui-form-item2">
						<div class="layui-inline">
							<label class="layui-form-label2"><a style="color: red;">*</a>所属公司</label>
							<div class="layui-input-block">
								<input type="text" id="" class="layui-input">
							</div>
						</div>
						<div class="layui-inline" style="margin-left: 10%;">
							<label class="layui-form-label2"><a style="color: red;">*</a>所属部门</label>
							<div class="layui-input-block">
								<input type="text" class="layui-input">
							</div>
						</div>
					</div>
					<div class="layui-form-item2">
						<div class="layui-inline">
							<label class="layui-form-label2"><a style="color: red;">*</a>联系方式</label>
							<div class="layui-input-block">
								<input type="tel" id="" class="layui-input">
							</div>
						</div>
					</div>


					<div class="layui-form-item2">
						<div class="layui-inline">
							<label class="layui-form-label2">设置账号</label>
							<div class="layui-input-block">
								<input type="text" id="" class="layui-input" placeholder="请输入账号">
							</div>
						</div>
					</div>

					<div class="aui_buttons" style="margin-top: 20px;">
						<button class="aui_state_highlight" type="button">确定</button>
						<button class="aui_state_highlighth" type="button">取消</button>
					</div>

				</form>
			</fieldset>
		</div>


	</div>



	<!-- JS --> <script type="text/javascript"
		src="${ctp }/js/jquery-1.8.3.min.js"></script><!-- BASIC JQUERY 1.8.3 LIB. JS -->

	<script type="text/javascript" src="${ctp }/js/bootstrap.min.js"></script>
	<!-- BOOTSTRAP JS --> <script type="text/javascript"
		src="${ctp }/js/jquery.dcjqaccordion.2.7.js"></script> <!-- 左测点击拉下去 JS -->

	<script type="text/javascript" src="${ctp }/js/jquery.nicescroll.js"></script>
	<!-- 滚动条 JS --> <script type="text/javascript"
		src="${ctp }/js/common-scripts.js"></script> <!-- 公用的 JS --> <!--地址选择js-->
	<script type="text/javascript" src="${ctp }/js/area.js"></script> <script
		type="text/javascript" src="${ctp }/js/select.js"></script> <script
		type="text/javascript" src="${ctp }/js/placeholder-IE789.js"></script> <!--弹出层js引用-->
	<script type="text/javascript" src="${ctp }/js/jquery.artDialog.source.js"></script>
	<script type="text/javascript" src="${ctp }/js/iframeTools.source.js"></script>
	<script type="text/javascript" src="${ctp }/js/msgbox.js"></script> <script
		type="text/javascript">
		//查看
		function Examine() {
			artDialog({
				id : 'EditRember-form',
				title : '编辑领导',
				content : document.getElementById('examine-xg'),
			})
		}

		//新增领导
		function Newdeliverer() {
			artDialog({
				id : 'EditRember-form',
				title : '新增领导',
				content : document.getElementById('new-deliverer'),
			})
		}

		//删除
		function Del() {
			artDialog.confirm("question", "提示", "您确定删除吗?", function() {
				$.ajax({
					url : "basicInformation/customerManagement.html",
					type : "post",
					datatype : "json",
					data : {
						"groupmemberid" : groupmemberid,
						"userinfoid" : userinfoid
					},
					success : function(data) {
						console.log(data);
						if (data.result == "success") {
							artDialog.alert('succeed', '提示', data.msg,
									function() {
										window.location.reload();
									});
						} else {
							artDialog.alert('false', '提示', data.msg,
									function() {
										window.location.reload();
									});
						}
					}
				})
			})
		}
	</script>
</body>

</html>




