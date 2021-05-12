<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>ResRedirect 페이지 입니다.</h2>
	<%
	String id =request.getParameter("id");
	%>
	<!-- 리다이렉트 객체는 유지되지 않기 때문에 Y0329_1130_ResponseProc.jsp
	에서 받은 id를 출력하지 못한다. -->
	<h3>아이디는 <%=id %></h3>
</body>
</html>