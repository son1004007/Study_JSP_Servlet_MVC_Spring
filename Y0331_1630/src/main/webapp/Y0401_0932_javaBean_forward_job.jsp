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
	String str1=request.getParameter("job");
	String str2=request.getParameter("mail");
%>
<%=str1 %>
<%=str2 %>
<jsp:forward page="Y0401_0933_mail.jsp">
	<jsp:param value="회사원" name="aa"/>
</jsp:forward>

</body>
</html>