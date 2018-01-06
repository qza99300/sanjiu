<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
<link href="css/home.css" rel="stylesheet" type="text/css"/>
<link href="css/Hui.css" rel="stylesheet" type="text/css" />
<link href="http://at.alicdn.com/t/font_6688xdquixljif6r.css" rel="stylesheet" type="text/css"/>
<link href="css/Hui.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.min.js"></script>
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
	<a href="index.html" class="iconfont icon-jiantou-copy-copy"></a>
	<p class="titi">
		厚德毅行
	</p>
</div>
<div class="login">
		<div class="zhu">
			<div class="f-overlay">
				 <div id="con1" style="width:100%;height:200px;background-color: aqua;">
        <script src="plugins/swise player/sewise.player.min.js#url=images/泠鸢yousa - 疯狂动物城try everything.mp4&autostart=false&skin=vodFlowPlayer&playsinline=true"></script>
    </div>
			</div>
			<strong>英语口语发音练习</strong><br/>
			<span>限报名：200人&nbsp;已报名168人</span>
		</div>
</div>
<div class="slideup" style="margin-top: 50px;">
	华润三九医药股份有限公司（简称“华润三九”）是大型国有控股医药上市公司，前身为深圳南方制药厂。1999年4月21日，发起设立股份制公司。2000年3月9日在深圳证券交易所挂牌上市，股票代码000999。公司于2007年11月底正式进入华润集团。2010年2月，公司名称由“三九医药股份有限公司”正式变更为"华润三九医药股份有限公司"。
		华润三九医药股份有限公司（简称“华润三九”）是大型国有控股医药上市公司，前身为深圳南方制药厂。1999年4月21日，发起设立股份制公司。2000年3月9日在深圳证券交易所挂牌上市，股票代码000999。公司于2007年11月底正式进入华润集团。2010年2月，公司名称由“三九医药股份有限公司”正式变更为"华润三九医药股份有限公司"。
</div>  
<a href="javascript:void(0)" class="btn_click arrowdown"></a>
<div class="H-flexbox-horizontal H-border-vertical-bottom-after">
        <button class="H-button H-width-100-percent  H-font-size-15 H-outline-none H-padding-vertical-both-12 H-padding-horizontal-both-20 H-theme-background-color1 H-theme-font-color-white H-theme-border-color1 H-theme-border-color1-click H-theme-background-color1-click H-theme-font-color1-click H-border-radius-3">确认</button>
    </div>
<script src="js/index.js" type="text/javascript"></script>
<script type="text/javascript">
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