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
	String name=request.getParameter("name");
	String color = request.getParameter("color");
	
	%>
	<%=name %>님은 <%=color %>색을 좋아합니다.
</body>
</html>