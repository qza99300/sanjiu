<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link href="css/home.css" rel="stylesheet" type="text/css"/>
<link href="font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link href="http://at.alicdn.com/t/font_6yxmrwgmg7kl0udi.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" href="css/style1.css">
<link rel="stylesheet" type="text/css" href="css/swiper-3.4.2.min.css">
<link href="css/Hui.css" rel="stylesheet" type="text/css"/>
<link href="css/swiper.min.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/mdialog.css">
<style type="text/css">
.tb960x90 {display:none!important;display:none}
.biao {height: 3.414em;line-height: 3.414em;}
.biao span{width:8%;display: -webkit-inline-box;}
.biao span img{width:100%;}
 .swiper-pagination { bottom: -5px !important; }
</style>
</head>
<body>
<!--top-->
<div class="top_c" style="background-color: #5077AA;">
	<p class="titi">
		工作台
	</p>
</div>
<!--头部-->
<div class="tou">
	<div class="sp_pr" style="border:none;">
	</div>
</div>
<div class="width100 hidden" style="height:225px;background:url(images/bg_02.png) repeat-x">
	<div class="width96 center hidden">
    	<img src="images/newDefaul.png" style="width:56px;height:56px;border-radius:50%;margin:0 auto;margin-top:63px;">
        <!--n0,n1,n2,n3-->
        <div class="width100 tcenter n0 font14 fff" style="margin-top:6px;">138***&nbsp;6544
        <span class="H-badge H-display-inline-block" onclick="window.location.href='exchange.html'"><label class="H-display-inline-block H-vertical-middle H-theme-background-color8 H-theme-font-color-white H-font-size-12"><i class="fa fa-stack-exchange"></i>786</label></span>
        </div>
        <div class="width100 tcenter n0 font14 fff" style="margin-top:6px;">
        	<button style="margin-top:6px;" id="success" class="H-button H-font-size-15 H-outline-none H-padding-vertical-both-8 H-padding-horizontal-both-20 H-theme-background-color9 H-theme-font-color-white H-theme-border-color9 H-theme-border-color9-click H-theme-background-color9-click H-theme-font-color9-click H-border-radius-3">签到</button>
        </div>
        
    </div>
</div>
    <div class="H-flexbox-horizontal H-text-align-center H-theme-background-color-white H-padding-vertical-both-10">
        <div class="H-flex-item" onclick="window.location.href='personal.html'">
            <span class="H-icon H-center-all H-theme-background-color1 H-border-radius-circle H-margin-horizontal-auto" style="height: 42px; width: 42px; "><i class="H-iconfont H-icon-qq H-font-size-22 H-theme-font-color-white"></i></span>
            <label class="H-display-block H-font-size-13 H-margin-vertical-top-5">个人信息</label>
        </div>
        <div class="H-flex-item" onclick="window.location.href='Record.html'">
            <span class="H-icon H-center-all H-theme-background-color2 H-border-radius-circle H-margin-horizontal-auto" style="height: 42px; width: 42px; "><i class="H-iconfont H-icon-weixin H-font-size-22 H-theme-font-color-white"></i></span>
            <label class="H-display-block H-font-size-13 H-margin-vertical-top-5">学习记录</label>
        </div>
        <div class="H-flex-item" onclick="window.location.href='integral.html'">
            <span class="H-icon H-center-all H-theme-background-color5 H-border-radius-circle H-margin-horizontal-auto" style="height: 42px; width: 42px; "><i class="H-iconfont H-icon-friends H-font-size-22 H-theme-font-color-white"></i></span>
            <label class="H-display-block H-font-size-13 H-margin-vertical-top-5">积分记录</label>
        </div>
    </div>

<!--footer-->
<div class="footer">
	<div class="container">
		<div class="row">
			<div class="col-xs-3">
				<a href="index.html" class="dao">
				<i class="iconfont icon-shouye-copy-copy-copy"></i>
				<span class="nav_ti">首页</span>
				</a>
			</div>
			<div class="col-xs-3">
				<a href="activity.html" class="dao">
				<i class="iconfont icon-zhangdan"></i>
				<span class="nav_ti">活动</span>
				</a>
			</div>
			<div class="col-xs-3">
				<a href="Community.html" class="dao">
				<i class="iconfont icon-qianbao-"></i>
				<span class="nav_ti">社区</span>
				</a>
			</div>
			<div class="col-xs-3">
				<a href="work.html" class="dao">
				<i class="iconfont icon-information" style="color:#246fc0;"></i>
				<span class="nav_ti" style="color:#246fc0;">我的</span>
				</a>
			</div>
		</div>
	</div>
</div>
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/index.js" type="text/javascript"></script>
<script type="text/javascript" src="js/zepto.min.js"></script>
<script type="text/javascript" src="js/mdialog.js"></script>
</body>
</html>
<script type="text/javascript">
	
	 $("#success").click(function(){  
        new TipBox({type:'success',str:'签到成功',hasBtn:true});
    }); 
</script>