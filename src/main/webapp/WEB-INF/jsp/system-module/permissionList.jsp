<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="favicon.ico">
<title>权限管理页面</title>

<!-- css样式抽取 -->
<!-- 公共的css样式 -->
<%@include file="/commons/common-css.jsp"%>

<!-- 系统管理--权限管理页面 -->
<!-- 该页面不需要显示出来 -->

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
				<li class="active">权限管理</li>
			</ul>
		</div>
	</div>

	<!--筛选开始-->
	<div class="layui-field-box" style="margin-top: 10px;">
		
	</div>


	<!--table开始-->
	<div id="gundong">
		<table class="site-table table-hover" style="width: 100%;">
			<thead>
				<tr>
					<th width="30"><input id="allCheckBox" type="checkbox">全选</th>
					<th>序号</th>
					<th>权限名</th>
					<th>操作</th>
				</tr>
			</thead>
			<!--内容容器-->
			<tbody id="permissionTable">
				
			</tbody>
			
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

	</nav> </section> </section> <!--编辑   弹出层开始-->

	<div class="pop-cot">

		<!--编辑属性-->
		<div id="ChangeVcode-form" class="pop-div student-info"
			style="width: 920px;">
			<fieldset class="layui-elem-field" style="margin-top: 20px;">
				<legend style="border-bottom: 1px solid #fff; width: auto;">查询码:SY89899555</legend>
				<legend
					style="font-size: 14px; border-bottom: 1px solid #fff; width: auto;">
					<a style="color: red;">*为必填项</a>
				</legend>

				<form class="layui-form" action=""
					style="width: 95%; margin: 0 auto;">
					<div class="layui-form-item2">
						<div class="layui-inline">
							<label class="layui-form-label2"><a style="color: red;">*</a>运单号</label>
							<div class="layui-input-block">
								<input type="text" id="" class="layui-input">
							</div>
						</div>
						<div class="layui-inline" style="margin-left: 10%;">
							<label class="layui-form-label2"><a style="color: red;">*</a>货物名称</label>
							<div class="layui-input-block">
								<input type="text" class="layui-input">
							</div>
						</div>
					</div>
					<div class="layui-form-item2">
						<div class="layui-inline">
							<label class="layui-form-label2"><a style="color: red;">*</a>货物总件数</label>
							<div class="layui-input-block">
								<input type="text" id="" class="layui-input">
							</div>
						</div>
						<div class="layui-inline" style="margin-left: 10%;">
							<label class="layui-form-label2">货物总重量(kg)</label>
							<div class="layui-input-block">
								<input type="text" class="layui-input">
							</div>
						</div>
					</div>
					<div class="layui-form-item2">
						<div class="layui-inline">
							<label class="layui-form-label2">货物总立方</label>
							<div class="layui-input-block">
								<input type="text" id="" class="layui-input">
							</div>
						</div>
						<div class="layui-inline" style="margin-left: 10%;">
							<label class="layui-form-label2">要求到达时间</label>
							<div class="layui-input-block">
								<input type="text" class="layui-input">
							</div>
						</div>
					</div>

					<!--发货方-->
					<div class="layui-form-item2" style="margin-top: 15px;">
						<label class="layui-form-label"
							style="color: #FF3030; font-weight: bold;">发货方</label>
						<div class="layui-input-block">
							<button type="button" class="btn btn-info btn-primary"
								onclick="Editedit()">
								<i class="fa fa-edit"> </i> 修改发货人
							</button>
						</div>
					</div>
					<div class="layui-form-item2">
						<div class="layui-inline">
							<label class="layui-form-label2"><a style="color: red;">*</a>姓名</label>
							<div class="layui-input-block">
								<input type="text" id="" class="layui-input">
							</div>
						</div>
						<div class="layui-inline" style="margin-left: 10%;">
							<label class="layui-form-label2"><a style="color: red;">*</a>地址</label>
							<div class="layui-input-block">
								<input type="text" class="layui-input">
							</div>
						</div>
					</div>
					<div class="layui-form-item2">
						<div class="layui-inline">
							<label class="layui-form-label2"><a style="color: red;">*</a>公司名</label>
							<div class="layui-input-block">
								<input type="text" id="" class="layui-input">
							</div>
						</div>
					</div>
					<div class="layui-form-item2">
						<div class="layui-inline">
							<label class="layui-form-label2"><a style="color: red;">*</a>所以发货人发货</label>
							<div class="layui-input-block">
								<div class="danxuan">
									<label><input type="radio" value="允许">允许</label> <label><input
										type="radio" value="不允许">不允许</label>
								</div>
							</div>
						</div>
					</div>

					<!--承运商-->
					<div class="layui-form-item2" style="margin-top: 15px;">
						<label class="layui-form-label"
							style="color: #FF3030; font-weight: bold;">承运商</label>
						<div class="layui-input-block">
							<button type="button" class="btn btn-info btn-primary"
								onclick="Carriers()">
								<i class="fa fa-edit"> </i> 修改承运商
							</button>
						</div>
					</div>
					<div class="layui-form-item2">
						<div class="layui-inline">
							<label class="layui-form-label2"><a style="color: red;">*</a>公司名</label>
							<div class="layui-input-block">
								<input type="text" id="" class="layui-input">
							</div>
						</div>
					</div>


					<!--收货方-->
					<div class="layui-form-item2" style="margin-top: 15px;">
						<label class="layui-form-label"
							style="color: #FF3030; font-weight: bold;">收货方</label>
						<div class="layui-input-block">
							<button type="button" class="btn btn-info btn-primary"
								onclick="Receiving()">
								<i class="fa fa-edit"> </i> 修改收货方
							</button>
						</div>
					</div>
					<div class="layui-form-item2">
						<div class="layui-inline">
							<label class="layui-form-label2"><a style="color: red;">*</a>公司名</label>
							<div class="layui-input-block">
								<input type="text" id="" class="layui-input">
							</div>
						</div>
						<div class="layui-inline" style="margin-left: 10%;">
							<label class="layui-form-label2">地址</label>
							<div class="layui-input-block">
								<input type="text" id="" class="layui-input">
							</div>
						</div>
					</div>


					<!--收件人-->
					<div class="layui-form-item2" style="margin-top: 15px;">
						<label class="layui-form-label"
							style="color: #FF3030; font-weight: bold;">收件人</label>
						<div class="layui-input-block">
							<button type="button" class="btn btn-info btn-primary"
								onclick="Recipient()">
								<i class="fa fa-edit"> </i> 修改收件人
							</button>
						</div>
					</div>
					<div class="layui-form-item2">
						<div class="layui-inline">
							<label class="layui-form-label2"><a style="color: red;">*</a>姓名</label>
							<div class="layui-input-block">
								<input type="text" id="" class="layui-input">
							</div>
						</div>
					</div>


					<div class="layui-form-item2" style="margin-top: 15px;">
						<label class="layui-form-label"
							style="color: #FF3030; font-weight: bold;">电子回单</label>
						<div class="layui-input-block">

							<div class="danxuan">
								<label><input type="radio" value="司机回单">司机回单</label> <label><input
									type="radio" value="收货人回单">收货人回单</label>
							</div>

						</div>
					</div>



					<div class="aui_buttons" style="margin-bottom: 50px;">
						<button class="aui_state_highlight" type="button">保存</button>
						<button class="aui_state_highlighth" type="button">取消</button>
					</div>
				</form>
			</fieldset>
		</div>


		<!--查看运单-->
		<div id="examine-yd" class="pop-div student-info"
			style="width: 920px;">
			<span
				style="text-align: center; color: #fbd697; font-size: 18px; padding-top: 15px; display: block; margin-bottom: 15px;">查看运单(SY89899555)</span>
			<table border="1" width="100%" align="center" cellpadding="1"
				cellspacing="1" style="border: 1px solid #ccc;">
				<tr style="height: 36px;">
					<td colspan="1" class="chyd-ys">运单号</td>
					<td colspan="1"></td>
					<td colspan="1" class="chyd-ys">运单时间</td>
					<td colspan="1"></td>
					<td colspan="1" class="chyd-ys">货物名称</td>
					<td colspan="1"></td>
				</tr>
				<tr style="height: 36px;">
					<td colspan="1" class="chyd-ys">货主</td>
					<td colspan="1"></td>
					<td colspan="1" class="chyd-ys">联系电话</td>
					<td colspan="1"></td>
					<td colspan="1" class="chyd-ys">货物重量</td>
					<td colspan="1"></td>
				</tr>
				<tr style="height: 36px;">
					<td colspan="1" class="chyd-ys">当前承运商</td>
					<td colspan="1"></td>
					<td colspan="1" class="chyd-ys">状态</td>
					<td colspan="1"></td>
					<td colspan="1" class="chyd-ys">要求到达时间</td>
					<td colspan="1">2017-06-23 15:25</td>
				</tr>
				<tr style="height: 36px;">
					<td colspan="1" class="chyd-ys">货物件数</td>
					<td colspan="1"></td>
					<td colspan="1" class="chyd-ys">起点</td>
					<td colspan="1"></td>
					<td colspan="1" class="chyd-ys">终点(收货公司地址)</td>
					<td colspan="1"></td>
				</tr>
				<tr style="height: 36px;">
					<td rowspan="2" class="chyd-ys">收货信息</td>
					<td colspan="1" class="chyd-ys">收货公司名称</td>
					<td colspan="2">广东省深圳市福田区</td>
					<td colspan="1" class="chyd-ys">收货人名称</td>
					<td colspan="1">张三</td>
				</tr>
				<tr style="height: 36px;">
					<td colspan="1" class="chyd-ys">实际到货时间</td>
					<td colspan="1">2017-06-23 15:25</td>
					<td colspan="1" class="chyd-ys">收货人地址</td>
					<td colspan="2">广东省深圳市福田区</td>
				</tr>
				<tr style="height: 36px;">
					<td colspan="2" class="chyd-ys">是否回单</td>
					<td colspan="4">司机回单</td>
				</tr>

			</table>
		</div>


		<!--//查看二维码-->
		<div id="examine-ewm" class="pop-div student-info">
			<img src="images/qr-code.png"
				style="margin: 20px auto; display: block;" /> <span
				style="margin: 15px auto; font-size: 22px; display: block; text-align: center;">SY89899555</span>
		</div>


		<!--//修改发货人-->
		<div id="Editedit222" class="pop-div student-info"
			style="width: 900px;">
			<fieldset class="layui-elem-field" style="margin-top: 20px;">
				<legend
					style="font-size: 14px; border-bottom: 1px solid #fff; width: auto;">
					<a style="color: red;">发货人信息</a>
				</legend>

				<!--筛选开始-->
				<div class="layui-field-box">
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
							<th>发件人姓名</th>
							<th>公司名称</th>
							<th>电话</th>
							<th>微信号</th>
							<th>备注</th>
						</tr>
					</thead>
					<!--内容容器-->
					<tbody>
						<tr>
							<td><input type="checkbox" id="" style="width: 16px;"></td>
							<td>1</td>
							<td>小赵</td>
							<th>深圳市华宝运输有限公司</th>
							<th>13699996666</th>
							<th>wx123456</th>
							<th>备注一下</th>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td><input type="checkbox" id="" style="width: 16px;"></td>
							<td>2</td>
							<td>李先生</td>
							<th>深圳市华宝运输有限公司</th>
							<th>13699996666</th>
							<th>wx123456</th>
							<th>备注了</th>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td><input type="checkbox" id="" style="width: 16px;"></td>
							<td>3</td>
							<td>小赵2</td>
							<th>深圳市华宝运输有限公司</th>
							<th>13699996666</th>
							<th>wx123456</th>
							<th>要吃奶</th>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td><input type="checkbox" id="" style="width: 16px;"></td>
							<td>4</td>
							<td>消耗</td>
							<th>深圳市华宝运输有限公司</th>
							<th>13699996666</th>
							<th>wx123456</th>
							<th>备注一下</th>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td><input type="checkbox" id="" style="width: 16px;"></td>
							<td>5</td>
							<td>小赵</td>
							<th>深圳市华宝运输有限公司</th>
							<th>13699996666</th>
							<th>wx123456</th>
							<th>备注一下</th>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td><input type="checkbox" id="" style="width: 16px;"></td>
							<td>6</td>
							<td>无老虎</td>
							<th>深圳市华宝运输有限公司</th>
							<th>13699996666</th>
							<th>wx123456</th>
							<th>备注</th>
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


		<!--//修改收件人-->
		<div id="Recipient-xx" class="pop-div student-info"
			style="width: 900px;">
			<fieldset class="layui-elem-field" style="margin-top: 20px;">
				<legend
					style="font-size: 14px; border-bottom: 1px solid #fff; width: auto;">
					<a style="color: red;">收件人信息</a>
				</legend>

				<!--筛选开始-->
				<div class="layui-field-box">
					<form class="layui-form" action="">
						<div class="layui-form-item">
							<div class="layui-inline">
								<label class="layui-form-label">姓名</label>
								<div class="layui-input-block">
									<input type="text" placeholder="请输入姓名" class="layui-input">
								</div>
							</div>
							<div class="layui-inline">
								<label class="layui-form-label">地址</label>
								<div class="layui-input-block">
									<input type="text" placeholder="请输入联系地址" class="layui-input">
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
				<table class="site-table table-hover" id="myTable1">
					<thead>
						<tr>
							<th><input type="checkbox" id=""
								style="width: 16px; margin-top: -2px;">全选</th>
							<th>序号</th>
							<th>姓名</th>
							<th>电话</th>
							<th>地址</th>
							<th>微信号</th>
						</tr>
					</thead>
					<!--内容容器-->
					<tbody>
						<tr>
							<td><input type="checkbox" id="" style="width: 16px;"></td>
							<td>1</td>
							<th>小赵</th>
							<th>13699996666</th>
							<th>广东省深圳市坪山区比亚迪路3009号</th>
							<th>wx123456</th>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td><input type="checkbox" id="" style="width: 16px;"></td>
							<td>2</td>
							<th>马化腾</th>
							<th>13699996666</th>
							<th>广东省深圳市南山区腾讯大厦</th>
							<th>tx123456</th>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td><input type="checkbox" id="" style="width: 16px;"></td>
							<td>3</td>
							<th>小赵</th>
							<th>13699996666</th>
							<th>广东省深圳市龙岗</th>
							<th>wx123456</th>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td><input type="checkbox" id="" style="width: 16px;"></td>
							<td>4</td>
							<th>小赵</th>
							<th>13699996666</th>
							<th>广东省深圳市坪山区比亚迪路3009号</th>
							<th>wx123456</th>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td><input type="checkbox" id="" style="width: 16px;"></td>
							<td>5</td>
							<th>马化腾</th>
							<th>13699996666</th>
							<th>广东省深圳市南山区腾讯大厦</th>
							<th>tx123456</th>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td><input type="checkbox" id="" style="width: 16px;"></td>
							<td>6</td>
							<th>码云</th>
							<th>13699996666</th>
							<th>浙江省杭州市西湖区东路158号</th>
							<th>albb123456</th>
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



		<!--//修改收货方-->
		<div id="Receiving-party" class="pop-div student-info"
			style="width: 900px;">
			<fieldset class="layui-elem-field" style="margin-top: 20px;">
				<legend
					style="font-size: 14px; border-bottom: 1px solid #fff; width: auto;">
					<a style="color: red;">收货方信息</a>
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
								<label class="layui-form-label">地址</label>
								<div class="layui-input-block">
									<input type="text" placeholder="请输入地址" class="layui-input">
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
				<table class="site-table table-hover" id="myTable2">
					<thead>
						<tr>
							<th><input type="checkbox" id=""
								style="width: 16px; margin-top: -2px;">全选</th>
							<th>序号</th>
							<th>公司名称</th>
							<th>地址</th>
						</tr>
					</thead>
					<!--内容容器-->
					<tbody>
						<tr>
							<td><input type="checkbox" id="" style="width: 16px;"></td>
							<td>1</td>
							<td>深圳市华宝运输有限公司</td>
							<th>广东省深圳市坪山区比亚迪路3009号</th>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td><input type="checkbox" id="" style="width: 16px;"></td>
							<td>2</td>
							<td>深圳市腾讯有限公司</td>
							<th>安徽省阜阳市经济技术开发区新安大道218号</th>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td><input type="checkbox" id="" style="width: 16px;"></td>
							<td>3</td>
							<td>深圳市华宝限公司</td>
							<th>皖亳州市蒙城县307线经济开发区</th>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td><input type="checkbox" id="" style="width: 16px;"></td>
							<td>4</td>
							<td>深圳市华宝运输有限公司</td>
							<th>安徽省安庆市宜秀区中山大道【原206国道】舒怡国际家居向西500米</th>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td><input type="checkbox" id="" style="width: 16px;"></td>
							<td>5</td>
							<td>深圳市腾讯有限公司</td>
							<th>安徽省六安市经济开发区金太阳汽车城比亚迪4S店</th>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td><input type="checkbox" id="" style="width: 16px;"></td>
							<td>6</td>
							<td>浙江阿里巴巴集团</td>
							<th>三明市北高速引线西侧城市物流园1号店</th>
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


		<!--//修改承运商-->
		<div id="Carriers-xx" class="pop-div student-info"
			style="width: 900px;">
			<fieldset class="layui-elem-field" style="margin-top: 20px;">
				<legend
					style="font-size: 14px; border-bottom: 1px solid #fff; width: auto;">
					<a style="color: red;">承运商信息</a>
				</legend>

				<!--筛选开始-->
				<div class="layui-field-box">
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
				<table class="site-table table-hover" id="myTable3">
					<thead>
						<tr>
							<th><input type="checkbox" id=""
								style="width: 16px; margin-top: -2px;">全选</th>
							<th>序号</th>
							<th>公司名称</th>
							<th>联系人</th>
							<th>电话</th>
							<th>地址</th>
							<th>微信号</th>
						</tr>
					</thead>
					<!--内容容器-->
					<tbody>
						<tr>
							<td><input type="checkbox" id="" style="width: 16px;"></td>
							<td>1</td>
							<td>深圳市华宝运输有限公司</td>
							<th>小赵</th>
							<th>13699996666</th>
							<th>广东省深圳市坪山区比亚迪路3009号</th>
							<th>wx123456</th>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td><input type="checkbox" id="" style="width: 16px;"></td>
							<td>2</td>
							<td>深圳市腾讯有限公司</td>
							<th>马化腾</th>
							<th>13699996666</th>
							<th>广东省深圳市南山区腾讯大厦</th>
							<th>tx123456</th>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td><input type="checkbox" id="" style="width: 16px;"></td>
							<td>3</td>
							<td>深圳市华宝限公司</td>
							<th>小赵</th>
							<th>13699996666</th>
							<th>广东省深圳市龙岗</th>
							<th>wx123456</th>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td><input type="checkbox" id="" style="width: 16px;"></td>
							<td>4</td>
							<td>深圳市华宝运输有限公司</td>
							<th>小赵</th>
							<th>13699996666</th>
							<th>广东省深圳市坪山区比亚迪路3009号</th>
							<th>wx123456</th>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td><input type="checkbox" id="" style="width: 16px;"></td>
							<td>5</td>
							<td>深圳市腾讯有限公司</td>
							<th>马化腾</th>
							<th>13699996666</th>
							<th>广东省深圳市南山区腾讯大厦</th>
							<th>tx123456</th>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td><input type="checkbox" id="" style="width: 16px;"></td>
							<td>6</td>
							<td>浙江阿里巴巴集团</td>
							<th>码云</th>
							<th>13699996666</th>
							<th>浙江省杭州市西湖区东路158号</th>
							<th>albb123456</th>
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
	<!--弹出层结束-->
	</div>

	<!-- JS --> <script type="text/javascript"
		src="${ctp }/js/jquery-1.8.3.min.js"></script><!-- BASIC JQUERY 1.8.3 LIB. JS -->

	<script type="text/javascript" src="${ctp }/js/bootstrap.min.js"></script>
	<!-- BOOTSTRAP JS --> <script type="text/javascript"
		src="${ctp }/js/jquery.dcjqaccordion.2.7.js"></script> <!-- 左测点击拉下去 JS -->

	<script type="text/javascript" src="${ctp }/js/jquery.nicescroll.js"></script>
	<!-- 滚动条 JS --> <script type="text/javascript"
		src="${ctp }/js/common-scripts.js"></script> <!-- 公用的 JS --> <!--<script type="text/javascript" src="${ctp }/js/jquery.min.js" ></script>-->

	<script type="text/javascript" src="${ctp }/js/placeholder-IE789.js"></script>

	<script type="text/javascript">
		$('#gundong').niceScroll({
			cursorcolor : "#ccc",//#CC0071 光标颜色
			cursoropacitymax : 1, //改变不透明度非常光标处于活动状态（scrollabar“可见”状态），范围从1到0
			touchbehavior : false, //使光标拖动滚动像在台式电脑触摸设备
			cursorwidth : "5px", //像素光标的宽度
			cursorborder : "0", // 	游标边框css定义
			cursorborderradius : "5px",//以像素为光标边界半径
			autohidemode : false, //是否隐藏滚动条
		});
	</script> <!--全选js--> <script type="text/javascript"
		src="${ctp }/js/tableCheckbox.js"></script> <!--弹出层js引用--> <script
		type="text/javascript" src="${ctp }/js/jquery.artDialog.source.js"></script>
	<script type="text/javascript" src="${ctp }/js/iframeTools.source.js"></script>
	<script type="text/javascript" src="${ctp }/js/msgbox.js"></script> 
	<script>
	
	var page = {
			pn : 1,
			ps : 5,
			lastPage : 10
		};
	$(function(){
		page.pn = 1;
		getPermissions();
	});
	
	function getPermissions() {
		$.ajax({
			url : "${ctp}/per/permissions",
			data : {
				pn : page.pn,
				ps : page.ps
			},
			success : function(a) {
				showPermissions(a);
			}
		});
	}
	function showPermissions(data) {
		//alert(data.size);
		// 1.清空数据
		$("ul.pagination").empty();
		$("#permissionTable").empty();

		//2.显示表格
		buildTable(data);

		//3.显示分页条
		buildPage(data);
	}
	
	function buildTable(data) {
		var permissionData = data.list;
		//alert(permissionData);
		$.each(
				permissionData,
			function() {
				//创建tr
				var tr = $("<tr></tr>");
				//创建td

				var btnTd = $("<td></td>")
				//操作列

				btnTd
						.append(
								'<button permissionId = "'
										+ this.permissionId
										+ '" type = "button" class = "userModelShowBtn btn btn-sm btn-success" title="添加角色" ><i class="fa fa-qrcode"></i></button>')
						.append(
								'&nbsp;<button permissionId = "'
										+ this.permissionId
										+ '" type = "button" class = "updateMyUserBtn btn btn-sm btn-info" title="查看信息" ><i class="fa fa-pencil"></i></button>')
						.append(
								'&nbsp;<button permissionId = "'
										+ this.permissionId
										+ '" type = "button" class = "deleteUserBtn btn btn-sm btn-danger" title="删除用户" id="removeUserBtn"><i class="fa fa-trash"></i></button>');

				tr
						.append(
								"<td><input type='checkbox' permissionId="+ this.permissionId +" class='itemCheckBox'></td>")
						.append("<td>" + this.permissionId + "</td>")
						.append(
								"<td>" + this.permissionName
										+ "</td>")

						.append(btnTd).appendTo(
								$("#permissionTable"));
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
		getPermissions();
	});
	//-------------------------------------------------------------------------------------------------
	
		//编辑
		function AddGroup() {
			artDialog({
				id : 'ChangeVcode-form',
				title : '更新运单信息',
				content : document.getElementById('ChangeVcode-form'),
			})

		}

		//查看
		function Examine() {
			artDialog({
				id : 'EditRember-form',
				title : '查看运单',
				content : document.getElementById('examine-yd'),
			})
		}

		//查看二维码
		function Qrcode() {
			artDialog({
				id : 'EditRember-form',
				title : '查看二维码',
				content : document.getElementById('examine-ewm'),
			})
		}

		//修改发货人
		//		function Shipper(){
		//			artDialog({
		//			    id: 'EditRember-form',
		//			    title: '修改发货人',
		//			    content: document.getElementById('Shipper-information'),
		//			})
		//		}

		//修改发货人
		function Editedit() {
			artDialog({
				id : 'EditRember-form',
				title : '发货人信息',
				content : document.getElementById('Editedit222'),
			})

		}

		//修改承运商
		function Carriers() {
			artDialog({
				id : 'EditRember-form',
				title : '承运商信息',
				content : document.getElementById('Carriers-xx'),
			})

		}

		//修改收货方
		function Receiving() {
			artDialog({
				id : 'EditRember-form',
				title : '收货方信息',
				content : document.getElementById('Receiving-party'),
			})

		}

		//修改收货方
		function Recipient() {
			artDialog({
				id : 'EditRember-form',
				title : '收件人信息',
				content : document.getElementById('Recipient-xx'),
			})

		}

		//删除
		function Del() {
			artDialog.confirm("question", "提示", "您确定删除吗?", function() {
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
	</script>
</body>

</html>
