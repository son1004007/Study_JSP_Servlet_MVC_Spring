<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
	function check(){
		if(!isNaN(input.number.value)){
			alert("데이터를 입력 받았습니다.");
			return false;
		}
		if(isNaN(input.number.value)){
			alert("문자열은 입력할수 없습니다.");
			input.number.value="0";
			return false;
		}
		return true;
		
	}
</script>
	<form action="Y0326_1440.jsp" name="input" onsubmit="check()">
	숫자 : 	<input type="text" name="number">
	<input type="submit" value="입력 완료">
	<hr>
</form>
</body>
</html>