<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
 <link href="../static/WeChat/css/Hui.css" rel="stylesheet" type="text/css" />
    <link href="../static/WeChat/css/bootstrap.css" rel="stylesheet" type="text/css"/>
	<link href="../static/WeChat/css/home.css" rel="stylesheet" type="text/css"/>
	<link href="http://at.alicdn.com/t/font_6688xdquixljif6r.css" rel="stylesheet" type="text/css"/>
	<link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">
    <link href="https://cdn.bootcss.com/framework7/1.6.5/css/framework7.ios.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/framework7/1.6.5/css/framework7.ios.colors.min.css" rel="stylesheet">
    <link href="../static/WeChat/css/style2.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../static/WeChat/css/mdialog.css">
</head>
<body>
	<div class="top_c">
	<a href="../users/personal?code=${code}" class="iconfont icon-jiantou-copy-copy"></a>
	<p class="titi">
		厚德毅行
	</p>
	</div>
    <!--################### 单行，不带文字，不带线 ###################-->
    <div style="margin-top: 40px;" class="H-channel-title H-flexbox-horizontal H-theme-background-color-white H-vertical-middle H-border-vertical-bottom-after">
        <div class="H-channel-line H-theme-background-color-black H-padding-vertical-top-15 H-padding-horizontal-left-3  H-margin-horizontal-left-10"></div>
        <div class="H-channel-text H-theme-font-color-black H-flex-item H-font-size-18 H-theme-font-color-black H-padding-10 H-margin-horizontal-right-10 H-text-show-row-1">个人信息修改</div>
    </div>
    <form action="../users/updates?code=${code}" id="Update" method="post">
    	<div class="H-padding-vertical-bottom-10"></div>
	    <div class="H-flexbox-horizontal H-border-vertical-both-after"><input type="hidden" value="${list.userId}" name="userId">
	        <span class="H-vertical-middle H-padding-horizontal-left-10 H-theme-background-color-white H-font-size-16">姓名：</span><input type="text" name="userName" value="${list.userName}" class="H-textbox H-vertical-align-middle H-vertical-middle H-font-size-16 H-flex-item H-box-sizing-border-box H-border-none H-outline-none H-padding-12" placeholder="xxxxxx" />
	    </div>
	    <div class="H-flexbox-horizontal H-border-vertical-bottom-after">
	        <span class="H-vertical-middle H-padding-horizontal-left-10 H-theme-background-color-white H-font-size-16">部门：</span><input type="text" name="department" value="${list.department}" class="H-textbox H-vertical-align-middle H-vertical-middle H-font-size-16 H-flex-item H-box-sizing-border-box H-border-none H-outline-none H-padding-12" placeholder="xxxxxx" />
	    </div>
	    <div class="H-flexbox-horizontal H-border-vertical-bottom-after">
	        <span class="H-vertical-middle H-padding-horizontal-left-10 H-theme-background-color-white H-font-size-16">角色：</span><input type="text" name="duty" value="${list.duty}" class="H-textbox H-vertical-align-middle H-vertical-middle H-font-size-16 H-flex-item H-box-sizing-border-box H-border-none H-outline-none H-padding-12" placeholder="xxxxxx" />
	    </div>
	    <div class="H-flexbox-horizontal H-border-vertical-bottom-after">
	        <span class="H-vertical-middle H-padding-horizontal-left-10 H-theme-background-color-white H-font-size-16">手机：</span><input type="text" name="phone" value="${list.phone}" class="H-textbox H-vertical-align-middle H-vertical-middle H-font-size-16 H-flex-item H-box-sizing-border-box H-border-none H-outline-none H-padding-12" placeholder="xxxxxx" />
	    </div>
	    <div class="H-flexbox-horizontal H-border-vertical-bottom-after">
	        <span class="H-vertical-middle H-padding-horizontal-left-10 H-theme-background-color-white H-font-size-16">邮箱：</span><input type="text" name="email" value="${list.email}" class="H-textbox H-vertical-align-middle H-vertical-middle H-font-size-16 H-flex-item H-box-sizing-border-box H-border-none H-outline-none H-padding-12" placeholder="xxxxxx" />
	    </div>
	    <div class="H-flexbox-horizontal H-border-vertical-bottom-after">
	        <span class="H-vertical-middle H-padding-horizontal-left-10 H-theme-background-color-white H-font-size-16">微信号：</span><input type="text" name="openId" value="${list.openId}" class="H-textbox H-vertical-align-middle H-vertical-middle H-font-size-16 H-flex-item H-box-sizing-border-box H-border-none H-outline-none H-padding-12" placeholder="xxxxxx" />
	    </div>
	    <div class="H-flexbox-horizontal H-border-vertical-bottom-after">
	        <span class="H-vertical-middle H-padding-horizontal-left-10 H-theme-background-color-white H-font-size-16">省市区：</span><input type="text" name="pca" value="${list.province} ${list.city} ${list.area2}" readonly id="location" name="location" class="H-textbox H-vertical-align-middle H-vertical-middle H-font-size-16 H-flex-item H-box-sizing-border-box H-border-none H-outline-none H-padding-12" placeholder="xxxxxx" />
	    </div>
	    <div class="H-flexbox-horizontal H-border-vertical-bottom-after">
	        <span class="H-vertical-middle H-padding-horizontal-left-10 H-theme-background-color-white H-font-size-16">详细地址：</span><input type="text" name="address" value="${list.address}" class="H-textbox H-vertical-align-middle H-vertical-middle H-font-size-16 H-flex-item H-box-sizing-border-box H-border-none H-outline-none H-padding-12" placeholder="xxxxxx" />
	    </div>
	    <div class="H-flexbox-horizontal H-border-vertical-bottom-after">
	        <span class="H-vertical-middle H-padding-horizontal-left-10 H-theme-background-color-white H-font-size-16">创建时间：</span><fmt:formatDate value="${list.createDate}" pattern="yyyy-MM-dd"/>
	    </div>
	    <div class="H-padding-vertical-bottom-10"></div>
	    <div class="H-flexbox-horizontal H-border-vertical-bottom-after">
	        <button type="button" id="put"  class="H-button H-width-100-percent  H-font-size-15 H-outline-none H-padding-vertical-both-12 H-padding-horizontal-both-20 H-theme-background-color1 H-theme-font-color-white H-theme-border-color1 H-theme-border-color1-click H-theme-background-color1-click H-theme-font-color1-click H-border-radius-3">确认</button>
	    </div>
    </form>
   
   	<script type="text/javascript" src="../static/WeChat/js/jquery.min.js" ></script>
   	<script src="https://cdn.bootcss.com/framework7/1.6.5/js/framework7.min.js"></script>
    <script src="../static/WeChat/js/regionsObject2.js"></script>
    <script src="../static/WeChat/js/cityPicker.js"></script>
    <script type="text/javascript" src="../static/WeChat/js/zepto.min.js"></script>
	<script type="text/javascript" src="../static/WeChat/js/mdialog.js"></script>
	
	<script type="text/javascript">
		//提交
		$("#put").click(function() {
			//获取表单数据
			var params = $("#Update").serialize();
			$.post("../users/updates?code=${code}", params, function(data) {
				if(data=="yes"){
					new TipBox({type:'success',str:'修改成功',hasBtn:true,setTime:1000,callBack:function(){ 
            				window.location.href='../users/personal?code=${code}'
						}
					});
				}else{
					new TipBox({type:'error',str:'修改失败',hasBtn:true});
				}

			}).fail(function() {
				new TipBox({type:'error',str:'修改失败',hasBtn:true});
			});
		});
	</script>
	
</body>
</html>