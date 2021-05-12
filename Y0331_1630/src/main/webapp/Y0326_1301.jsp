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
	String food = request.getParameter("food");
	String id = (String)session.getAttribute("ii");
	String str = session.getId();
	if(id!=null){	
%>
	<%=str%>는 <%=food %>를 가장 좋아한다.
	<%=id %>는 <%=food %>를 가장 좋아한다.
<%
	}
%>
</body>
</html>