<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="favicon.ico">
<title>积分兑换页面</title>

<!-- css样式抽取 -->
<!-- 公共的css样式 -->
<%@include file="/commons/common-css.jsp"%>

<!--积分中心--积分兑换明细页面  -->

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
				<li class="active">积分兑换明细</li>
			</ul>
		</div>
	</div>


	<!--筛选开始-->
	<div class="layui-field-box">
		<form class="layui-form" action="">
			<div class="layui-form-item">
				<div class="layui-inline">
					<label class="layui-form-label">手机号</label>
					<div class="layui-input-block">
						<input type="text" placeholder="请输入手机号" class="layui-input">
					</div>
				</div>

				<div class="layui-inline" style="margin-top: -5px; margin-left: 5%;">
					<button class="layui-btn layui-btn-primary-search">查询</button>
				</div>
			</div>
		</form>
	</div>


	<!--table开始-->
	<div class="layui-tab layui-tab-card" style="margin-top: -10px;">
		<ul class="layui-tab-title">
			<li class="layui-this">全部</li>
			<li>未发放</li>
			<li>已发放</li>
		</ul>
		<div class="layui-tab-content">
			<div class="layui-tab-item layui-show" style="margin-top: 20px;">
				<table class="site-table table-hover">
					<thead>
						<tr>
							<th>序号</th>
							<th>兑换物品</th>
							<th>兑换时间</th>
							<th>发货状态</th>
							<th>收货人</th>
							<th>收货手机号</th>
							<th>收货地址</th>
							<th>操作</th>
						</tr>
					</thead>
					<!--内容容器-->
					<tbody>
						<tr>
							<td>1</td>
							<th>iPhone 6s</th>
							<th>2017-02-26 18:26</th>
							<th>已发放</th>
							<th>张三</th>
							<th>13699588666</th>
							<th>福田区车公庙劲松大厦12F</th>
							<td>
								<button type="button" class="btn btn-sm btn-info" title="修改发送状态"
									onclick="Modifysendstatus()">
									<i class="fa fa-edit"> </i>
								</button>
								<button type="button" class="btn btn-sm btn-danger"
									title="删除..." onclick="Del()">
									<i class="fa fa-trash"> </i>
									<!--删除-->
								</button>
							</td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td>2</td>
							<th>iPhone 6s</th>
							<th>2017-02-26 18:26</th>
							<th>未发放</th>
							<th>张三</th>
							<th>13699588666</th>
							<th>福田区车公庙劲松大厦12F</th>
							<td>
								<button type="button" class="btn btn-sm btn-info" title="修改发送状态"
									onclick="Modifysendstatus()">
									<i class="fa fa-edit"> </i>
								</button>
								<button type="button" class="btn btn-sm btn-danger"
									title="删除..." onclick="Del()">
									<i class="fa fa-trash"> </i>
									<!--删除-->
								</button>
							</td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td>3</td>
							<th>iPhone 6s</th>
							<th>2017-02-26 18:26</th>
							<th>已发放</th>
							<th>张三</th>
							<th>13699588666</th>
							<th>福田区车公庙劲松大厦12F</th>
							<td>
								<button type="button" class="btn btn-sm btn-info" title="修改发送状态"
									onclick="Modifysendstatus()">
									<i class="fa fa-edit"> </i>
								</button>
								<button type="button" class="btn btn-sm btn-danger"
									title="删除..." onclick="Del()">
									<i class="fa fa-trash"> </i>
									<!--删除-->
								</button>
							</td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td>4</td>
							<th>iPhone 6s</th>
							<th>2017-02-26 18:26</th>
							<th>已发放</th>
							<th>张三</th>
							<th>13699588666</th>
							<th>福田区车公庙劲松大厦12F</th>
							<td>
								<button type="button" class="btn btn-sm btn-info" title="修改发送状态"
									onclick="Modifysendstatus()">
									<i class="fa fa-edit"> </i>
								</button>
								<button type="button" class="btn btn-sm btn-danger"
									title="删除..." onclick="Del()">
									<i class="fa fa-trash"> </i>
									<!--删除-->
								</button>
							</td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td>5</td>
							<th>iPhone 6s</th>
							<th>2017-02-26 18:26</th>
							<th>未发放</th>
							<th>张三</th>
							<th>13699588666</th>
							<th>福田区车公庙劲松大厦12F</th>
							<td>
								<button type="button" class="btn btn-sm btn-info" title="修改发送状态"
									onclick="Modifysendstatus()">
									<i class="fa fa-edit"> </i>
								</button>
								<button type="button" class="btn btn-sm btn-danger"
									title="删除..." onclick="Del()">
									<i class="fa fa-trash"> </i>
									<!--删除-->
								</button>
							</td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td>6</td>
							<th>iPhone 6s</th>
							<th>2017-02-26 18:26</th>
							<th>已发放</th>
							<th>张三</th>
							<th>13699588666</th>
							<th>福田区车公庙劲松大厦12F</th>
							<td>
								<button type="button" class="btn btn-sm btn-info" title="修改发送状态"
									onclick="Modifysendstatus()">
									<i class="fa fa-edit"> </i>
								</button>
								<button type="button" class="btn btn-sm btn-danger"
									title="删除..." onclick="Del()">
									<i class="fa fa-trash"> </i>
									<!--删除-->
								</button>
							</td>
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
			</div>
			<div class="layui-tab-item" style="margin-top: 20px;">
				<table class="site-table table-hover">
					<thead>
						<tr>
							<th>序号</th>
							<th>兑换物品</th>
							<th>兑换时间</th>
							<th>发货状态</th>
							<th>收货人</th>
							<th>收货手机号</th>
							<th>收货地址</th>
							<th>操作</th>
						</tr>
					</thead>
					<!--内容容器-->
					<tbody>
						<tr>
							<td>1</td>
							<th>iPhone 6s</th>
							<th>2017-02-26 18:26</th>
							<th>未发放</th>
							<th>张三</th>
							<th>13699588666</th>
							<th>福田区车公庙劲松大厦12F</th>
							<td>
								<button type="button" class="btn btn-sm btn-info" title="修改发送状态"
									onclick="Modifysendstatus()">
									<i class="fa fa-edit"> </i>
								</button>
								<button type="button" class="btn btn-sm btn-danger"
									title="删除..." onclick="Del()">
									<i class="fa fa-trash"> </i>
									<!--删除-->
								</button>
							</td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td>2</td>
							<th>iPhone 6s</th>
							<th>2017-02-26 18:26</th>
							<th>未发放</th>
							<th>张三</th>
							<th>13699588666</th>
							<th>福田区车公庙劲松大厦12F</th>
							<td>
								<button type="button" class="btn btn-sm btn-info" title="修改发送状态"
									onclick="Modifysendstatus()">
									<i class="fa fa-edit"> </i>
								</button>
								<button type="button" class="btn btn-sm btn-danger"
									title="删除..." onclick="Del()">
									<i class="fa fa-trash"> </i>
									<!--删除-->
								</button>
							</td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td>3</td>
							<th>iPhone 6s</th>
							<th>2017-02-26 18:26</th>
							<th>未发放</th>
							<th>张三</th>
							<th>13699588666</th>
							<th>福田区车公庙劲松大厦12F</th>
							<td>
								<button type="button" class="btn btn-sm btn-info" title="修改发送状态"
									onclick="Modifysendstatus()">
									<i class="fa fa-edit"> </i>
								</button>
								<button type="button" class="btn btn-sm btn-danger"
									title="删除..." onclick="Del()">
									<i class="fa fa-trash"> </i>
									<!--删除-->
								</button>
							</td>
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
			</div>
			<div class="layui-tab-item" style="margin-top: 20px;">
				<table class="site-table table-hover">
					<thead>
						<tr>
							<th>序号</th>
							<th>兑换物品</th>
							<th>兑换时间</th>
							<th>发货状态</th>
							<th>收货人</th>
							<th>收货手机号</th>
							<th>收货地址</th>
							<th>操作</th>
						</tr>
					</thead>
					<!--内容容器-->
					<tbody>
						<tr>
							<td>1</td>
							<th>iPhone 6s</th>
							<th>2017-02-26 18:26</th>
							<th>已发放</th>
							<th>张三</th>
							<th>13699588666</th>
							<th>福田区车公庙劲松大厦12F</th>
							<td>
								<button type="button" class="btn btn-sm btn-info" title="修改发送状态"
									onclick="Modifysendstatus()">
									<i class="fa fa-edit"> </i>
								</button>
								<button type="button" class="btn btn-sm btn-danger"
									title="删除..." onclick="Del()">
									<i class="fa fa-trash"> </i>
									<!--删除-->
								</button>
							</td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td>2</td>
							<th>iPhone 6s</th>
							<th>2017-02-26 18:26</th>
							<th>已发放</th>
							<th>张三</th>
							<th>13699588666</th>
							<th>福田区车公庙劲松大厦12F</th>
							<td>
								<button type="button" class="btn btn-sm btn-info" title="修改发送状态"
									onclick="Modifysendstatus()">
									<i class="fa fa-edit"> </i>
								</button>
								<button type="button" class="btn btn-sm btn-danger"
									title="删除..." onclick="Del()">
									<i class="fa fa-trash"> </i>
									<!--删除-->
								</button>
							</td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td>3</td>
							<th>iPhone 6s</th>
							<th>2017-02-26 18:26</th>
							<th>已发放</th>
							<th>张三</th>
							<th>13699588666</th>
							<th>福田区车公庙劲松大厦12F</th>
							<td>
								<button type="button" class="btn btn-sm btn-info" title="修改发送状态"
									onclick="Modifysendstatus()">
									<i class="fa fa-edit"> </i>
								</button>
								<button type="button" class="btn btn-sm btn-danger"
									title="删除..." onclick="Del()">
									<i class="fa fa-trash"> </i>
									<!--删除-->
								</button>
							</td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td>4</td>
							<th>iPhone 6s</th>
							<th>2017-02-26 18:26</th>
							<th>已发放</th>
							<th>张三</th>
							<th>13699588666</th>
							<th>福田区车公庙劲松大厦12F</th>
							<td>
								<button type="button" class="btn btn-sm btn-info" title="修改发送状态"
									onclick="Modifysendstatus()">
									<i class="fa fa-edit"> </i>
								</button>
								<button type="button" class="btn btn-sm btn-danger"
									title="删除..." onclick="Del()">
									<i class="fa fa-trash"> </i>
									<!--删除-->
								</button>
							</td>
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
			</div>
		</div>
	</div>






	</div>
	</section> </section> </section>

	<!--弹出层开始-->
	<div class="pop-cot">

		<!--查看详情信息-->
		<div id="send-status" class="pop-div student-info">
			<fieldset class="layui-elem-field" style="margin-top: 20px;">
				<legend
					style="font-size: 14px; border-bottom: 1px solid #fff; width: auto;">
					<a style="color: red;">商品详情信息</a>
				</legend>

				<form class="layui-form" action=""
					style="width: 95%; margin: 0 auto;""">
					<div class="layui-form-item2">
						<div class="layui-inline">
							<label class="layui-form-label">发放状态</label>
							<div class="layui-input-block">
								<select name="interest" lay-filter="aihao"
									style="display: none;">
									<option value="0">未发放</option>
									<option value="1">已发放</option>
								</select>
							</div>
						</div>
					</div>

					<div class="layui-form-item2">
						<div class="layui-inline">
							<label class="layui-form-label">快递公司</label>
							<div class="layui-input-block">
								<input type="text" id="" class="layui-input"
									style="width: 106%;">
							</div>
						</div>
					</div>
					<div class="layui-form-item2">
						<div class="layui-inline">
							<label class="layui-form-label">物流单号</label>
							<div class="layui-input-block">
								<input type="text" id="" class="layui-input"
									style="width: 106%;">
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



	<!-- JS -->
	<script type="text/javascript" src="${ctp }/js/plugins/layui/layui.js"></script>

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
		//修改发送状态
		function Modifysendstatus() {
			artDialog({
				id : 'EditRember-form',
				title : '修改发送状态',
				content : document.getElementById('send-status'),
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

	<!--tab切换-->
	<script>
		layui.use('element', function() {
			var $ = layui.jquery, element = layui.element(); //Tab的切换功能，切换事件监听等，需要依赖element模块

			//触发事件
			var active = {
				tabAdd : function() {
					//新增一个Tab项
					element.tabAdd('demo', {
						title : '新选项' + (Math.random() * 1000 | 0) //用于演示
						,
						content : '内容' + (Math.random() * 1000 | 0),
						id : new Date().getTime()
					//实际使用一般是规定好的id，这里以时间戳模拟下
					})
				},
				tabDelete : function(othis) {
					//删除指定Tab项
					element.tabDelete('demo', '44'); //删除：“商品管理”

					othis.addClass('layui-btn-disabled');
				},
				tabChange : function() {
					//切换到指定Tab项
					element.tabChange('demo', '22'); //切换到：用户管理
				}
			};

			$('.site-demo-active').on('click', function() {
				var othis = $(this), type = othis.data('type');
				active[type] ? active[type].call(this, othis) : '';
			});

			//Hash地址的定位
			var layid = location.hash.replace(/^#test=/, '');
			element.tabChange('test', layid);

			element.on('tab(test)', function(elem) {
				location.hash = 'test=' + $(this).attr('lay-id');
			});

		});
	</script>




	<script>
		layui
				.use(
						[ 'form', 'layedit', 'laydate' ],
						function() {
							var form = layui.form(), layer = layui.layer, layedit = layui.layedit, laydate = layui.laydate;

							//创建一个编辑器
							var editIndex = layedit.build('LAY_demo_editor');
							//自定义验证规则
							form.verify({
								title : function(value) {
									if (value.length < 5) {
										return '标题至少得5个字符啊';
									}
								},
								pass : [ /(.+){6,12}$/, '密码必须6到12位' ],
								content : function(value) {
									layedit.sync(editIndex);
								}
							});

							//监听提交
							form.on('submit(demo1)', function(data) {
								layer.alert(JSON.stringify(data.field), {
									title : '最终的提交信息'
								})
								return false;
							});
						});
	</script>


</body>

</html>
