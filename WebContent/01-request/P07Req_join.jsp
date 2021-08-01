<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String joinId = request.getParameter("joinId");
%>
<!DOCTYPE html>
<html>

	<!-- DB와 연동해서 중복되는 값이 있는지 확인하는 구문 삽입예정 -->
	<!-- if 구문으로 반복하는 구간은 <head> 부터 </body> 까지 -->
	<%
		if(joinId.equals("abcd")){
	%>
	
<head>
<meta charset="UTF-8">
<title>회원가입 실패</title>
</head>
<body>
	<b><%= joinId %></b>는 중복된 아이디입니다. 다른 아이디로 가입해주세요.<br>
	<a href = "P06Req_join_form.jsp">회원가입창으로 이동</a>
</body>

	<% } else { %>

<head>
<meta charset="UTF-8">
<title>회원가입 성공</title>
</head>
<body>
	<b><%= joinId %></b>님 회원가입을 축하드립니다.<br>
	<a href = "P08Req_login_form.jsp">로그인창으로 이동</a>
</body>

	<% } %>

</html>