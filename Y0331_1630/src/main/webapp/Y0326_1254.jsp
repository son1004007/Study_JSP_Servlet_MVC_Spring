<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%	String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		//javascript의 name 을 받는다.
		
		session.setAttribute("ii", id);
		// id 값을 ii에 저장해서, 세션값으로 사용한다.
		session.setMaxInactiveInterval(60);
		// 저장값을 60초간 유지한다.
		
	%>
	<form method="post" action="Y0326_1301.jsp">
	가장 좋아하는 음식은?
	<input type="radio" name="food" value="족발">족발
	<input type="radio" name="food" value="치킨">치킨
	<input type="radio" name="food" value="감자탕">감자탕	
	<input type="submit" value="결과">
	</form>
</body>
</html>