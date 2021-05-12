<%@page import="java.sql.Connection"%>
<%@page import="bean.MemberDAO"%>
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
try{
	MemberDAO memDao = MemberDAO.getInstance();
	Connection con = memDao.getConnection();
	out.print("연동 성공");
}catch( Exception EX ){
	System.out.print(EX);
}

%>
</body>
</html>