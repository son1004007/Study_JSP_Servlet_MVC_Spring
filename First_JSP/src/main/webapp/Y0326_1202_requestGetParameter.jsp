<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 	int age = Integer.parseInt(request.getParameter("age"));
	//if(age!=null){
		if(age<15){
			%>
			<script type="text/javascript">
			alert("관람 불가");
			history.go(-1);
			</script>
			
			<%
		} else {
			request.setAttribute("name", "관람자1");
			RequestDispatcher reqDis =
					request.getRequestDispatcher("Y0326_1203_requestDispatcher.jsp");
			reqDis.forward(request, response);
		}
		out.print("관람 가능");
	//}
	//out.print("나이를 입력하세요");
%>
</body>
</html>