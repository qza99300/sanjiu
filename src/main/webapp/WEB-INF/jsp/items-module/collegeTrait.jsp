<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="favicon.ico">
<title>学院特点页面</title>

<!-- css样式抽取 -->
<!-- 公共的css样式 -->
<%@include file="/commons/common-css.jsp"%>

<!-- 平台项目模块--学院特点页面 -->
<!-- 平台项目模块--学院特点页面  不用做-->

</head>

<body style="overflow-x: hidden;">

	<section id="container"> <!--内容部分开始--> <section
		id="main-content"> <section class="wrapper">

	<div class="row">
		<div class="col-lg-12">
			<ul class="breadcrumb">
				<li><a href="#"><i class="fa fa-home"></i>首页</a></li>
				<li>»</li>
				<li><a href="#">平台项目</a></li>
				<li>»</li>
				<li class="active">学院特点</li>
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

				<div class="layui-inline" style="margin-top: -5px; margin-left: 5%;">
					<button class="layui-btn layui-btn-primary-search">查询</button>
				</div>


			</div>
		</form>
	</div>


	<!--table开始-->
	<div id="gundong">
		<table id="collegeTable" class="site-table table-hover" style="width: 100%;">
			<thead>
				<tr>
					<th width="30px"><input type="checkbox" id="">全选</th>
					<th>序号</th>
					<th>运单号</th>
					<th>发货方</th>
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
	</section> </section> <!--编辑   弹出层开始--> <!-- JS --> <script type="text/javascript"
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
	<script type="text/javascript" src="${ctp }/js/msgbox.js"></script> <script
		type="text/javascript">
	
	var page = {
			pn : 1,
			ps : 5,
			lastPage : 10
		};
		$(function() {
			page.pn = 1;
			getConsignees();
		});

		function getConsignees() {
			$.ajax({
				url : "${ctp}/consignee/querryAll",
				data : {
					pn : page.pn,
					ps : page.ps
				},
				success : function(a) {
					showconsignees(a);
				}
			});
		}
		function showconsignees(data) {
			//alert(data.size);
			// 1.清空数据
			$("ul.pagination").empty();
			$("#consigneeTable tbody").empty();

			//2.显示表格
			buildTable(data);

			//3.显示分页条
			buildPage(data);
		}

		function buildTable(data) {
			var consigneeData = data.list;
			//alert(consigneeData);
			$
		.each(
				consigneeData,
				function() {
					//创建tr
					var tr = $("<tr></tr>");
					//创建td

					var btnTd = $("<td></td>")
					//操作列

					btnTd
							.append(
									'<button consigneeId = "'
							+ this.consigneeId
							+ '" type = "button" class = "userModelShowBtn btn btn-sm btn-success" title="添加角色" ><i class="fa fa-qrcode"></i></button>')
							.append(
									'&nbsp;<button consigneeId = "'
							+ this.consigneeId
							+ '" type = "button" class = "updateMyUserBtn btn btn-sm btn-info" title="查看信息" ><i class="fa fa-pencil"></i></button>')
							.append(
									'&nbsp;<button consigneeId = "'
							+ this.consigneeId
							+ '" type = "button" class = "deleteUserBtn btn btn-sm btn-danger" title="删除用户" id="removeUserBtn"><i class="fa fa-trash"></i></button>');

					tr.append(
							"<td><input type='checkbox' consigneeId="+ this.consigneeId +" class='itemCheckBox'></td>")
							.append("<td>" + this.consigneeId
							+ "</td>").append(
									"<td>" + this.consigneeName
											+ "</td>").append("<td>" + this.consigneePath)
							.append(btnTd).appendTo(
									$("#collegeTable"));
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
			getConsignees();
		});
	
	
	
	
	
	</script>
</body>

</html>
