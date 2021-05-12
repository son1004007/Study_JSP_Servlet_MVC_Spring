<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function check(){
		if(isNaN(input.phone.value)){
			alert("문자열은 입력할수 없습니다.");
			input.phone.value="0";
			history.go(-1);
			return false;
		}
	}
</script>
</head>
<body>
<!-- html -->
<h1>회원의 정보 입력폼</h1>
<form action="Y0330_1100_multiLang2.jsp" method="post" name="input" onsubmit="check()">
<div>
	<table>
	<tr>
	<td>이름</td><td><input type="text" name="name"></td>
	</tr>
	<tr>
	<td>아이디</td><td><input type="text" name="id"></td>
	</tr>
	<tr>
	<td>닉네임</td><td><input type="text" name="nickname"></td>
	</tr>
	<tr>
	<td>비밀번호</td><td><input type="password" name="pw"></td>
	</tr>
	<tr>
	<td>이메일</td><td><input type="text" name="email"></td>
	</tr>
	<tr>
	<td>전화번호</td><td><input type="text" name="phone" ></td>
	</tr>
	<tr>
	<td><input type="submit" value="전송"></td>
	<td><input type="reset" value="취소"></td>
	</tr>
	</table>
</div>
</form>
</body>
</html>
