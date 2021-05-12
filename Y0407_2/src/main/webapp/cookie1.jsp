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

 Cookie[]c = request.getCookies();

if(c != null){
	for (int i=0; i< c.length; i++){
		// cookie라는 이름을 가진 쿠키를 출력한다.
		if(c[i].getName().equals("cookie")){
			out.print("이름 : "+c[i].getName() +"<br> 값 : "+c[i].getValue());
			%> 
			<br>
			이름 : <%= c[i].getName()%><br>
			값 : <%= c[i].getValue()%>
			<%
		}
	}
}

%>
</body>
</html>