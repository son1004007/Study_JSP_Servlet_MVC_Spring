<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- 현재 페이지가 에러가 발생하면 나타나는 페이지 임을 선언 해야함. --%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Y0326_0950_error.jsp</title>
</head>
<body>
	에러 발생<br>
	에러 메시지 : 
	<%=exception.getMessage() %>
</body>
</html>