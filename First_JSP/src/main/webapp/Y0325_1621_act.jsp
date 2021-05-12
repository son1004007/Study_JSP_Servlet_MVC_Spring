<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Color 확인</h1>
<% String color=request.getParameter("color"); %>

<p style="background-color: <%= color%>">기석은 <%=color %>색을 좋아한다.</p>

</body>
</html>