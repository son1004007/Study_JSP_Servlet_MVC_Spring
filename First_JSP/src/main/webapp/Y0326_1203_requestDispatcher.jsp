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
	String age = request.getParameter("age");
	String name = (String)request.getAttribute("name");
	out.print(name+"님 "+"나이가 "+age+"세 여서 입장되었습니다.");
%>

</body>
</html>