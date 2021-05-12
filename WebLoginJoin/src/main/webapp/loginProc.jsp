<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="mgr" class="bean.MemberMgr" />
	<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	boolean result = mgr.loginMember(id, pwd);
	String msg = "로그인에 실패하였습니다.";
	if (result) {
		msg = "로그인에 성공하였습니다.";
		session.setAttribute("idKey", id); //id를 세션 안에 넣어 두겠음
	}
	%>
	<script>
alert("<%=msg%>");
		location.href = "login.jsp";
	</script>
</body>
</html>