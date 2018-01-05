<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="favicon.ico" />
<title>华润三九货在哪系统首页</title>

<!-- css样式抽取 -->
<!-- 公共的css样式 -->
<%@include file="/commons/common-css.jsp"%>

</head>

<body style="overflow: hidden;">

	<section id="container"> <!--<div class="header white-bg">-->

	<!--内容部分开始-->
	<section id="main-content" class="main-content"> <section
		class="wrapper" style="height: 100%;">

	<div class="index-header">
		<div class="header-left">
			<img src="${ctp}/images/welcome.png">
			<p>
				您好!<a style="color: #ffb500; margin: 2%;">huozhu</a>现在是 2017/08/03
				14:29:29
			</p>
		</div>
		<div class="header-right">
			<button type="button" class="btn btn-info btn-primary"
				style="margin-left: 5%;" onclick="AddGroup()">
				<i class="fa fa-edit"> </i> 新增运单
			</button>
			<button type="button" class="btn btn-info btn-primary"
				style="margin-left: 5%;">
				<i class="fa fa-level-down"> </i> 导入运单
			</button>
		</div>
	</div>

	<div class="index-advertising">
		<img src="${ctp}/images/adv.jpg">
	</div>

	<div class="index-content">
		<div class="row state-overview">
			<div class="col-lg-3 col-sm-6"
				onclick="location.href='notChecked.html'">
				<section class="panel" style="background: #e75c2e;">
				<div class="symbol">
					<i class="fa fa-clock-o blue"> </i>
				</div>
				<div class="value">
					<h1 class="count" style="font-size: 36px;">0</h1>
					<p style="padding-top: 2px;">未托运货物运单</p>
				</div>
				</section>
			</div>
			<div class="col-lg-3 col-sm-6"
				onclick="location.href='registeredCargoWaybill.html'">
				<section class="panel" style="background: #959701;">
				<div class="symbol">
					<i class="fa fa-truck red"> </i>
				</div>
				<div class="value">
					<h1 class=" count2" style="font-size: 36px;">0</h1>
					<p style="padding-top: 2px;">已托运货物运单</p>
				</div>
				</section>
			</div>
			<div class="col-lg-3 col-sm-6"
				onclick="location.href='completedCargoWaybill.html'">
				<section class="panel" style="background: #74b748;">
				<div class="symbol">
					<i class="fa fa-check yellow"> </i>
				</div>
				<div class="value">
					<h1 class=" count3" style="font-size: 36px;">0</h1>
					<p style="padding-top: 2px;">已完成货物运单</p>
				</div>
				</section>
			</div>
			<div class="col-lg-3 col-sm-6"
				onclick="location.href='abnormalWaybillCompleted.html'">
				<section class="panel" style="background: #ffb500;">
				<div class="symbol">
					<i class="fa fa-exclamation-circle purple"> </i>
				</div>
				<div class="value">
					<h1 class=" count4" style="font-size: 36px;">0</h1>
					<p style="padding-top: 2px;">已完成异常运单</p>
				</div>
				</section>
			</div>
		</div>
	</div>


	<!--<footer class="site-footer">
						<div class="text-center">
							Copyright©2015-2016 深圳市金天速科技有限公司 版权所有
							<a href="http://www.miibeian.gov.cn" target="_blank">
								粤ICP备15106728号
							</a>
	
						</div>
					</footer>--> </section> </section> </section>



	<!--编辑   弹出层开始-->

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

					<li><a href="#">页</a></li>



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

	<!--全选js-->
	<script type="text/javascript" src="${ctp }/js/tableCheckbox.js"></script>



	<!--弹出层js引用-->
	<script type="text/javascript" src="${ctp }/js/jquery.artDialog.source.js"></script>
	<script type="text/javascript" src="${ctp }/js/iframeTools.source.js"></script>
	<script type="text/javascript" src="${ctp }/js/msgbox.js"></script>

	<script>
		//编辑
		function AddGroup() {
			artDialog({
				id : 'ChangeVcode-form',
				title : '新增运单信息',
				content : document.getElementById('ChangeVcode-form'),
			})

		}

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
	</script>


</body>

</html>