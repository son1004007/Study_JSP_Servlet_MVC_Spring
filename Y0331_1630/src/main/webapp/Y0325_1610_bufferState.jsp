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
	int tot=out.getBufferSize();
	int remain= out.getRemaining();
	int use = tot-remain;
%>

<h1>현재 페이지 버퍼 상태</h1>
버퍼 전체 크기 : <%=tot %>
버퍼 남은 크기 : <%=remain %>
버퍼 사용량 : <%=use %>

</body>
</html>