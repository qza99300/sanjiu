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
<link href="../static/WeChat/css/home.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="../static/WeChat/css/yule_style.css" type="text/css">
<link href="http://at.alicdn.com/t/font_l6a0fwucxvzehfr.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" href="../static/WeChat/css/global.css"/>
<link rel="stylesheet" type="text/css" href="../static/WeChat/css/mdialog.css">
		
<script type="text/javascript" src="../static/WeChat/js/jquery.min.js"></script>
<script type="text/javascript" src="../static/WeChat/js/windowOpen.js" ></script>
<script type="text/javascript" src="../static/WeChat/js/zepto.min.js"></script>
<script type="text/javascript" src="../static/WeChat/js/mdialog.js"></script>
</head>
<body style="background-color: #FFFFFF;">
<!--top-->
<!--头部-->
<div class="top_c">
	<a href="../users/personal${code}" class="iconfont icon-jiantou-copy-copy"></a>
	<p class="titi">
		积分兑换物品
	</p>
	</div>
<!--列表-->
 <div class="g_short clear" style="background-color: #FFFFFF;margin-top: 70px;">
 <input type="hidden" value="${cont}" id="cont">
 <input type="hidden" value="${code}" id="code">
                        <ul>
                        	<c:forEach items="${list}" var="list">
                        		<a href="#">
		                           <li>
		                                <!-- 半透明遮罩 -->
		                                <div class="main"><img src="../static/WeChat/images/02厚德毅行活动_03.jpg"></div>
		                                <h4>${list.productName}</h4>
		                                <h1>结束时间：<fmt:formatDate value="${list.endDate}" pattern="yyyy-MM-dd"/> </h1>
		                                <h2><span style="font-size:0.5rem;color: #FF8C00;">积分：${list.productIntegral}</span>剩余数量：${list.productCount}</h2>
		                                <h3><img src="../static/WeChat/images/dui.jpg" onclick="show(${list.productCount},${list.productIntegral},${list.productId})" /></h3>
		                            </li>
	                            </a>
                        	</c:forEach>
                        </ul>    
              </div>
		<script type="text/javascript" >
		
			//兑换
			var code=$("#code").val();
			function show(count,i,l) {
				var setTitle = '';
				var setContents = '';
				var setButton = '';
				var cont=$("#cont").val();
				alert(code);
				if(cont<l){
					new TipBox({type:'error',str:'所需积分不足',hasBtn:true});
				}else if(0>=count){
					new TipBox({type:'error',str:'数量为零不能兑换',hasBtn:true});
				}else{
					setTitle = '确定使用'+i+'金币兑换？';
					setContents = '请按后续的提示使用';
					setButton = '["取消","确定"]';
					$(this).openWindow(setTitle,setContents,setButton,l,code);
				}
		
			}
			
</script>
</body>
</html>