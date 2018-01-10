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

	<div class="row">
		<div class="col-sm-9">
			<section>
				<button type="button" class="btn btn-info btn-primary"
					style="margin-left: 5%;" data-toggle="modal" data-target="#addIntegralRecordBtn">
					<i class="fa fa-edit"> </i> 新增物品
				</button>
			</section>
		</div>
	</div>
	

	<!--筛选开始-->
	<div class="layui-field-box">
		<form id="querrtByPhoneForm1" class="layui-form" action="">
			<div class="layui-form-item">
				<div class="layui-inline">
					<label class="layui-form-label">查询条件</label>
					<div class="layui-input-block">
						<input id="inputId1" type="text" name="userName"  placeholder="请输入联系人名称" class="layui-input">
					</div>
				</div>

				<div class="layui-inline" style="margin-top: -5px; margin-left: 5%;">
					<button id="querryOneBtn1" type="button" class="layui-btn layui-btn-primary-search">查询</button>
				</div>
			</div>
		</form>
	</div>


	<!--table开始-->
	<div class="layui-tab layui-tab-card" style="margin-top: -10px;">
		<ul class="layui-tab-title">
			<li id="allLiLabel" class="layui-this">全部</li>
			<li id="no_ok_LiLabel">未发放</li>
			<li id="okLiLabel">已发放</li>
		</ul>
		<div class="layui-tab-content">
			<div class="layui-tab-item layui-show" style="margin-top: 20px;">
				<table id="recordTable" class="site-table table-hover">
					<thead>
						<tr>
							<th width="30"><input type="checkbox" id="allCheckBox">全选</th>
							<th>序号</th>
							<th>用户名称</th>
							<th>商品名称</th>
							<th>所需积分</th>
							<th>兑换状态</th>
							<th>创建时间</th>
							<th>操作</th>
						</tr>
					</thead>
					<!--内容容器-->
					<tbody>
					
					</tbody>
					<!-- 分页部分 -->
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
		</div>
	</div>
			</section> 
		</section> 
	</section>

	<!--弹出层开始-->



	<!--查看详情信息-->
	<div class="modal fade" id="querryIntegralRecordBtn" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	    <div class="modal-dialog">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                <h4 class="modal-title" id="myModalLabel">详细信息窗口</h4>
	            </div>
	            <div class="modal-body">
				<!-- 内容开始 -->
					<form class="layui-form" action="" id="addRecordForm" style="width: 100%; margin: 10 auto;">
						<div class="layui-form-item2">
							<div class="layui-inline">
								<label class="layui-form-label2">记录编号</label>
								<div class="layui-input-block">
									<input type="text" id="idKey"  name="id" disabled="disabled" class="layui-input">
								</div>
							</div>
							<div class="layui-inline">
								<label class="layui-form-label2">兑换人账号id</label>
								<div class="layui-input-block">
									<input type="text" id="convertIdKey"  disabled="disabled" name="convertId" class="layui-input">
								</div>
							</div>
						</div>
						<div class="layui-form-item2">
							<div class="layui-inline">
								<label class="layui-form-label2">兑换人名称</label>
								<div class="layui-input-block">
									<input type="text" id="convertNameKey" disabled="disabled"  name="convertName" class="layui-input">
								</div>
							</div>
							<div class="layui-inline">
								<label class="layui-form-label2">联系方式</label>
								<div class="layui-input-block">
									<input type="text" id="convertPhoneKey"  disabled="disabled" name="convertPhone" class="layui-input">
								</div>
							</div>
						</div>
						<div class="layui-form-item2">
							<div class="layui-inline">
								<label class="layui-form-label2">商品ID</label>
								<div class="layui-input-block">
									<input type="text" id="productIdKey"  disabled="disabled" name="productId" class="layui-input">
								</div>
							</div>
							<div class="layui-inline">
								<label class="layui-form-label2">商品名称</label>
								<div class="layui-input-block">
									<input type="text" id="productNameKey"  disabled="disabled" name="productName" class="layui-input">
								</div>
							</div>
						</div>
						<div class="layui-form-item2">
							<div class="layui-inline">
								<label class="layui-form-label2">所需积分</label>
								<div class="layui-input-block">
									<input type="text" id="productIntegralKey"  disabled="disabled" name="productIntegral" class="layui-input">
								</div>
								<div class="layui-inline">
								<label class="layui-form-label2">兑换状态</label>
								<div class="layui-input-block">
									<input type="text" id="convertStatusKey"  disabled="disabled" name="convertStatus" class="layui-input">
								</div>
							</div>
							</div>
						</div>
						
						<div class="layui-form-item2" style="margin-top: 10px;">
							<div class="layui-inline">
								<label class="layui-form-label2">快递单号</label>
								<div class="layui-input-block">
									<input type="text" id="courierintegerKey"  disabled="disabled" name="courierinteger" class="layui-input">
								</div>
							</div>
							<div class="layui-inline">
								<label class="layui-form-label2">快递状态</label>
								<div class="layui-input-block">
									<input type="text" id="logisticsStatusKey"  disabled="disabled" name="logisticsStatus"  class="layui-input">
								</div>
							</div>
						</div>
						
						<div class="layui-form-item2">
							
						</div>
						
						<div class="layui-form-item2">
							<div class="layui-inline">
								<label class="layui-form-label2">快递状态</label>
								<div class="layui-input-block">
									<input type="text" id="createDateKey"  disabled="disabled" name="createDate"  class="layui-input">
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label2"><a style="color: red;">*</a>快递地址</label>
								<div class="layui-input-block">
									<input type="text" id="consigneePathKey"  disabled="disabled" name="consigneePath" placeholder="请输入地址信息" class="layui-input" style="width: 96%;">
								</div>
							</div>
						</div>
					</form>
				<!-- 内容结束 -->
		   		 </div>
	            <div class="modal-footer">
	                <button type="button" class="btn btn-default"  data-dismiss="modal">关闭</button>
	            </div>
	        </div><!-- /.modal-content -->
	    </div><!-- /.modal -->
	</div>

	<!-- 模态框部分开始 -->
	<!-- 新增模态框（Modal） -->
	<div class="modal fade" id="addIntegralRecordBtn" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	    <div class="modal-dialog">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                <h4 class="modal-title" id="myModalLabel">新增记录窗口</h4>
	            </div>
	            <div class="modal-body">
				<!-- 内容开始 -->
					<form class="layui-form" action="" id="addRecordForm" style="width: 100%; margin: 10 auto;">
						<div class="layui-form-item2">
							<div class="layui-inline">
								<label class="layui-form-label2"><a style="color: red;">*</a>兑换人账号ID</label>
								<div class="layui-input-block">
									<input type="text" id="" name="convertId" class="layui-input">
								</div>
							</div>
							
						</div>
						<div class="layui-form-item2">
							<div class="layui-inline">
								<label class="layui-form-label2">兑换人名称</label>
								<div class="layui-input-block">
									<input type="text" id="" name="convertName" class="layui-input">
								</div>
							</div>
						</div>
						<div class="layui-form-item2">
							<div class="layui-inline">
								<label class="layui-form-label2"><a style="color: red;">*</a>联系方式</label>
								<div class="layui-input-block">
									<input type="text" id="" name="convertPhone" class="layui-input">
								</div>
							</div>
						</div>
						<div class="layui-form-item2">
							<div class="layui-inline">
								<label class="layui-form-label2"><a style="color: red;">*</a>商品ID</label>
								<div class="layui-input-block">
									<input type="text" id="" name="productId" class="layui-input">
								</div>
							</div>
						</div>
						<div class="layui-form-item2">
							<div class="layui-inline">
								<label class="layui-form-label2">商品名称</label>
								<div class="layui-input-block">
									<input type="text" id="" name="productName" class="layui-input">
								</div>
							</div>
						</div>
						<div class="layui-form-item2">
							<div class="layui-inline">
								<label class="layui-form-label2"><a style="color: red;">*</a>所需积分</label>
								<div class="layui-input-block">
									<input type="text" id="" name="productIntegral" class="layui-input">
								</div>
							</div>
						</div>
						<div class="layui-form-item2">
							<div class="layui-inline">
								<label class="layui-form-label2"><a style="color: red;">*</a>兑换状态</label>
								<div class="layui-input-block">
									<input type="text" id="" name="convertStatus" class="layui-input">
								</div>
							</div>
						</div>
						
						
						<div class="layui-form-item2" style="margin-top: 10px;">
							<div class="layui-inline">
								<label class="layui-form-label2">快递单号</label>
								<div class="layui-input-block">
									<input type="text" id="" name="courierinteger" class="layui-input">
								</div>
							</div>
						</div>
						
						<div class="layui-form-item2">
							<div class="layui-inline">
								<label class="layui-form-label2">快递状态</label>
								<div class="layui-input-block">
									<input type="text" id="" name="logisticsStatus"  class="layui-input">
								</div>
							</div>
						</div>
						
						<div class="layui-form-item2">
							<div class="layui-form-item">
								<label class="layui-form-label2"><a style="color: red;">*</a>快递地址</label>
								<div class="layui-input-block">
									<input type="text" id="" name="consigneePath" placeholder="请输入地址信息" class="layui-input" style="width: 96%;">
								</div>
							</div>
						</div>
					</form>
				<!-- 内容结束 -->
		   		 </div>
	            <div class="modal-footer">
	                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
	                <button id="subAddRecordBtn" type="button" class="btn btn-primary">新增</button>
	            </div>
	        </div><!-- /.modal-content -->
	    </div><!-- /.modal -->
	</div>
	
	
	
	
	<!-- 模态框部分结束 -->
	


	<!-- 公共的js样式 -->
