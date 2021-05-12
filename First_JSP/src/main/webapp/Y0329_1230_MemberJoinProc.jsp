<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="member" class="bean.Y0329_1240_MemberBean"/>

  위의 액션태그를 코드로 바꾸면 아래와 같다.
 
<!--
MemberBean member = (MemberBean)request.getAttribute("member");
if(member == null){
    member = new MemberBean();
    request.setAttribute("member", member)
}
-->


<!-- 출처: https://all-record.tistory.com/105 [세상의 모든 기록] -->

<!-- request로 넘어온 데이터를 자바빈즈랑 매핑시켜주는 useBean -->
<jsp:useBean id="mbean" class="bean.Y0329_1240_MemberBean">
<!-- 객체생성 MemberBean mbean = new MemberBean(); -->

<!-- jsp 내용을 자바빈 클래스에 데이터를 매핑(넣어준다) -->

<jsp:setProperty name="mbean" property="*"/>

<!-- 자동으로 모두 다 매핑시켜라 -->

</jsp:useBean>

<h2>아이디는 <jsp:getProperty property="id" name="mbean"/></h2>

<h2>이메일 <jsp:getProperty property="email" name="mbean"/></h2>

<h2>전화번호 <%= mbean.getTel() %>



</body>
</html>