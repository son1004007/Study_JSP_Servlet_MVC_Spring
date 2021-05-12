<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>로그인 정보가 넘어오는 페이지</h2>
	<%
	String id =request.getParameter("id");
	
	// response.sendRedirect("Y0329_1140_ResRedirect.jsp");
	// ResRedirect.jsp로 넘어가면서 데이터 사라짐
	// 다음페이지로 request를 넘길수 없다.
	// 
	%>
	<jsp:forward page="Y0329_1140_ResRedirect.jsp"/>
	<!-- ResRedirect 는 못넘기지만 포워드로 넘길 수 있다. -->
	<h2>아이디는 <%=id %></h2>
</body>
</html>