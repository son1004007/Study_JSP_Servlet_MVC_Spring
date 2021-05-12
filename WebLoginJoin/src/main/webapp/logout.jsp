<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
//세션에 저장된 idKey를 제거
session.removeAttribute("idKey");
//현재 세션을 서버에서 제거
session.invalidate();
response.sendRedirect("login.jsp"); //로그아웃 후 로그인 폼으로 돌아가기
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>