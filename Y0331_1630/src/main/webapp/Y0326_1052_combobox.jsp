<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>검색 포털</h3>
<hr>
<form action="Y0326_1100_comboboxAct.jsp" method="post">
	<select name="searchEng" size="3">
	<option value="https://www.google.com" selected>구글</option>
	<option value="https://www.naver.com">네이버</option>
	<option value="https://www.daum.net">다음</option>
	</select>
	<br>
	<input type="submit" value="이동">
</form>

<!-- session 또는 request.getParameter 또는 forword(javaScript) -->
</body>
</html>