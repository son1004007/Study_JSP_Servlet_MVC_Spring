<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    session.setAttribute("id", "korea");
    application.setAttribute("siteName", "koreaseoul.co.kr");
%>
 <h2> EL의 Scope 2</h2>
    <jsp:forward page="scope_4.jsp"/>
</body>
</html>