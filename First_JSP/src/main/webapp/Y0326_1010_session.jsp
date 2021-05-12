<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>세션</h1>
	<%
		// request.getParameter 이용할 name
		String name = "수강생1";
		// name을 name1로 변경 후에 세션을 이용해서 데이터를 유지
		session.setAttribute("name1", name);
		// 세션 유지 시간 (초)
		session.setMaxInactiveInterval(10);
	%>
	<a href="Y0326_1012_session.jsp?name=<%=name %>">페이지 이동</a>
</body>
</html>

