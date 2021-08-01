<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
</head>
<body>
	<h2>회원가입 양식</h2>
	<form action = "P07Req_join.jsp" method = "post">
		<input type = "text" name = "joinId" placeholder = "ID" required /><br>
		<input type = "password" name = joinPw" placeholder = "PASSWORD" required /><br>
		<input type = "submit" value = "JOIN" />&nbsp;
		<input type = "reset" value = "RESET" /><br>
	</form>
</body>
</html>