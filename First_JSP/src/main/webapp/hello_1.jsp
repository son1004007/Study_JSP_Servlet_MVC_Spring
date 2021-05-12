<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.Vector" errorPage="error.jsp"%>
<%!public int add(int a, int b) {
		return a + b;
	}%>
<%
		int cnt=0;
		int cnt2=0;
		cnt2++;
		out.print("<br><br> cnt2 출력 <br>");
		out.print(cnt2);
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	test20210322 JSP Complete
	<%
String str = "첫번째 빌드";
System.out.println(str);
%>
	<br> 내가 공부하고 있는 것은
	<%=str%>
	이다.

	<%!int n;
	// 정수 선언을 안하면 0
	String str;
	// 참조변수 선언 안하면 null%>
	<%
	int m = 30;
	String str1 = "JSP";
	%>
	<%=n + " " + str%>
	<br>
	<br> 20+20 =
	<%=add(20, 20)%>

	<br>
	<br> while 문이용해서 1~10까지 합 구하기
	<%
	int sum = 0;
	int num = 1;
	do {
		sum += num;
		num++;
		System.out.println(sum);
	} while (num <= 10);

	// 또는 
	while (num++ < 10) {
		sum += num;
	}
	%>
	답 :
	<%=sum%>
	<br>
	<br>
	<br> 구구단 2단부터 9단까지 출력
	<br>
	<%
	int i, j, r;
	for (i = 2; i <= 9; i++) {
		for (j = 1; j <= 9; j++) {
			System.out.print(i + "*" + j + "=" + (i * j) + "  \t");
	%>
	<%=i%>
	*
	<%=j%>
	=
	<%=i * j%>
	<%
	}
	System.out.println();
	%>
	<br>
	<%
	}
	%>
	<br>
	<br>
	<br> for문으로 1~100까지 수 중에서 7의 배수이고 9의 배수만 출력
	<%
		for(int n=1; n<=100; n++){
			if(n%7==0 && n%9==0){
				System.out.println(n);
				%>
	<br>
	<%=n %>
	<br>
	<%
			}
		}
	%>
	<br>15시 30분 수업 시작
	<br>
	<%
		int z=0;
		out.print("<br> z 출력 <br>");
		out.print(++z);
		out.print("<br><br> cnt 출력 <br>");
		out.print(++cnt);
		
	%>
	<br><br>배열과 테이블 출력
	<%!
		String stra[]={"str1","str2","str3","str4"};
	%>
	<table border ="1" width="200">
	<%
		for(int h=0; h<stra.length; h++){
	%>
		<tr>
			<td><%=h %></td>
			<td><%=stra[h] %></td>
		</tr>
	<%
		}
	%>
	</table>
	
	<br><br>
	<h1>시간 객체와 삼항조건 연산자</h1>
	<%
		java.util.Date date = new java.util.Date();
		int hour=date.getHours();
	%>
	지금 시간대는 ? 
	<%= (hour<12)? "오전 시간대":"오후 시간대" %>
	<hr>
	<h3>form과 select box</h3>
	<br>
	<form method="post">
	이름:<input type="text">
	좋아하는 색:<select name="color">
				<option value="blue" selected>파란색</option>
				<option value="4red">빨간색</option>
				<option value="yellow">노랑색</option>
	</select>
	<input type="submit" value="보내기">
	</form>
	
</body>
</html>