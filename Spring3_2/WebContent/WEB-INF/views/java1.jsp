<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form modelAttribute="data">
		<form:input path="da1" />
		<br>
		<form:password path="da2" showPassword="true" />
		<br>
		<form:textarea path="da3" />
		<br>
		<form:hidden path="da4" />
		<br>
		<form:button disabled="true">확인</form:button>
	</form:form>

	<form:form modelAttribute="dataBean" action='test2'>
data1 : <form:input path="data1" />
		<br />
data2 : <form:input path='data2' />
		<br />
data3 : <form:input path='data3' />
		<br />
	</form:form>
</body>
</html>