<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
</head>
<body>
	<h2>로그인 창</h2>
	<!-- action에 값 입력해서 이동하는 페이지 연결, .jsp까지 작성 - 유의 -->
	<form action = "P09Req_login.jsp" method = "post">
		<input type = "text" name = "loginId" placeholder = "ID" /><br>
		<input type = "password" name = "loginPw" placeholder = "PASSWORD" /><br>
		<input type = "submit" value = "LOGIN" />&nbsp;
		<input type = "reset" value = "RESET" /><br>
		<a href = "P06Req_join_form.jsp">회원가입</a>
	</form>
</body>
</html>