<%@include file="/commons/common-js.jsp"%>

<script type="text/javascript">
		//修改发送状态
		function Modifysendstatus() {
			artDialog({
				id : 'EditRember-form',
				title : '修改发送状态',
				content : document.getElementById('send-status'),
			})
		}

// 	<!--tab切换-->
// 		layui.use('element', function() {
// 			var $ = layui.jquery, element = layui.element(); //Tab的切换功能，切换事件监听等，需要依赖element模块

// 			//触发事件
// 			var active = {
// 				tabAdd : function() {
// 					//新增一个Tab项
// 					element.tabAdd('demo', {
// 						title : '新选项' + (Math.random() * 1000 | 0) //用于演示
// 						,
// 						content : '内容' + (Math.random() * 1000 | 0),
// 						id : new Date().getTime()
// 					//实际使用一般是规定好的id，这里以时间戳模拟下
// 					})
// 				},
// 				tabDelete : function(othis) {
// 					//删除指定Tab项
// 					element.tabDelete('demo', '44'); //删除：“商品管理”

// 					othis.addClass('layui-btn-disabled');
// 				},
// 				tabChange : function() {
// 					//切换到指定Tab项
// 					element.tabChange('demo', '22'); //切换到：用户管理
// 				}
// 			};

// 			$('.site-demo-active').on('click', function() {
// 				var othis = $(this), type = othis.data('type');
// 				active[type] ? active[type].call(this, othis) : '';
// 			});

