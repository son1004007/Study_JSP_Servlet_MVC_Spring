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
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String[] colike = request.getParameterValues("like");
	%>
	name : <%= name %>
	gender : 
	<% 
		if(gender=="female"){ 
			out.println("여자");	
		} else {
			out.println("남자");
		}
	%>
	like : 
	<% 
		for(int i=0; i<colike.length;i++){
			switch(colike[i]){
			case "빨강" : out.println("빨강"); break;
			case "노랑" : out.println("노랑"); break;
			case "파랑" : out.println("파랑"); break;
			case "주황" : out.println("주황"); break;
			}
		}
	%><br>
<!-- 이름불러오고 성별은 남자면 남자, 여자면 여자 출력문은 out.println으로 출력 -->
<!-- 좋아하는 색은 for문안에 switch문을 사용해 출력(out) -->

	
</body>
</html>