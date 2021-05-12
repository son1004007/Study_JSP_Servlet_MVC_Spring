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
	<!-- 회원가입을 위한 insertMember()메소드를 사용위해 객체 생성 -->
	<jsp:useBean id="bean" class="bean.MemberBean" />
	<!-- 유즈빈을 사용하여 자바빈을 사용 -->
	<jsp:setProperty property="*" name="bean" />
	<!-- 자바빈 객체의 프로퍼티값 변경 -->
	
	<%
    boolean result = mgr.insertMember(bean);
    String msg = "회원가입에 실패 하였습니다.";
    String location = "member.jsp";
    if (result) {
        msg = "회원가입을 하였습니다.";
        location = "login.jsp";
    }
%>

<script>
    alert("<%=msg%>");
    location.href = "<%=location%>
    ";
</script>

</body>
</html>