// 			//Hash地址的定位
// 			var layid = location.hash.replace(/^#test=/, '');
// 			element.tabChange('test', layid);

// 			element.on('tab(test)', function(elem) {
// 				location.hash = 'test=' + $(this).attr('lay-id');
// 			});

// 		});
		
		
		var param = {};
		
		var page = {
			pn : 1,
			ps : 5,
			lastPage : 10
		};
		
		$(function() {
			page.pn = 1;
			getRecords();
		});
		//--------------------------------------------------------------
		function getRecords() {
			$.ajax({
				url : "${ctp}/record/querry",
				data : {
					pn : page.pn,
					ps : page.ps
				},
				success : function(a) {
					showrecords(a);
				}
			});
		}
		//--------------------------------------------------------------		
		function showrecords(data) {
			// 1.清空数据
			$("ul.pagination").empty();
			$("#recordTable tbody").empty();

			//2.显示表格
			buildTable(data);

			//3.显示分页条
			buildPage(data);
		}
		//--------------------------------------------------------------
		function buildTable(data) {
			var recordData = data.list;
			$.each(recordData, function() {
				//创建tr
				var tr = $("<tr></tr>");
				//创建td
	
				var btnTd = $("<td></td>")
				//操作列
	
				btnTd.append('<button rId = "' + this.id + '" type = "button" class = "recordModelShowBtn btn btn-sm btn-success" title="详细信息" ><i class="fa fa-qrcode"></i></button>')
// 					 .append('&nbsp;<button rId = "' + this.id + '" type = "button" class = "updaterecordModelBtn btn btn-sm btn-info" title="修改记录" ><i class="fa fa-pencil"></i></button>')
					 .append('&nbsp;<button rId = "' + this.id + '" type = "button" class = "deleteRecordBtn btn btn-sm btn-danger" title="删除记录" id="removeUserBtn"><i class="fa fa-trash"></i></button>');
	
				tr.append("<td><input type='checkbox' recordId="+ this.iId +" class='itemCheckBox'></td>")
				  .append("<td>" + this.id + "</td>")
				  .append("<td>" + this.userName + "</td>")
				  .append("<td>" + this.productName + "</td>")
				  .append("<td>" + this.productIntegral + "</td>")
				  .append("<td>" + this.convertStatus + "</td>")
				  .append("<td>" + timeFormat(this.createDate))
				  .append(btnTd).appendTo($("#recordTable"));
			});
		}
		
