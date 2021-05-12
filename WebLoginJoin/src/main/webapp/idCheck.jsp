<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="mgr" class="bean.MemberMgr" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ID 중복체크</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div align="center">
		<%
		String id = request.getParameter("id");
		boolean result = mgr.checkId(id);
		%>
		<b><%=id%></b>
		<%
		System.out.print(result);
		if (result) {
			out.println("는 이미 존재하는 ID입니다.");
		} else {
			out.println("는 사용 가능한 ID입니다.");
		}
		%>
		<br>
		<br> <a href="#" onclick="self.close()">닫기</a>
	</div>
</body>
</html>