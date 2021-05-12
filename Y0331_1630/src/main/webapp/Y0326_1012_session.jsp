<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	
	String name1 = request.getParameter("name");
	// get 함수의 반환형은 object 형이다.
	String name2 = (String)session.getAttribute("name1");
%>
<%= name1 %>님 환영합니다.<br>
<%= name2 %>님 환영합니다.
</body>
</html>