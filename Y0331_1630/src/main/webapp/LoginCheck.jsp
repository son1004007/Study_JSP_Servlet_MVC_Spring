<%@page import="java.net.URLEncoder"%>
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
	String id = "test1";
	String pw = "test123";
	String name = "사용자1";
	
	if(id.equals(request.getParameter("id")) &&
			pw.equals(request.getParameter("pw"))){
		response.sendRedirect("main.jsp?name="+
			URLEncoder.encode(name,"UTF-8"));
	} else {
		response.sendRedirect("Login.jsp");
	}
	 %>
</body>
</html>