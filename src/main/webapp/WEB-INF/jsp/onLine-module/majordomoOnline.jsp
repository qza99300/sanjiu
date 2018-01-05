<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="favicon.ico">
<title>总监在线页面</title>
<!-- css样式抽取 -->
<!-- 公共的css样式 -->
<%@include file="/commons/common-css.jsp"%>

</head>

<html lang="en">



<!--线上沟通模块--总监在线页面  -->



<body style="overflow-x: hidden;">

	<section id="container"> <!--内容部分开始--> 
	<section id="main-content"> <section class="wrapper">

	<div class="row">
		<div class="col-lg-12">
			<ul class="breadcrumb">
				<li><a href="#"><i class="fa fa-home"></i>首页</a></li>
				<li>»</li>
				<li><a href="#">线上沟通</a></li>
				<li>»</li>
				<li class="active">总监在线</li>
			</ul>
		</div>
	</div>

	<div class="row">
		<div class="col-sm-9">
			<section>
			<button type="button" class="btn btn-info btn-primary"
				style="margin-left: 5%;" onclick="AddGroup()">
				<i class="fa fa-edit"> </i> 新增运单
			</button>
			<button type="button" class="btn  btn-info" style="margin-left: 5%;">
				<i class="fa fa-level-up"> </i> 导出运单
			</button>
			<button type="button" class="btn btn-info btn-primary"
				style="margin-left: 5%;">
				<i class="fa fa-level-down"> </i> 导入运单
			</button>
			<button type="button" class="btn  btn-info" style="margin-left: 5%;">
				<i class="fa fa-download"> </i> 下载模板
			</button>
			</section>
		</div>
	</div>

	<!--筛选开始-->
	<div class="layui-field-box" style="margin-top: 10px;">
		<form class="layui-form" action="">
			<div class="layui-form-item">
				<div class="layui-inline">
					<label class="layui-form-label">运单号</label>
					<div class="layui-input-block">
						<input type="text" placeholder="请输入运单号" class="layui-input">
					</div>
				</div>

				<div class="layui-inline">
					<label class="layui-form-label">承运商</label>
					<div class="layui-input-block">
						<input type="tel" placeholder="请输入承运商" class="layui-input">
					</div>
				</div>

				<div class="layui-inline">
					<label class="layui-form-label">收货方</label>
					<div class="layui-input-block">
						<input type="tel" placeholder="请输入收货方" class="layui-input">
					</div>
				</div>

				<div class="layui-inline">
					<label class="layui-form-label">关键字</label>
					<div class="layui-input-block">
						<input type="tel" placeholder="请输入关键字" class="layui-input">
					</div>
				</div>

				<div class="layui-inline">
					<label class="layui-form-label">创建时间</label>
					<div class="layui-input-inline"
						style="width: 100px; padding-left: 3%;">
						<input type="text" name="price_min" placeholder="开始时间"
							autocomplete="off" class="layui-input">
					</div>
					<div class="layui-form-mid">-</div>
					<div class="layui-input-inline"
						style="width: 100px; padding-right: 3%;">
						<input type="text" name="price_max" placeholder="结束时间"
							autocomplete="off" class="layui-input">
					</div>
				</div>


				<div class="layui-inline" style="margin-top: -5px; margin-left: 5%;">
					<button class="layui-btn layui-btn-primary-search">查询</button>
				</div>



			</div>
		</form>
	</div>


	<!--table开始-->
	<div id="gundong">
		<table class="site-table table-hover" style="width: 170%;">
			<thead>
				<tr>
					<!--<th><input type="checkbox" id="">全选</th>-->
					<th>序号</th>
					<th>运单号</th>
					<th>发货方</th>
					<th>起点</th>
					<th>收货方</th>
					<th>终点</th>
					<th>承运商</th>
					<th>司机</th>
					<th>最后站点</th>
					<th>状态</th>
					<th>要求到达时间</th>
					<th>接收时间</th>
					<th>实际到达时间</th>
					<th>回单时间</th>
					<th>最新地址</th>
					<th>创建时间</th>
					<th>操作</th>
				</tr>
			</thead>
			<!--内容容器-->
			<tbody>
				<tr>
					<td>1</td>
					<th onclick="AddGroup()" title="查看运单信息"><a
						style="text-decoration: underline;">SY89899555</a></th>
					<th>货主</th>
					<th>广东省深圳市</th>
					<th>收货方</th>
					<th>江西省南昌市</th>
					<th>承运商</th>
					<th>未指定</th>
					<th>未指定</th>
					<th>已完成</th>
					<th>2017-02-23</th>
					<th>2017-02-23 17:28:15</th>
					<th>2017-02-23 14:28:15</th>
					<th>2017-02-23 15:28:15</th>
					<th>广东省深圳市福田区</th>
					<th>2017-02-23 15:15:15</th>
					<td>
						<button type="button" class="btn btn-sm btn-success" title="查看二维码"
							onclick="Qrcode()">
							<i class="fa fa-qrcode"> </i>
							<!--查看二维码-->
						</button>
						<button type="button" class="btn btn-sm btn-info" title="查看运单信息"
							onclick="AddGroup()">
							<i class="fa fa-pencil"> </i>
							<!--查看运单-->
						</button>
					</td>
				</tr>
			</tbody>
			<tbody>
				<tr>
					<td>2</td>
					<th onclick="AddGroup()" title="查看运单信息"><a
						style="text-decoration: underline;">SY89899555</a></th>
					<th>货主</th>
					<th>广东省深圳市</th>
					<th>收货方</th>
					<th>江西省南昌市</th>
					<th>承运商</th>
					<th>未指定</th>
					<th>未指定</th>
					<th>未托运</th>
					<th>2017-02-23</th>
					<th>2017-02-23 17:28:15</th>
					<th>2017-02-23 14:28:15</th>
					<th>2017-02-23 15:28:15</th>
					<th>广东省深圳市福田区</th>
					<th>2017-02-23 15:15:15</th>
					<td>
						<button type="button" class="btn btn-sm btn-success" title="二维码"
							onclick="Qrcode()">
							<i class="fa fa-qrcode"> </i>
							<!--查看二维码-->
						</button>
						<button type="button" class="btn btn-sm btn-info" title="查看运单信息"
							onclick="AddGroup()">
							<i class="fa fa-pencil"> </i>
							<!--查看运单-->
						</button>
					</td>
				</tr>
			</tbody>
			<tbody>
				<tr>
					<td>3</td>
					<th onclick="AddGroup()" title="查看运单信息"><a
						style="text-decoration: underline;">SY89899555</a></th>
					<th>货主</th>
					<th>广东省深圳市</th>
					<th>收货方</th>
					<th>江西省南昌市</th>
					<th>承运商</th>
					<th>未指定</th>
					<th>未指定</th>
					<th>已托运</th>
					<th>2017-02-23</th>
					<th>2017-02-23 17:28:15</th>
					<th>2017-02-23 14:28:15</th>
					<th>2017-02-23 15:28:15</th>
					<th>广东省深圳市福田区</th>
					<th>2017-02-23 15:15:15</th>
					<td>
						<button type="button" class="btn btn-sm btn-success" title="二维码"
							onclick="Qrcode()">
							<i class="fa fa-qrcode"> </i>
							<!--查看二维码-->
						</button>
						<button type="button" class="btn btn-sm btn-info" title="查看运单信息"
							onclick="AddGroup()">
							<i class="fa fa-pencil"> </i>
							<!--查看运单-->
						</button>
					</td>
				</tr>
			</tbody>
			<tbody>
				<tr>
					<td>4</td>
					<th onclick="AddGroup()" title="查看运单信息"><a
						style="text-decoration: underline;">SY89899555</a></th>
					<th>货主</th>
					<th>广东省深圳市</th>
					<th>收货方</th>
					<th>江西省南昌市</th>
					<th>承运商</th>
					<th>未指定</th>
					<th>未指定</th>
					<th>已完成</th>
					<th>2017-02-23</th>
					<th>2017-02-23 17:28:15</th>
					<th>2017-02-23 14:28:15</th>
					<th>2017-02-23 15:28:15</th>
					<th>广东省深圳市福田区</th>
					<th>2017-02-23 15:15:15</th>
					<td>
						<button type="button" class="btn btn-sm btn-success" title="查看二维码"
							onclick="Qrcode()">
							<i class="fa fa-qrcode"> </i>
							<!--查看二维码-->
						</button>
						<button type="button" class="btn btn-sm btn-info" title="查看运单信息"
							onclick="AddGroup()">
							<i class="fa fa-pencil"> </i>
							<!--查看运单-->
						</button>
					</td>
				</tr>
			</tbody>
			<tbody>
				<tr>
					<td>5</td>
					<th onclick="AddGroup()" title="查看运单信息"><a
						style="text-decoration: underline;">SY89899555</a></th>
					<th>货主</th>
					<th>广东省深圳市</th>
					<th>收货方</th>
					<th>江西省南昌市</th>
					<th>承运商</th>
					<th>未指定</th>
					<th>未指定</th>
					<th>未托运</th>
					<th>2017-02-23</th>
					<th>2017-02-23 17:28:15</th>
					<th>2017-02-23 14:28:15</th>
					<th>2017-02-23 15:28:15</th>
					<th>广东省深圳市福田区</th>
					<th>2017-02-23 15:15:15</th>
					<td>
						<button type="button" class="btn btn-sm btn-success" title="查看二维码"
							onclick="Qrcode()">
							<i class="fa fa-qrcode"> </i>
							<!--查看二维码-->
						</button>
						<button type="button" class="btn btn-sm btn-info" title="查看运单信息"
							onclick="AddGroup()">
							<i class="fa fa-pencil"> </i>
							<!--查看运单-->
						</button>
					</td>
				</tr>
			</tbody>
			<tbody>
				<tr>
					<td>6</td>
					<th onclick="AddGroup()" title="查看运单信息"><a
						style="text-decoration: underline;">SY89899555</a></th>
					<th>货主</th>
					<th>广东省深圳市</th>
					<th>收货方</th>
					<th>江西省南昌市</th>
					<th>承运商</th>
					<th>未指定</th>
					<th>未指定</th>
					<th>已托运</th>
					<th>2017-02-23</th>
					<th>2017-02-23 17:28:15</th>
					<th>2017-02-23 14:28:15</th>
					<th>2017-02-23 15:28:15</th>
					<th>广东省深圳市福田区</th>
					<th>2017-02-23 15:15:15</th>
					<td>
						<button type="button" class="btn btn-sm btn-success" title="查看二维码"
							onclick="Qrcode()">
							<i class="fa fa-qrcode"> </i>
							<!--查看二维码-->
						</button>
						<button type="button" class="btn btn-sm btn-info" title="查看运单信息"
							onclick="AddGroup()">
							<i class="fa fa-pencil"> </i>
							<!--查看运单-->
						</button>
					</td>
				</tr>
			</tbody>
			<tbody>
				<tr>
					<td>7</td>
					<th onclick="AddGroup()" title="查看运单信息"><a
						style="text-decoration: underline;">SY89899555</a></th>
					<th>货主</th>
					<th>广东省深圳市</th>
					<th>收货方</th>
					<th>江西省南昌市</th>
					<th>承运商</th>
					<th>未指定</th>
					<th>未指定</th>
					<th>未托运</th>
					<th>2017-02-23</th>
					<th>2017-02-23 17:28:15</th>
					<th>2017-02-23 14:28:15</th>
					<th>2017-02-23 15:28:15</th>
					<th>广东省深圳市福田区</th>
					<th>2017-02-23 15:15:15</th>
					<td>
						<button type="button" class="btn btn-sm btn-success" title="查看二维码"
							onclick="Qrcode()">
							<i class="fa fa-qrcode"> </i>
							<!--查看二维码-->
						</button>
						<button type="button" class="btn btn-sm btn-info" title="查看运单信息"
							onclick="AddGroup()">
							<i class="fa fa-pencil"> </i>
							<!--查看运单-->
						</button>
					</td>
				</tr>
			</tbody>
			<tbody>
				<tr>
					<td>8</td>
					<th onclick="AddGroup()" title="查看运单信息"><a
						style="text-decoration: underline;">SY89899555</a></th>
					<th>货主</th>
					<th>广东省深圳市</th>
					<th>收货方</th>
					<th>江西省南昌市</th>
					<th>承运商</th>
					<th>未指定</th>
					<th>未指定</th>
					<th>已完成</th>
					<th>2017-02-23</th>
					<th>2017-02-23 17:28:15</th>
					<th>2017-02-23 14:28:15</th>
					<th>2017-02-23 15:28:15</th>
					<th>广东省深圳市福田区</th>
					<th>2017-02-23 15:15:15</th>
					<td>
						<button type="button" class="btn btn-sm btn-success" title="查看二维码"
							onclick="Qrcode()">
							<i class="fa fa-qrcode"> </i>
							<!--查看二维码-->
						</button>
						<button type="button" class="btn btn-sm btn-info" title="查看运单信息"
							onclick="AddGroup()">
							<i class="fa fa-pencil"> </i>
							<!--查看运单-->
						</button>
					</td>
				</tr>
			</tbody>
		</table>

	</div>
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
	</nav> </section> </section> <!--编辑   弹出层开始-->

	<div class="pop-cot">

		<!--编辑属性-->
		<div id="ChangeVcode-form" class="pop-div student-info"
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

			<div class="aui_buttons" style="margin-top: 20px;">
				<button class="aui_state_highlight" type="button"
					style="width: 120px;" onclick="Editedit()">手动新增位置</button>
			</div>


			<!--显示位置信息-->
			<div class="logistics-process">
				<ul>
					<li>
						<div class="process-time-zx">
							<span style="margin-top: 5px;">2017/8/2</span> <span>15:20:02</span>
						</div>
						<div class="process-step-zx">
							<img src="../images/3.png" />
						</div>
						<div class="process-content-zx">
							<span class="dzdz">运单在[广东省深圳市福田区G4(京港澳高速)]被获取,操作人：货主</span> <span
								class="wl-img"> <img src="../images/review-image.png">
							</span>
						</div>
					</li>
					<li>
						<div class="process-time">
							<span style="margin-top: 5px;">2017/8/2</span> <span>15:20:02</span>
						</div>
						<div class="process-step">
							<img src="../images/12.png" />
						</div>
						<div class="process-content">
							<span class="dzdz">运单在[广东省深圳市福田区G4(京港澳高速)]被获取,操作人：货主</span> <span
								class="wl-img"> <img src="../images/review-image-h.png">
							</span>
						</div>
					</li>
					<li>
						<div class="process-time">
							<span style="margin-top: 5px;">2017/8/2</span> <span>15:20:02</span>
						</div>
						<div class="process-step">
							<img src="../images/12.png" />
						</div>
						<div class="process-content">
							<span class="dzdz">运单在[广东省深圳市福田区G4(京港澳高速)]被获取,操作人：货主</span> <span
								class="wl-img"> <img src="../images/review-image-h.png">
							</span>
						</div>
					</li>
					<li>
						<div class="process-time">
							<span style="margin-top: 5px;">2017/8/2</span> <span>15:20:02</span>
						</div>
						<div class="process-step">
							<img src="../images/12.png" />
						</div>
						<div class="process-content">
							<span class="dzdz">运单在[广东省深圳市福田区G4(京港澳高速)]被获取,操作人：货主</span> <span
								class="wl-img"> <img src="../images/review-image-h.png">
							</span>
						</div>
					</li>
					<li>
						<div class="process-time">
							<span style="margin-top: 5px;">2017/8/2</span> <span>15:20:02</span>
						</div>
						<div class="process-step">
							<img src="../images/12.png" />
						</div>
						<div class="process-content">
							<span class="dzdz">运单在[广东省深圳市福田区G4(京港澳高速)]被获取,操作人：货主</span> <span
								class="wl-img"> <img src="../images/review-image-h.png">
							</span>
						</div>
					</li>
					<li>
						<div class="process-time">
							<span style="margin-top: 5px;">2017/8/2</span> <span>15:20:02</span>
						</div>
						<div class="process-step">
							<img src="../images/11.png" />
						</div>
						<div class="process-content">
							<span class="dzdz">运单在[广东省深圳市福田区G4(京港澳高速)]开始</span> <span
								class="wl-img"> <img src="../images/review-image-h.png">
							</span>
						</div>
					</li>
				</ul>

				<!--强制完成-->
				<button type="button" class="btn  btn-info"
					style="margin: 20px auto; display: block; margin-bottom: 50px;">
					<i class="fa fa-check-square"></i> 强制完成
				</button>

			</div>




		</div>


		<!--查看运单-->
		<div id="examine-yd" class="pop-div student-info"
			style="width: 920px;">wos chakkfsffdfdf</div>


		<!--//查看二维码-->
		<div id="examine-ewm" class="pop-div student-info">
			<img src="../images/qr-code.png"
				style="margin: 20px auto; display: block;" /> <span
				style="margin: 15px auto; font-size: 22px; display: block; text-align: center;">SY89899555</span>
		</div>


		<!--//手动新增位置开始-->
		<div id="Editedit222" class="pop-div student-info"
			style="width: 900px;">
			<fieldset class="layui-elem-field" style="margin-top: 20px;">
				<legend
					style="font-size: 14px; border-bottom: 1px solid #fff; width: auto;">
					<a style="color: red;">*为必填项</a>
				</legend>

				<form class="layui-form" action=""
					style="width: 95%; margin: 0 auto;""">
					<div class="layui-form-item2">
						<div class="layui-inline">
							<label class="layui-form-label2"><a style="color: red;">*</a>操作人</label>
							<div class="layui-input-block">
								<input type="text" class="layui-input">
							</div>
						</div>
						<div class="layui-inline" style="margin-left: 10%;">
							<div class="layui-input-block">
								<button type="button" class="btn btn-info btn-primary"
									style="margin-left: 5%;" onclick="Selectoperator()">
									<i class="fa fa-edit"> </i> 选择操作人
								</button>
							</div>
						</div>
					</div>

					<div class="layui-form-item2">
						<div class="layui-inline">
							<label class="layui-form-label2"><a style="color: red;">*</a>操作记录</label>
							<div class="layui-input-block">
								<input type="text" class="layui-input">
							</div>
						</div>
					</div>

					<div class="layui-form-item2">
						<div class="layui-form-item">
							<label class="layui-form-label2"><a style="color: red;">*</a>详细地址</label>
							<div class="layui-input-block">
								<textarea placeholder="请输入详细地址" class="layui-textarea"></textarea>
							</div>
						</div>
					</div>

					<div class="aui_buttons" style="margin-top: 20px;">
						<button class="aui_state_highlight" type="button">保存</button>
						<button class="aui_state_highlighth" type="button">取消</button>
					</div>
				</form>
			</fieldset>
		</div>




		<!--//操作人信息-->
		<div id="Selectoperator-czr" class="pop-div student-info"
			style="width: 900px;">
			<fieldset class="layui-elem-field" style="margin-top: 20px;">
				<legend
					style="font-size: 14px; border-bottom: 1px solid #fff; width: auto;">
					<a style="color: red;">*为必填项</a>
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
							<th>用户名</th>
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
							<td>yhm-123</td>
							<th>小赵</th>
							<th>13699996666</th>
							<th>广东省深圳市福田区</th>
							<th>wxh565656</th>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td><input type="checkbox" id="" style="width: 16px;"></td>
							<td>2</td>
							<td>yhm-12345</td>
							<th>小赵</th>
							<th>13699996666</th>
							<th>广东省深圳市福田区车公庙</th>
							<th>wxh556</th>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td><input type="checkbox" id="" style="width: 16px;"></td>
							<td>3</td>
							<td>yhm-后的好久</td>
							<th>小对的</th>
							<th>13699996666</th>
							<th>广东省深圳市福田区</th>
							<th>wxh565656</th>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td><input type="checkbox" id="" style="width: 16px;"></td>
							<td>4</td>
							<td>yhm-18989</td>
							<th>小赵</th>
							<th>13699996666</th>
							<th>广东省深圳市福田区</th>
							<th>wxh5656</th>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td><input type="checkbox" id="" style="width: 16px;"></td>
							<td>5</td>
							<td>yhm-123</td>
							<th>小赵</th>
							<th>13699996666</th>
							<th>广东省深圳市福田区</th>
							<th>wxh565656</th>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td><input type="checkbox" id="" style="width: 16px;"></td>
							<td>6</td>
							<td>yhm-123</td>
							<th>小赵</th>
							<th>13699996666</th>
							<th>广东省深圳市福田区</th>
							<th>wxh565656</th>
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

	<script type="text/javascript" src="${ctp }/js/bootstrap.min.js"></script> <!-- BOOTSTRAP JS -->
	<script type="text/javascript" src="${ctp }/js/jquery.dcjqaccordion.2.7.js"></script>
	<!-- 左测点击拉下去 JS --> <script type="text/javascript"
		src="${ctp }/js/jquery.nicescroll.js"></script> <!-- 滚动条 JS --> <script
		type="text/javascript" src="${ctp }/js/common-scripts.js"></script> <!-- 公用的 JS -->
	<!--<script type="text/javascript" src="${ctp }/js/jquery.min.js" ></script>-->

	<script type="text/javascript" src="${ctp }/js/placeholder-IE789.js"></script>

	<!--全选js--> <script type="text/javascript" src="${ctp }/js/tableCheckbox.js"></script>

	<script type="text/javascript" src="${ctp }/js/jquery.nicescroll2.js"></script>
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
	</script> <!--弹出层js引用--> <script type="text/javascript"
		src="${ctp }/js/jquery.artDialog.source.js"></script> <script
		type="text/javascript" src="${ctp }/js/iframeTools.source.js"></script> <script
		type="text/javascript" src="${ctp }/js/msgbox.js"></script> <script>
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
					id : 'Editedit222',
					title : '手动新增位置',
					content : document.getElementById('Editedit222'),
				})

			}

			//选择操作人
			function Selectoperator() {
				artDialog({
					id : 'Selectoperator-czr',
					title : '操作人信息',
					content : document.getElementById('Selectoperator-czr'),
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

