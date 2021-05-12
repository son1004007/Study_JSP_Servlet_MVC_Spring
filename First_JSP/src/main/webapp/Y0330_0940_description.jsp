<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	
</script>
</head>
<body>
	<%
	int n=1;
	int sum=0;
	while(n<=10){
		sum+=n;
		n++;
	}
	System.out.print(sum);
	%>
	<%=sum %>
</body>
</html>