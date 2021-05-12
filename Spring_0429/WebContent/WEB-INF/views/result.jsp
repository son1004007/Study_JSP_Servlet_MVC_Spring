<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="result" method="post">
	data1:<input type="text" name="data1" value="${requestScope.dataBean.data1}"/>
	data2:<input type="text" name="data2" value="${requestScope.dataBean.data2}"/>
	data3:<input type="text" name="data3" value="${requestScope.dataBean.data3}"/>
</form> 
</body>
</html>