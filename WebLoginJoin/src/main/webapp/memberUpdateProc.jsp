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
	<jsp:useBean id="bean" class="bean.MemberBean" />
	<jsp:setProperty property="*" name="bean" />
	<%
	boolean result = mgr.updateMember(bean);
	if (result) {
	%>
	<script>
		alert("회원정보를 수정 하였습니다.");
		location.href = "login.jsp";
	</script>
	<%
	} else {
	%>
	<script>
		alert("회원정보를 수정에 실패 하였습니다.");
		history.back();
	</script>
	<%
	}
	%>
</body>
</html>