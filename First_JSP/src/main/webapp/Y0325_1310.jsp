<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>커피 메뉴</h1>
	<form action="Y0325_1311_join4.jsp">
		<table>
			<tr>
				<td>
				<input type="radio" name="coffeeMenu" value="아메리카노">아메리카노(4000원)
				</td>
			</tr>
			<tr>
				<td>
				<input type="radio" name="coffeeMenu" value="카페라떼">카페라떼(4500원)
				</td>
			</tr>
			<tr>
				<td>
				<input type="radio" name="coffeeMenu" value="카푸치노">카푸치노(4500원)
				</td>
			</tr>
			<tr>
				<td>
				<input type="radio" name="coffeeMenu" value="프라푸치노">프라푸치노(7500원)
				</td>
			</tr>
			<tr>
				<td>수량 : </td>
				<td>
					<input type="text" name="count" size="5" >
				</td>
			</tr>
			<tr>
				<td>입금액 : </td>
				<td>
					<input type="text" name="payMoney" size="5" >
				</td>
				<td>
					<input type="submit" value="주문처리">
				</td>
			</tr>
		</table>
	</form>
	
</body>
</html>