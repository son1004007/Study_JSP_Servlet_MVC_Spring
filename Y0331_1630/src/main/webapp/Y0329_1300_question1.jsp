<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
- input()메소드
 java, jsp, jquery, spring 4개 과목 점수를 전달받아 메소드를 구현해라.

- avg()메소드 
 총점 전달받아 평균구하여 리턴받는 메소드

​

- pass()메소드
평균 전달받아 결과를 문자열로 리턴받는 메소드
60점 이상이면 "프로젝트 투입"
60점 미만이면 "재교육 실시"


	<form action="Y0329_1301_result.jsp" method="post">
		<label>JAVA<input type="text" name="java"></label><br> 
		<label>JSP<input type="text" name="jsp"></label><br> 
		<label>jQuery<input type="text" name="jquery"></label><br> 
		<label>Spring<input type="text" name="spring"></label><br> 
		<input type=submit value="입력">
	</form>
</body>
</html>