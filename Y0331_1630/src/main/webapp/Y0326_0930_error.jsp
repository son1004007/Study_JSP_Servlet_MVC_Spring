<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%-- 에러가 발생하면 이동할 페이지 선언 --%>
    <%@ page errorPage="Y0326_0950_error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Y0326_0930_error.jsp</title>
</head>
<body>
	0으로 나누는 것은 불가능합니다.
	<%=10/0 %>
</body>
</html>