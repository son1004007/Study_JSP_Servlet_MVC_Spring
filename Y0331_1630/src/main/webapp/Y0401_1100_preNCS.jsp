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
<style>
span{
color : red;
}
</style>
<script type="text/javascript">
	function ch(){
		var chId = document.getElementById("id").value;
		var chName = document.getElementById("name").value;
		var chSocialNumber1 = document.getElementById("sosicalNumber1").value;
		var chSocialNumber2 = document.getElementById("sosicalNumber2").value;
		var chPw = document.getElementById("pw").value;
		var chPwConfirm = document.getElementById("pwConfirm").value;
		
		<!-- 아이디4자 이하 체크 -->
		if(chId.length < 4){
			alert("아이디가 4자 미만 입니다. 4이상 입력하세요");
		}
		
		<!-- 공백 체크  -->
		var blank_pattern = /[\s]/g;
		if(blank_pattern.test()))
		if(bla)
		if(chId==" "){
			alert("아이디, 비밀번호, 이름, 주민번호에 공백이 있습니다.");
			
		}
	}
</script>
</head>
<body>
<form action="Y0401_1301_servlet" method="post" onsubmit="ch();">
	<table>
	<tr>
	<td>이름: </td><td><span>* </span><input id="name"></td>
	</tr>
	<tr>
	<td>주민: </td><td><span>* </span><input id="sosicalNumber1"> - <input id="sosicalNumber2"></td>
	</tr>
	<tr>
	<td>아이디: </td><td><span>* </span><input id="id" name="id"></td>
	</tr>
	<tr>
	<td>비번: </td><td><span>* </span><input type="password" id="pw"></td>
	</tr>
	<tr>
	<td>비번 확인: </td><td><span>* </span><input type="password" id="pwConfirm"></td>
	</tr>
	<tr>
	<td>메일: </td><td>　<input id="email"> @ <input id="emailDomain"> <select id="emailDomain">
	<option>사용자 입력</option>
	<option value="nate.com">nate.com</option>
	<option value="naver.com">naver.com</option>
	<option value="daum.net">daum.net</option>
	</select></td>
	</tr>
	<tr>
	<td>우편번호</td><td>　<input id="mail"></td>
	</tr>
	<tr>
	<td>주소</td><td>　<input id="address1"> <input id="address2"></td>
	</tr>
	<tr>
	<td>핸드폰번호</td><td>　<input id="phone"></td>
	</tr>
	<tr>
	<td>직업</td>
	<td>
	<select id="job" size="3">
	<option value="학생">학생</option>
	<option value="컴퓨터/인터넷">컴퓨터/인터넷</option>
	<option value="언론">언론</option>
	</select>
	</td>
	</tr>
	<tr>
	<td>메일/SMS 정보수신</td><td><input type="radio" id="info" value="수신">수신 <input type="radio" id="info" value="수신거부"> 수신 거부</td>
	</tr>

	</table>
	<input type="submit" value="가입"> <input type="reset" value="취소">
	</form>
</body>
</html>