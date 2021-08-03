<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
	<!-- form 태그를 이용해서 P04Session_login_ok.jsp 로 id, nickname, pw를 전달 -->
	<form action = "P04Session_login_ok.jsp" method = "post">
		<input type = "text" name = "id" placeholder = "ID" required/><br>
		<input type = "text" name = "nickname" placeholder = "NICKNAME" required/><br>
		<input type = "password" name = "pw" placeholder = "PASSWORD" required /><br>
		<input type = "submit" value = "LOGIN" />
	</form>
</body>
</html>