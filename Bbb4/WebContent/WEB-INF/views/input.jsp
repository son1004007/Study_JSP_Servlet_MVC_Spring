<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<form:form action="out" modelAttribute="data" method="post">
아이디 : <form:input path="da1" type="text"/><br>
	<form:errors path="da1"/><br>

비번 : <form:input path="da2" type="text"/><br>
	<form:errors path="da2"/><br>
	
나이 : <form:input path="da3" type="text"/><br>
	<form:errors path="da3"/><br>
	
<%-- 이메일 : <form:input path="da4" type="text"/><br>
	<form:errors path="da4"/><br>	

공부 여부 : <form:radiobutton path="da5" value="true"/>true
	<form:radiobutton path="da5" value="false"/>false<br>
	<form:errors path='da5'/><br> --%>
<form:button type="submit">확인</form:button>


</form:form>


</body>
</html>