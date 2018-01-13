<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
	<meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no, width=device-width">

    <!-- CSS Code -->
    <link rel="stylesheet" href="../static/WeChat/css/yule_style.css" type="text/css">
    <link rel="stylesheet" href="../static/WeChat/css/flickerplate.css" type="text/css">
    <!--全局公用样式-->
    <link rel="stylesheet" type="text/css" href="../static/WeChat/css/globle.css" />

    <!-- JavaScript Code -->
    <script src="../static/WeChat/js/jquery.min.js"></script>
    <script src="../static/WeChat/js/bootstrap.js"></script>

    <script src="../static/WeChat/js/modernizr-custom-v2.7.1.min.js"></script>
    <script src="../static/WeChat/js/jquery-finger-v0.1.0.min.js"></script>
    <script src="../static/WeChat/js/flickerplate.min.js"></script>
    <script src="../static/WeChat/js/jquery.lazyload.js"></script>

</head>
<!--
    类命名规则 布局（grid）（.g-）；
    模块（module）（.m-）；
    元件（unit）（.u-）；
    功能（function）（.f-）；
    皮肤（skin）（.s-）；
    状态（.z-）。
     -->
<body bgcolor="#fff">
	<header>
    	<a href="../users/Community?code=${code}"><div class="_left"><img src="../static/WeChat/images/yule/Arrow-Left-icon.png"></div></a>
        话题
        <a href="#" onclick="$('#add').submit()"><div class="_right"><span>发布</span></div></a>
    </header>
    
    <div class="yule_dynamic">
    	<form action="../users/addCommunity?code=${code}" id="add" method="post">
    	
			<textarea autofocus placeholder="标题（可选）" onKeyUp="checkLen(this)" name="topicTitle" style="border-bottom: 1px solid #ddd;"></textarea>
			<textarea autofocus placeholder="发表一下心情吧" onKeyUp="checkLen(this)" name="topicMatter" style="height:6rem;"></textarea>
	        <div class="add">
	        	<div>
				    <ul class="upload-ul clearfix">
				        <li class="upload-pick">
				            <div class="webuploader-container clearfix" id="goodsUpload"></div>
				        </li>
				    </ul>
				</div>
	        </div>  
        </form>     
    </div>
</body>
<script src="../static/WeChat/js/script.js"></script>
<script src="../static/WeChat/js/webuploader.min.js"></script>
<script src="../static/WeChat/js/diyUpload.js"></script>
</html>

<script>
	    $(function(){
	
	        //上传图片
	        var $tgaUpload = $('#goodsUpload').diyUpload({
	            url:'/uploadFilePath',
	            success:function( data ) { },
	            error:function( err ) { },
	            buttonText : '',
	            accept: {
	                title: "Images",
	                extensions: 'gif,jpg,jpeg,bmp,png'
	            },
	            thumb:{
	                width:120,
	                height:90,
	                quality:100,
	                allowMagnify:true,
	                crop:true,
	                type:"image/jpeg"
	            }
	        });
	
	
	    });
	</script>
    <script type="text/javascript"> 
        
        function checkLen(obj) {  
        
        var maxChars = 50;//最多字符数  
        
        if (obj.value.length > maxChars)  obj.value = obj.value.substring(0,maxChars);  
        
        var curr = maxChars - obj.value.length;  
        
        } 
        
   </script>