//--------------------------------------------------------------
//时间格式化
		function timeFormat(time) {

			if (time == null) {
				return null;
			}
			var datetime = new Date();
			datetime.setTime(time);
			var year = datetime.getFullYear();
			var month = datetime.getMonth() + 1;
			var date = datetime.getDate();
			var hour = datetime.getHours();
			if (hour <= 9) {
				hour = "0" + hour;
			}
			var minute = datetime.getMinutes();
			if (minute <= 9) {
				minute = "0" + minute;
			}

			var second = datetime.getSeconds();
			if (second <= 9) {

				second = "0" + second;
			}
			// var mseconds = datetime.getMilliseconds();
			//		 	      return year + "-" + month + "-" + date+" "+hour+":"+minute+":"+second;//+"."+mseconds;
			return year + "-" + month + "-" + date;//+"."+mseconds;
		};


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
			getRecords();
		});
		
		function skip(){
			
		}
		
		//-----------------------------------------------------------------------
		$("body").on("click", ".deleteRecordBtn", function() {

			param.rid = $(this).attr("rId");

			layer.confirm("确认删除第【" + param.rid + "】条记录么吗？", {
				btn : [ '确定删除', '取消删除' ]
			}, function() {
				$.get("${ctp}/record/delete", param, function(data) {
					
					layer.msg(data.msg);
					//跳转当前页
					page.pn = page.pageNum;
					getRecords();
				});
				
				//location.reload();
				
			}, function() {
				layer.msg("....");
			});

			return false;
		});
		
		//-----------------------------------------------------------------------
		$("#querryOneBtn1").click(function(){
			
			var data = $("#querrtByPhoneForm1").serialize();
			var dataVal = document.getElementById("inputId1").value;
			page.pn = 1;//第一页数据
			
			if (dataVal) {
				getRecordLike(data);
			}else{
				getRecords();
			}
			
		});
		
		function getRecordLike(data){
			$.post("${ctp}/record/querryByLike",data,function(data){
				console.log(data);				
				showrecords(data);
			});	
		}
		
		//-----------------------------------------------------------
		//根据状态值回显
		//全部，不发回执
		$("#allLiLabel").click(function(){
			
			getRecords();
			return false;
			
		});
		
		//未发放  发1的回执
		$("#no_ok_LiLabel").click(function(){
			$.ajax({
				url : "${ctp}/record/status",
				data : {
					
					convertStatus: 1,
					pn : page.pn,
					ps : page.ps
				},
				success : function(a) {
					showrecords(a);
				}
			});
			
		});
		
		//已发放  发2的回执
		$("#okLiLabel").click(function(){
			
			$.ajax({
				url : "${ctp}/record/status",
				data : {
					
					convertStatus: 2,
					pn : page.pn,
					ps : page.ps
				},
				success : function(a) {
					showrecords(a);
				}
			});
			
		});
		
		//-------------------------------------------------------------
		//新增记录
		$("#subAddRecordBtn").click(function(){
			//获取表单信息
			var data = $("#addRecordForm").serialize();
			
			artDialog.confirm("question", "提示", "确定是否添加记录？", function(){
				$.post("${ctp }/record/add", data, function(data) {
					//后台返回的内容显示提示
					layer.msg(data.msg);
					//关闭模态框
					$("#addIntegralRecordBtn").modal('hide');
					//后台清空模态框里面的内容
					$("#addIntegralRecordBtn input").val("");
					//来到最后一页；
					page.pn = page.lastPage + 10;
					getRecords();
					
					//失败返回的msg
				}).fail(function() {
					layer.msg(data.msg);
					//关闭模态框
					$("#addIntegralRecordBtn").modal('hide');
					//后台清空模态框里面的内容
					$("#addIntegralRecordBtn input").val("");
					//来到最后一页；
					page.pn = page.lastPage + 10;
					getRecords();
					
				});
			});
			
		});
		
		
		//-----------------------------------------------------
		//查看详细信息
		$("body").on("click",".recordModelShowBtn",function(){
			
			param.rId = $(this).attr("rId");
			
			
			$.ajax({
				url : "${ctp}/record/querryById",
				
				data : {
					rId : param.rId,
					pn : page.pn,
					ps : page.ps
				},
				dataType: 'json',
				success : function(data) {
					
					showReturnMsg(data);
					
				}
			});
			//显示详细信息模态框
			$("#querryIntegralRecordBtn").modal({
				backdrop : 'static',
				show : true
			});
		});
		
		//回显信息
		function showReturnMsg(data){
			
			var conData = data.list[0];
			
			//input值
// 			$("#conIdKey").attr("value",conData.consigneeId);
// 			$("#userIdKey").attr("value",conData.userId);
			//回显操作
			document.getElementById("idKey").value = conData.id;
			document.getElementById("convertIdKey").value = conData.convertId;
			document.getElementById("convertPhoneKey").value = conData.convertPhone;
			document.getElementById("productIdKey").value = conData.productId;
			document.getElementById("productNameKey").value = conData.productName;
			document.getElementById("productIntegralKey").value = conData.productIntegral;
			document.getElementById("convertStatusKey").value = conData.convertStatus;
			document.getElementById("courierintegerKey").value = conData.courierinteger;
			document.getElementById("logisticsStatusKey").value = conData.logisticsStatus;
			document.getElementById("consigneePathKey").value = conData.consigneePath;
			document.getElementById("createDateKey").value = timeFormat(conData.createDate);
			document.getElementById("convertNameKey").value = conData.convertName;
			
		}
		
</script>

</body>

</html>
