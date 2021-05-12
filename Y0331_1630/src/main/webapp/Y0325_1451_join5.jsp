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
		int gugu = Integer.parseInt(request.getParameter("gugu"));
	%>
	
	<%	if(gugu<2 || gugu >10){
	%>
		<script type="text/javascript">
		alert("2~9사이 정수만 입력하세요.");
		history.go(-1);
		</script>
			
	<%	}%>
	
	
	
	<%
		for(int i=2; i<10; i++){
			out.print(gugu+"*"+i+"="+(gugu*i));
	%>
	<br>
	<%
		}
	%>
	
</body>
</html>