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
		String user_id=request.getParameter("user_id");
	    String user_pw=request.getParameter("user_pw");

		if(user_id.equals("test1") && user_pw.equals("asdf")){
			Cookie c=new Cookie("user_id", user_id);			
			c.setMaxAge(300000);			
			response.addCookie(c);
			
			response.sendRedirect("Main.jsp");
		} else {
%>
		<script type="text/javascript">
			alert("등록된 회원이 아닙니다");
			history.go(-1);
		</script>
		<%	
		}
		%>
</body>
</html>