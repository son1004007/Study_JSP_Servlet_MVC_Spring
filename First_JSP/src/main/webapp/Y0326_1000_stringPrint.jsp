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
		String name = "문자열 출력";
	%>
	<!-- 방법1 -->
	<%
		out.println(name);
	%>
	<br>
	<!-- 방법2 -->
	<%=name %>
</body>
</html>