<%@ page language="java" contentType="text/html; charset=utf-8"  
    pageEncoding="utf-8"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>文件上传下载</title>  
</head>  
<body>  
    <form action="${ctp }/import/export" method="post" enctype="multipart/form-data">  
        选择文件:<input type="file" name="file" width="120px">  <br/>
        <input type="text" name="productName" value="商品名称"><br/>  
        <input type="text" name="productCount" value="商品数量"><br/>  
        <input type="text" name="productPresentation" value="商品介绍"><br/>  
        <input type="text" name="productIntegral" value="所需积分"><br/>  
        <input type="submit" value="上传"><br/>
    </form>  
    <hr>  
    <form action="http://localhost:8080/uploadDemo/rest/file/down" method="get">  
        <input type="submit" value="下载">  
    </form>  
</body>  
</html>  