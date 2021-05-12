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


	<%
		int java = Integer.parseInt(request.getParameter("java"));
		int jsp = Integer.parseInt(request.getParameter("jsp"));
		int jquery = Integer.parseInt(request.getParameter("jquery"));
		int spring = Integer.parseInt(request.getParameter("spring"));
	%>
	<%!
		double avg(int a, int b, int c , int d){
			return (a+b+c+d)/4.0;
		}
	
		String pass(double a){
			String b;
			if(a>=60){
				b="프로젝트 투입";
			} else {
				b="재교육 실시";
			}
			return b;
		}
		
	%>
	평균 : <%= avg(java, jsp, jquery, spring) %>
	<%= pass(avg(java, jsp, jquery, spring)) %>
</body>
</html>