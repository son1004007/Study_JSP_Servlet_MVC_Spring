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
		System.out.print(request.getParameter("number"));
		int num = Integer.parseInt(request.getParameter("number"));
	
		for(int i=0; i<=num;i++){
			out.print(i+"\t");
		}
		
		%>
</body>
</html>