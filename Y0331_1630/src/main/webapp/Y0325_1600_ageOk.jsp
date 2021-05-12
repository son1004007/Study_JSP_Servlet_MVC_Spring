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
	int age = Integer.parseInt(request.getParameter("age"));
	if(age < 20){
%>
		<script type="text/javascript">
		alert("미성 년자 출입 금지");
		history.go(-1);
		</script>
			
	<%	}%>
	
술 좋아하시죠?

</body>
</html>