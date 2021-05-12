<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body{
		background-color : yellow;
	}
</style>
</head>
<body>
	<%
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String nickname = request.getParameter("nickname");
	String pw = request.getParameter("pw");
	String email = request.getParameter("email");
	int phone = Integer.parseInt(request.getParameter("phone"));
	%>
	이름 : <%=name %>
	아이디 : <%=id %>
	닉네임 : <%=nickname %>
	비번 : <%=pw %>
	이메일 : <%=email %>
	전번 : <%=phone %>
	
	가입완료
</body>
</html>