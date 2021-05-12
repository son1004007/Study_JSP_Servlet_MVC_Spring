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
		String coffeeMenu = request.getParameter("coffeeMenu");
		int count = Integer.parseInt(request.getParameter("count"));
		int payMoney = Integer.parseInt(request.getParameter("payMoney"));
		int price=0;
	%>
	<%
		switch(coffeeMenu){
		case "아메리카노" : price=4000; break;
		case "카페라떼" : price=4500; break;
		case "카푸치노" : price=4500; break;
		case "프라푸치노" : price=7500; break;
		}
	%>
	<%if(payMoney < (price*count)){ %>
		<script type="text/javascript">
		alert("입금 금액이 적습니다.");
		history.go(-1);
		</script>
	<%	} %>
	
		<%out.println("커피 종류 : "+coffeeMenu);%><br>
		<%out.println("수량 : "+count); %><br>
		<%out.println("입금 금액 : "+payMoney);%><br>
	
	
		<%out.println("총 금액 : "+(price*count));%><br>
		<%out.println("잔돈 : "+(payMoney-(price*count)));%><br>
</body>
</html>