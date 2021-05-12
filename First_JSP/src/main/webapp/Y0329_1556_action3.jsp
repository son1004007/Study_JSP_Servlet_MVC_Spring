<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<% String color = request.getParameter("color"); 
	String authenti = request.getParameter("authenti");
	String id = request.getParameter("id");
%>
<style>
	body {
	  background-color: <%= color%>;
	}
</style>

</head>
<body>
	<%= id %>님 <%=authenti %>
</body>
</html>