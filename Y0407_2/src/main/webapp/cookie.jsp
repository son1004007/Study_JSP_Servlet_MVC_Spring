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
	String str = "cookie"; 
// 쿠키 객체 생성해서
// 쿠키 설정 maxage
// 값 설정해서 add 쿠키

  //1. 쿠키 객체 생성
 
 Cookie c = new Cookie(str,"cookie");

 Cookie cStr = new Cookie("id","ksson");
 //2. 유효기간 설정

 c.setMaxAge(60);
 
 cStr.setMaxAge(365*24*60*60);
 //3. 클라이언트에 쿠키 전송
 c.setValue("coooo");
 response.addCookie(c);
 
 
 response.addCookie(cStr);
 response.addCookie(new Cookie("pw","qhdks00@!"));
 response.addCookie(new Cookie("age","34"));
 
%>
	<a href="cookie1.jsp">페이지 이동</a>
</body>
</html>