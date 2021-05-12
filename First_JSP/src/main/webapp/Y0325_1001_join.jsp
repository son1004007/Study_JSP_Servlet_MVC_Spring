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
		// 데이터가 넘어올때 언어 변환
		request.setCharacterEncoding("UTF-8");
		
		String id=request.getParameter("id");
		String pw1=request.getParameter("pw1");
		String pw2=request.getParameter("pw2");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		
		String[] hobby= request.getParameterValues("hobby");
		
		String movie=request.getParameter("movie");
		String age = request.getParameter("age");
		String info=request.getParameter("info");
		
		if(!pw1.equals(pw2)){
	%>
	<script type="text/javascript">
	alert("비밀번호가 틀립니다.");
	history.go(-1);
	</script>
	<%	} %>
	hobby : 
	<%
		for(int i=0;i<hobby.length;i++){
			
			%>
			<%= hobby[i]%>
			<%	
		}
	
	%>
	<br>
	movie : <%= movie %> <br>
	age : <%= age %> <br>
	info : <%= info %> <br>
</body> 
</html>