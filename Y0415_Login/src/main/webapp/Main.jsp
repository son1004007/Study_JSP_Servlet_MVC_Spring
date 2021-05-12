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
	Cookie []coo=request.getCookies();
	String user_id="";
	
	if(coo!=null){
		for(Cookie c:coo){
			out.print(c.getValue());
		}
	}
%>

	 님 로그인을 환영합니다<br>
	<input type="button" value="로그아웃" onclick="location.href='Logout.jsp'">
</body>
</html>