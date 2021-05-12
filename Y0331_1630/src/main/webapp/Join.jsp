<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- (JoinServlet.java- 서블릿 클래스 구현, Join.jsp- 폼 구현)
(자바스크립트로 아이디 4자 이상, 이름, 주민번호, 아이디, 비번, 비번확인은 공백 안됨)
 -->
<meta charset="UTF-8">
<title>Join page</title>
<script type="text/javascript" src="join.js"></script>
<style>
span{
color : red;
}
</style>

</head>
<body>
<form action="JoinServlet" method="post" name="mn">
	<table>
	<tr>
	<td>이름: </td><td><span>* </span><input name="name"></td>
	</tr>
	<tr>
	<td>주민: </td><td><span>* </span><input name="sosicalNumber1"> - <input name="sosicalNumber2"></td>
	</tr>
	<tr>
	<td>아이디: </td><td><span>* </span><input name="id" ></td>
	</tr>
	<tr>
	<td>비번: </td><td><span>* </span><input type="password" name="pw"></td>
	</tr>
	<tr>
	<td>비번 확인: </td><td><span>* </span><input type="password" name="pwConfirm"></td>
	</tr>
	<tr>
	<td>메일: </td><td>　<input name="email"> @ <input name="emailDomain"> 
	<select name="emailDomain2">
	<option>사용자 입력</option>
	<option >nate.com</option>
	<option >naver.com</option>
	<option >daum.net</option>
	</select></td>
	</tr>
	<tr>
	<td>우편번호</td><td>　<input name="mail"></td>
	</tr>
	<tr>
	<td>주소</td><td>　<input name="address1"> <input name="address2"></td>
	</tr>
	<tr>
	<td>핸드폰번호</td><td>　<input name="phone"></td>
	</tr>
	<tr>
	<td>직업</td>
	<td>
	<select name="job" size="3">
	<option >학생</option>
	<option >컴퓨터/인터넷</option>
	<option >언론</option>
	</select>
	</td>
	</tr>
	<tr>
	<td>메일/SMS 정보수신</td>
	<td><input type="radio" name="info" value="수신">수신 
	<input type="radio" name="info" value="수신거부"> 수신 거부</td>
	</tr>

	</table>
	<input type="submit" value="가입" onclick="return check()"> <input type="reset" value="취소">
	</form>
</body>
</html>