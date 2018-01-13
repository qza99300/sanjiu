<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link href="../static/WeChat/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<link href="../static/WeChat/css/home.css" rel="stylesheet" type="text/css"/>
<link href="../static/WeChat/css/Hui.css" rel="stylesheet" type="text/css" />
<link href="http://at.alicdn.com/t/font_6688xdquixljif6r.css" rel="stylesheet" type="text/css"/>
<script src="../static/WeChat/js/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="../static/WeChat/css/mdialog.css">
<style>
.slideup{width:320px;height:auto;overflow:hidden;margin:0 auto;border:1px solid #fff;text-align: center;padding: 10px;background: #fff;color:#000;font-weight:bold;border-radius: 0 0 8px 8px;}  
.the_height{height: 250px;}  
.slidedown{height: auto;}  
.btn_click{display: block;width: 120px;height: 30px;position:relative;line-height:30px;margin: 10px auto;color: #fff;background: #999;text-align: center;text-decoration: none;text-indent:-1em;border-radius: 5px;}  
.arrowup:after{content: "";width: 8px;height: 8px;border: 3px double #fff;position: absolute;top: 10px;border-width: 3px 3px 0 0;-webkit-transform:rotate(-45deg);}  
.arrowup:before{content: "";width: 6px;height: 6px;border: 1px solid #fff;position: absolute;top: 15px;border-width: 1px 1px 0 0;-webkit-transform:rotate(-45deg);}  
.arrowdown:after{content: "";width: 8px;height: 8px;border: 3px double #fff;position: absolute;top: 8px;border-width: 3px 3px 0 0;-webkit-transform:rotate(135deg);}  
.arrowdown:before{content: "";width: 6px;height: 6px;border: 1px solid #fff;position: absolute;top: 7px;border-width: 1px 1px 0 0;-webkit-transform:rotate(135deg);}
    </style>
</head>
<body style="background:#fff;">
<!--top-->
<div class="top_c">
	<a href="../ActivityManage/ShowAll?code=${code}" class="iconfont icon-jiantou-copy-copy"></a>
	<p class="titi">
		厚德毅行
	</p>
</div>
<div class="login">
		<div class="zhu">
			<div class="f-overlay">
				 <div id="con1" style="width:100%;height:200px;background-color: aqua;">
        <script src="../static/WeChat/plugins/swise player/sewise.player.min.js#url=../WeChat/images/everything.mp4&autostart=false&skin=vodFlowPlayer&playsinline=true"></script>
    </div>
			</div>
			<strong>${list.activityTitle}</strong><br/>
			<span>限报名：<font id="limit">500</font>人&nbsp;已报名<font id="number"><c:if test="${list.activityNum==null}">0</c:if>${list.activityNum}</font>人</span>
		</div>
</div>
<div class="slideup" style="margin-top: 50px;">
	${list.activityMatter}
</div>  
<a href="javascript:void(0)" class="btn_click arrowdown"></a>
<div class="H-flexbox-horizontal H-border-vertical-bottom-after">
        <button onclick="Verification()" class="H-button H-width-100-percent  H-font-size-15 H-outline-none H-padding-vertical-both-12 H-padding-horizontal-both-20 H-theme-background-color1 H-theme-font-color-white H-theme-border-color1 H-theme-border-color1-click H-theme-background-color1-click H-theme-font-color1-click H-border-radius-3">确认</button>
</div>
<script src="../static/WeChat/js/index.js" type="text/javascript"></script>
<script type="text/javascript" src="../static/WeChat/js/zepto.min.js"></script>
<script type="text/javascript" src="../static/WeChat/js/mdialog.js"></script>
<script type="text/javascript">
	
	//验证人数
	function Verification() {
		var number=$("#number").html();
		var limit=$("#limit").html();
		var id=${list.activityId};
		
		if(number>limit){
			new TipBox({type:'error',str:'报名人数已满',hasBtn:true});
		}else{
			$.ajax({
	            url: "../ActivityManage/Prompt?code=${code}",
	            type: "post",
	            datatype: "json",
	            data: { "activityId": id},
	            success: function (data) {
		                if (data== "no") {
		                	new TipBox({type:'error',str:'您已经报名过该活动',hasBtn:true});
		                }else{
		                	tj();
		                }
	            }
	        })
		}
	}
	
	//提交
	function tj() {
		var id=${list.activityId};
		$.ajax({	
            url: "../ActivityManage/addActivity?code=${code}",
            type: "post",
            datatype: "json",
            data: { "id": id},
            success: function (data) {
	                if (data== "yes") {
	                	new TipBox({type:'success',str:'报名成功',setTime:1000,callBack:function(){ 
	                			window.location.href='../ActivityManage/ShowAll?code=${code}'
	    					}
	    				});
	                }
	                else {
	                	new TipBox({type:'error',str:'报名失败',hasBtn:true});
	                }
            }
		})
	}

	$('.btn_click').click(function(){  
    var class_lists=$('.slideup').attr('class');  
    var class_index=class_lists.indexOf('isdown');  
    if(class_index==-1){  
    $('.slideup').slideDown().addClass('isdown slidedown');  
    $('.btn_click').html("").removeClass('arrowdown').addClass('arrowup');  
}else{  
    $('.slideup').slideDown().addClass('the_height').removeClass('isdown slidedown');  
    $('.btn_click').html("").removeClass('arrowup').addClass('arrowdown');  
}  
});  
$(document).ready(function(){  
    var article_height=$('.slideup').height();  
    //alert(article_height);  
    if(article_height<=250){  
        $('.btn_click').hide();  
        $('.slideup').addClass('slidedown');  
    }else{  
        $('.slideup').addClass('the_height');  
    }  
}); 
</script>
</body>
</html>