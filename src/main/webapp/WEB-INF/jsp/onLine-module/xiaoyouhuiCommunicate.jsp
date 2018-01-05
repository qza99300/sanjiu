<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="favicon.ico">
<title>校友会沟通页面</title>
<!-- css样式抽取 -->
<!-- 公共的css样式 -->
<%@include file="/commons/common-css.jsp"%>

<!--线上沟通模块--校友会沟通页面  -->

</head>

<body>

	<section id="container"> <!--内容部分开始--> <section
		id="main-content"> <section class="wrapper">

	<div class="row">
		<div class="col-lg-12">
			<ul class="breadcrumb">
				<li><a href="#"><i class="fa fa-home"></i>首页</a></li>
				<li>»</li>
				<li><a href="#">线上沟通</a></li>
				<li>»</li>
				<li class="active">校友会沟通</li>
			</ul>
		</div>
	</div>

	<div class="row">
		<div class="col-sm-9">
			<section>
			<button type="button" class="btn btn-info btn-primary"
				style="margin-left: 5%;" onclick="Newdeliverer()">
				<i class="fa fa-edit"> </i> 新增承运商
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
					<label class="layui-form-label">姓名</label>
					<div class="layui-input-block">
						<input type="text" placeholder="请输入姓名" class="layui-input">
					</div>
				</div>

				<div class="layui-inline">
					<label class="layui-form-label">公司名称</label>
					<div class="layui-input-block">
						<input type="tel" placeholder="请输入公司名称" class="layui-input">
					</div>
				</div>

				<div class="layui-inline">
					<label class="layui-form-label">电话</label>
					<div class="layui-input-block">
						<input type="tel" placeholder="请输入电话" class="layui-input">
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
				<th>公司名称</th>
				<th>联系人</th>
				<th>电话</th>
				<th>地址</th>
				<th>微信号</th>
				<th>操作</th>
			</tr>
		</thead>
		<!--内容容器-->
		<tbody>
			<tr>
				<td>1</td>
				<th onclick="Examine()"><a style="text-decoration: underline;">淑发物流有限公司</a></th>
				<th>承运商</th>
				<th>13369865965</th>
				<th>广东省深圳市福田区</th>
				<th>lw25656</th>
				<td>
					<button type="button" class="btn btn-sm btn-info" title="编辑信息"
						onclick="Editinformation()">
						<i class="fa fa-edit"> </i>
						<!--设为默认-->
					</button>
					<button type="button" class="btn btn-sm btn-info" title="设为默认"
						onclick="Startusing()">
						<i class="fa fa-check"> </i>
						<!--设为默认-->
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
				<th onclick="Examine()"><a style="text-decoration: underline;">中铁物流有限公司</a></th>
				<th>承运商</th>
				<th>13369865965</th>
				<th>广东省深圳市福田区</th>
				<th>lw25656</th>
				<td>
					<button type="button" class="btn btn-sm btn-info" title="编辑信息"
						onclick="Editinformation()">
						<i class="fa fa-edit"> </i>
						<!--设为默认-->
					</button>
					<button type="button" class="btn btn-sm btn-info" title="设为默认"
						onclick="Startusing()">
						<i class="fa fa-check"> </i>
						<!--设为默认-->
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
				<th onclick="Examine()"><a style="text-decoration: underline;">韵达有限公司</a></th>
				<th>战三</th>
				<th>13369865965</th>
				<th>广东省深圳市福田区</th>
				<th>lw25656</th>
				<td>
					<button type="button" class="btn btn-sm btn-info" title="编辑信息"
						onclick="Editinformation()">
						<i class="fa fa-edit"> </i>
						<!--设为默认-->
					</button>
					<button type="button" class="btn btn-sm btn-info" title="设为默认"
						onclick="Startusing()">
						<i class="fa fa-check"> </i>
						<!--设为默认-->
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
				<th onclick="Examine()"><a style="text-decoration: underline;">天天快递</a></th>
				<th>无劳务</th>
				<th>13369865965</th>
				<th>广东省深圳市福田区</th>
				<th>lw25656</th>
				<td>
					<button type="button" class="btn btn-sm btn-info" title="编辑信息"
						onclick="Editinformation()">
						<i class="fa fa-edit"> </i>
						<!--设为默认-->
					</button>
					<button type="button" class="btn btn-sm btn-info" title="设为默认"
						onclick="Startusing()">
						<i class="fa fa-check"> </i>
						<!--设为默认-->
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
				<th onclick="Examine()"><a style="text-decoration: underline;">邮政快递</a></th>
				<th>承运商</th>
				<th>13369865965</th>
				<th>广东省深圳市福田区</th>
				<th>lw25656</th>
				<td>
					<button type="button" class="btn btn-sm btn-info" title="编辑信息"
						onclick="Editinformation()">
						<i class="fa fa-edit"> </i>
						<!--设为默认-->
					</button>
					<button type="button" class="btn btn-sm btn-info" title="设为默认"
						onclick="Startusing()">
						<i class="fa fa-check"> </i>
						<!--设为默认-->
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
				<th onclick="Examine()"><a style="text-decoration: underline;">顺丰物流有限公司</a></th>
				<th>刘晓吧</th>
				<th>13369865965</th>
				<th>广东省深圳市福田区</th>
				<th>lw25656</th>
				<td>
					<button type="button" class="btn btn-sm btn-info" title="编辑信息"
						onclick="Editinformation()">
						<i class="fa fa-edit"> </i>
						<!--设为默认-->
					</button>
					<button type="button" class="btn btn-sm btn-info" title="设为默认"
						onclick="Startusing()">
						<i class="fa fa-check"> </i>
						<!--设为默认-->
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

		<!--查看承运商-->
		<div id="examine-xg" class="pop-div student-info"
			style="width: 768px;">
			<fieldset class="layui-elem-field" style="margin-top: 20px;">
				<legend
					style="font-size: 14px; border-bottom: 1px solid #fff; width: auto;">
					<a style="color: red;"></a>
				</legend>

				<form class="layui-form" action=""
					style="width: 95%; margin: 0 auto;""">
					<div class="layui-form-item2">
						<div class="layui-inline">
							<label class="layui-form-label2"><a style="color: red;">*</a>承运商名称</label>
							<div class="layui-input-block">
								<input type="text" id="" class="layui-input">
							</div>
						</div>
						<div class="layui-inline" style="margin-left: 10%;">
							<label class="layui-form-label2"><a style="color: red;">*</a>公司名称</label>
							<div class="layui-input-block">
								<input type="text" class="layui-input">
							</div>
						</div>
					</div>
					<div class="layui-form-item2">
						<div class="layui-inline">
							<label class="layui-form-label2"><a style="color: red;">*</a>用户名</label>
							<div class="layui-input-block">
								<input type="text" id="" class="layui-input">
							</div>
						</div>
						<div class="layui-inline" style="margin-left: 10%;">
							<label class="layui-form-label2"><a style="color: red;">*</a>微信号</label>
							<div class="layui-input-block">
								<input type="text" id="" class="layui-input">
							</div>
						</div>
					</div>

					<div class="layui-form-item2">
						<div class="layui-inline">
							<label class="layui-form-label2"><a style="color: red;">*</a>联系电话</label>
							<div class="layui-input-block">
								<input type="text" id="" class="layui-input">
							</div>
						</div>
						<div class="layui-inline" style="margin-left: 10%;">
							<label class="layui-form-label2">手机号码</label>
							<div class="layui-input-block">
								<input type="text" class="layui-input">
							</div>
						</div>
					</div>

					<div class="layui-form-item2">
						<div class="layui-form-item">
							<label class="layui-form-label2">详细地址</label>
							<div class="layui-input-block">
								<textarea placeholder="请输入详细地址" class="layui-textarea"></textarea>
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


		<!--编辑信息-->
		<div id="new-edit" class="pop-div student-info" style="width: 768px;">
			<fieldset class="layui-elem-field" style="margin-top: 20px;">
				<legend
					style="font-size: 14px; border-bottom: 1px solid #fff; width: auto;">
					<a style="color: red;">*为必填项</a>
				</legend>

				<form class="layui-form" action=""
					style="width: 95%; margin: 0 auto;""">
					<div class="layui-form-item2">
						<div class="layui-inline">
							<label class="layui-form-label2"><a style="color: red;">*</a>承运商名称</label>
							<div class="layui-input-block">
								<input type="text" id="" class="layui-input">
							</div>
						</div>
						<div class="layui-inline" style="margin-left: 10%;">
							<label class="layui-form-label2"><a style="color: red;">*</a>公司名称</label>
							<div class="layui-input-block">
								<input type="text" class="layui-input">
							</div>
						</div>
					</div>
					<div class="layui-form-item2">
						<div class="layui-inline">
							<label class="layui-form-label2"><a style="color: red;">*</a>用户名</label>
							<div class="layui-input-block">
								<input type="text" id="" class="layui-input">
							</div>
						</div>
						<div class="layui-inline" style="margin-left: 10%;">
							<label class="layui-form-label2"><a style="color: red;">*</a>微信号</label>
							<div class="layui-input-block">
								<input type="text" id="" class="layui-input">
							</div>
						</div>
					</div>

					<div class="layui-form-item2">
						<div class="layui-inline">
							<label class="layui-form-label2"><a style="color: red;">*</a>联系电话</label>
							<div class="layui-input-block">
								<input type="text" id="" class="layui-input">
							</div>
						</div>
						<div class="layui-inline" style="margin-left: 10%;">
							<label class="layui-form-label2">手机号码</label>
							<div class="layui-input-block">
								<input type="text" class="layui-input">
							</div>
						</div>
					</div>

					<div class="layui-form-item2">
						<div class="layui-form-item">
							<label class="layui-form-label2">详细地址</label>
							<div class="layui-input-block">
								<textarea placeholder="请输入详细地址" class="layui-textarea"></textarea>
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



		<!--新增承运商-->
		<div id="new-deliverer" class="pop-div student-info"
			style="width: 768px;">
			<fieldset class="layui-elem-field" style="margin-top: 20px;">
				<legend
					style="font-size: 14px; border-bottom: 1px solid #fff; width: auto;">
					<a style="color: red;">添加承运商</a>
				</legend>

				<!--筛选开始-->
				<div class="layui-field-box">
					<form class="layui-form" action="">
						<div class="layui-form-item">
							<div class="layui-inline">
								<label class="layui-form-label">公司名称</label>
								<div class="layui-input-block">
									<input type="text" placeholder="请输入公司名称" class="layui-input">
								</div>
							</div>

							<div class="layui-inline">
								<label class="layui-form-label">电话</label>
								<div class="layui-input-block">
									<input type="tel" placeholder="请输入电话" class="layui-input">
								</div>
							</div>

							<div class="layui-inline">
								<label class="layui-form-label">微信号</label>
								<div class="layui-input-block">
									<input type="tel" placeholder="请输入微信号" class="layui-input">
								</div>
							</div>

							<div class="layui-inline"
								style="margin-top: -5px; margin-left: 5%;">
								<button class="layui-btn layui-btn-primary-search">查询</button>
							</div>
						</div>
					</form>
				</div>

				<!--table开始-->
				<table class="site-table table-hover" id="myTable">
					<thead>
						<tr>
							<th><input type="checkbox" id=""
								style="width: 16px; margin-top: -2px;">全选</th>
							<th>序号</th>
							<th>公司名称</th>
							<th>联系人</th>
							<th>电话</th>
							<th>联系地址</th>
							<th>微信号</th>
						</tr>
					</thead>
					<!--内容容器-->
					<tbody>
						<tr>
							<td><input type="checkbox" id="" style="width: 16px;"></td>
							<td>1</td>
							<th>深圳市华宝运输有限公司</th>
							<th>孙俊伟</th>
							<th>15302179259</th>
							<th>西安石化大道</th>
							<th>wx222222</th>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td><input type="checkbox" id="" style="width: 16px;"></td>
							<td>2</td>
							<th>深圳市华宝运输有限公司</th>
							<th>孙俊伟</th>
							<th>15302179259</th>
							<th>西安石化大道</th>
							<th>wx222222</th>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td><input type="checkbox" id="" style="width: 16px;"></td>
							<td>3</td>
							<th>深圳市华宝运输有限公司</th>
							<th>孙俊伟</th>
							<th>15302179259</th>
							<th>西安石化大道</th>
							<th>wx222222</th>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td><input type="checkbox" id="" style="width: 16px;"></td>
							<td>4</td>
							<th>深圳市华宝运输有限公司</th>
							<th>孙俊伟</th>
							<th>15302179259</th>
							<th>西安石化大道</th>
							<th>wx222222</th>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td><input type="checkbox" id="" style="width: 16px;"></td>
							<td>5</td>
							<th>深圳市华宝运输有限公司</th>
							<th>孙俊伟</th>
							<th>15302179259</th>
							<th>西安石化大道</th>
							<th>wx222222</th>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td><input type="checkbox" id="" style="width: 16px;"></td>
							<td>6</td>
							<th>深圳市华宝运输有限公司</th>
							<th>孙俊伟</th>
							<th>15302179259</th>
							<th>西安石化大道</th>
							<th>wx222222</th>
						</tr>
					</tbody>

				</table>
				<!--分页容器-->
				<nav aria-label="Page navigation" style="float: right;">
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

				<div class="aui_buttons" style="margin-top: 80px;">
					<button class="aui_state_highlight" type="button">确定</button>
					<button class="aui_state_highlighth" type="button">取消</button>
				</div>

			</fieldset>
		</div>


	</div>



	<!-- JS --> <script type="text/javascript"
		src="${ctp }/js/jquery-1.8.3.min.js"></script><!-- BASIC JQUERY 1.8.3 LIB. JS -->

	<script type="text/javascript" src="${ctp }/js/bootstrap.min.js"></script> <!-- BOOTSTRAP JS -->
	<script type="text/javascript" src="${ctp }/js/jquery.dcjqaccordion.2.7.js"></script>
	<!-- 左测点击拉下去 JS --> <script type="text/javascript"
		src="${ctp }/js/jquery.nicescroll.js"></script> <!-- 滚动条 JS --> <script
		type="text/javascript" src="${ctp }/js/common-scripts.js"></script> <!-- 公用的 JS -->
	<script type="text/javascript" src="${ctp }/js/placeholder-IE789.js"></script>
	<!--ie6789input提示兼容js--> <!--全选js--> <script type="text/javascript"
		src="${ctp }/js/tableCheckbox.js"></script> <!--弹出层js引用--> <script
		type="text/javascript" src="${ctp }/js/jquery.artDialog.source.js"></script>
	<script type="text/javascript" src="${ctp }/js/iframeTools.source.js"></script>
	<script type="text/javascript" src="${ctp }/js/msgbox.js"></script> <script
		type="text/javascript">
		//查看
		function Examine() {
			artDialog({
				id : 'EditRember-form',
				title : '查看承运商信息',
				content : document.getElementById('examine-xg'),
			})
		}

		//新增发货人
		function Newdeliverer() {
			artDialog({
				id : 'EditRember-form',
				title : '新增承运商',
				content : document.getElementById('new-deliverer'),
			})
		}

		//编辑
		function Editinformation() {
			artDialog({
				id : 'EditRember-form',
				title : '编辑承运商信息',
				content : document.getElementById('new-edit'),
			})
		}

		//设为默认
		function Startusing() {
			artDialog.confirm("question", "提示", "确定要设置当前承运商为默认承运商吗?",
					function() {
						$.ajax({
							url : "basicInformation/userManagement.html",
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

