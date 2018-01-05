<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="favicon.ico">
<title>物品管理</title>

<!-- css样式抽取 -->
<!-- 公共的css样式 -->
<%@include file="/commons/common-css.jsp"%>

<!--积分中心--物品管理页面  -->

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
				<li><a href="#">会员中心</a></li>
				<li>»</li>
				<li class="active">物品管理</li>
			</ul>
		</div>
	</div>

	<div class="row">
		<div class="col-sm-9">
			<section>
			<button type="button" class="btn btn-info btn-primary"
				style="margin-left: 5%;" onclick="Newdeliverer()">
				<i class="fa fa-edit"> </i> 新增物品
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
					<label class="layui-form-label">商品名称</label>
					<div class="layui-input-block">
						<input type="text" placeholder="请输入商品名称" class="layui-input">
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
				<th>序号</th>
				<th>商品图片</th>
				<th>商品名称</th>
				<th>兑换积分</th>
				<th>剩余数量</th>
				<th>创建日期</th>
				<th>操作</th>
			</tr>
		</thead>
		<!--内容容器-->
		<tbody>
			<tr>
				<td>1</td>
				<th><img src="../images/goods.jpg" height="68px;"></th>
				<th onclick="Examine()"><a style="text-decoration: underline;">洗车毛巾</a></th>
				<th>800</th>
				<th>500</th>
				<th>2017-06-25 15:15:15</th>
				<td>
					<button type="button" class="btn btn-sm btn-info" title="编辑"
						onclick="Startusing()">
						<i class="fa fa-edit"> </i>
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
				<th><img src="../images/goods1.jpg" height="68px;"></th>
				<th onclick="Examine()"><a style="text-decoration: underline;">手机贴膜</a></th>
				<th>1000</th>
				<th>50</th>
				<th>2017-06-25 15:15:15</th>
				<td>
					<button type="button" class="btn btn-sm btn-info" title="编辑"
						onclick="Startusing()">
						<i class="fa fa-edit"> </i>
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
				<th><img src="../images/goods.jpg" height="68px;"></th>
				<th onclick="Examine()"><a style="text-decoration: underline;">洗车毛巾</a></th>
				<th>800</th>
				<th>500</th>
				<th>2017-06-25 15:15:15</th>
				<td>
					<button type="button" class="btn btn-sm btn-info" title="编辑"
						onclick="Startusing()">
						<i class="fa fa-edit"> </i>
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
	</section> </section> </section>

	<!--弹出层开始-->
	<div class="pop-cot">

		<!--查看详情信息-->
		<div id="examine-xg" class="pop-div student-info">
			<fieldset class="layui-elem-field" style="margin-top: 20px;">
				<legend
					style="font-size: 14px; border-bottom: 1px solid #fff; width: auto;">
					<a style="color: red;">商品详情信息</a>
				</legend>

				<form class="layui-form" action=""
					style="width: 95%; margin: 0 auto;""">
					<div class="layui-form-item2">
						<div class="layui-inline">
							<label class="layui-form-label2" style="color: #72d0eb;">商品名称</label>
							<div class="layui-input-block">
								<p style="margin-top: 8px;">手机贴膜</p>
							</div>
						</div>
					</div>
					<div class="layui-form-item2">
						<div class="layui-inline">
							<label class="layui-form-label2" style="color: #72d0eb;">商品图片</label>
							<div class="layui-input-block">
								<img src="../images/goods.jpg" height="200px">
							</div>
						</div>
					</div>
					<div class="layui-form-item2">
						<div class="layui-inline">
							<label class="layui-form-label2" style="color: #72d0eb;">兑换积分</label>
							<div class="layui-input-block">
								<p style="margin-top: 8px;">1000</p>
							</div>
						</div>
					</div>
					<div class="layui-form-item2">
						<div class="layui-inline">
							<label class="layui-form-label2" style="color: #72d0eb;">剩余数量</label>
							<div class="layui-input-block">
								<p style="margin-top: 8px;">50</p>
							</div>
						</div>
					</div>
					<div class="layui-form-item2">
						<div class="layui-inline">
							<label class="layui-form-label2" style="color: #72d0eb;">商品介绍</label>
							<div class="layui-input-block">
								<p style="margin-top: 8px;">手机贴膜适用于iPhone6、iPhone6plus、iPhone6s、iPhone6splus、iPhone7、iPhone7plus</p>
							</div>
						</div>
					</div>

				</form>
			</fieldset>
		</div>


		<!--新增物品信息-->
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
							<label class="layui-form-label2"><a style="color: red;">*</a>商品名称</label>
							<div class="layui-input-block">
								<input type="text" id="" class="layui-input">
							</div>
						</div>
					</div>

					<div class="layui-form-item2">
						<label class="layui-form-label2"><a style="color: red;">*</a>产品图片</label>
						<div class="layui-input-block">
							<div class="company-logo">
								<div class="logo-top">
									<span>上传产品图片</span> <span style="cursor: pointer; color: red;">建议尺寸：68*68像素
										图片大小300k以内 支持JPG PNG</span>
								</div>
								<div class="logo-cen">
									<img src="../images/step-img.png">
								</div>
								<div class="logo-btm">
									<button class="layui-btn layui-btn-normal"
										style="margin-top: 8px; margin-left: 2%;">确认</button>
									<button class="layui-btn layui-btn-grayness"
										style="margin-top: 8px;">取消</button>
								</div>
							</div>
						</div>
					</div>

					<div class="layui-form-item2" style="margin-top: 10px;">
						<div class="layui-inline">
							<label class="layui-form-label2"><a style="color: red;">*</a>兑换积分</label>
							<div class="layui-input-block">
								<input type="text" id="" class="layui-input">
							</div>
						</div>
					</div>

					<div class="layui-form-item2">
						<div class="layui-inline">
							<label class="layui-form-label2"><a style="color: red;">*</a>物品数量</label>
							<div class="layui-input-block">
								<input type="text" id="" class="layui-input">
							</div>
						</div>
					</div>

					<div class="layui-form-item2">
						<div class="layui-form-item">
							<label class="layui-form-label2"><a style="color: red;">*</a>商品介绍</label>
							<div class="layui-input-block">
								<input type="text" id="" placeholder="请输入商品介绍"
									class="layui-input" style="width: 96%;">
							</div>
						</div>
					</div>


					<div class="aui_buttons"
						style="margin-top: 20px; margin-bottom: 50px;">
						<button class="aui_state_highlight" type="button">确定</button>
						<button class="aui_state_highlighth" type="button">取消</button>
					</div>
				</form>
			</fieldset>
		</div>


		<!--修改编辑物品信息-->
		<div id="edit-information" class="pop-div student-info"
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
							<label class="layui-form-label2"><a style="color: red;">*</a>商品名称</label>
							<div class="layui-input-block">
								<input type="text" id="" class="layui-input">
							</div>
						</div>
					</div>

					<div class="layui-form-item2">
						<label class="layui-form-label2"><a style="color: red;">*</a>产品图片</label>
						<div class="layui-input-block">
							<div class="company-logo">
								<div class="logo-top">
									<span>上传产品图片</span> <span style="cursor: pointer; color: red;">建议尺寸：68*68像素
										图片大小300k以内 支持JPG PNG</span>
								</div>
								<div class="logo-cen">
									<img src="../images/goods.jpg">
								</div>
								<div class="logo-btm">
									<button class="layui-btn layui-btn-normal"
										style="margin-top: 8px; margin-left: 2%;">确认</button>
									<button class="layui-btn layui-btn-grayness"
										style="margin-top: 8px;">取消</button>
								</div>
							</div>
						</div>
					</div>

					<div class="layui-form-item2" style="margin-top: 10px;">
						<div class="layui-inline">
							<label class="layui-form-label2"><a style="color: red;">*</a>兑换积分</label>
							<div class="layui-input-block">
								<input type="text" id="" class="layui-input">
							</div>
						</div>
					</div>

					<div class="layui-form-item2">
						<div class="layui-inline">
							<label class="layui-form-label2"><a style="color: red;">*</a>物品数量</label>
							<div class="layui-input-block">
								<input type="text" id="" class="layui-input">
							</div>
						</div>
					</div>

					<div class="layui-form-item2">
						<div class="layui-form-item">
							<label class="layui-form-label2"><a style="color: red;">*</a>商品介绍</label>
							<div class="layui-input-block">
								<input type="text" id="" placeholder="请输入商品介绍"
									class="layui-input" style="width: 96%;">
							</div>
						</div>
					</div>


					<div class="aui_buttons"
						style="margin-top: 20px; margin-bottom: 50px;">
						<button class="aui_state_highlight" type="button">确定</button>
						<button class="aui_state_highlighth" type="button">取消</button>
					</div>
				</form>
			</fieldset>
		</div>


	</div>



	<!-- JS -->

	<script type="text/javascript" src="${ctp }/js/jquery-1.8.3.min.js"></script>
	<!-- BASIC JQUERY 1.8.3 LIB. JS -->

	<script type="text/javascript" src="${ctp }/js/bootstrap.min.js"></script>
	<!-- BOOTSTRAP JS -->

	<script type="text/javascript" src="${ctp }/js/jquery.dcjqaccordion.2.7.js"></script>
	<!-- 左测点击拉下去 JS -->

	<script type="text/javascript" src="${ctp }/js/jquery.nicescroll.js"></script>
	<!-- 滚动条 JS -->

	<script type="text/javascript" src="${ctp }/js/common-scripts.js"></script>
	<!-- 公用的 JS -->


	<script type="text/javascript" src="${ctp }/js/placeholder-IE789.js"></script>

	<!--弹出层js引用-->
	<script type="text/javascript" src="${ctp }/js/jquery.artDialog.source.js"></script>
	<script type="text/javascript" src="${ctp }/js/iframeTools.source.js"></script>
	<script type="text/javascript" src="${ctp }/js/msgbox.js"></script>

	<script type="text/javascript">
		//查看商品详情信息
		function Examine() {
			artDialog({
				id : 'EditRember-form',
				title : '查看商品详情信息',
				content : document.getElementById('examine-xg'),
			})
		}

		//新增物品信息
		function Newdeliverer() {
			artDialog({
				id : 'EditRember-form',
				title : '新增物品信息',
				content : document.getElementById('new-deliverer'),
			})
		}

		//编辑修改物品信息
		function Startusing() {
			artDialog({
				id : 'EditRember-form',
				title : '编辑修改物品信息',
				content : document.getElementById('edit-information'),
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

	<!--城市地址选择-->
	<script type="text/javascript">
		var Gid = document.getElementById;

		var showArea = function() {

			Gid('show').innerHTML = "<h3>省" + Gid('s_province').value + " - 市" +

			Gid('s_city').value + " - 县/区" +

			Gid('s_county').value + "</h3>"

		}

		//Gid('s_county').setAttribute('onchange','showArea()');
	</script>


</body>

</html>
