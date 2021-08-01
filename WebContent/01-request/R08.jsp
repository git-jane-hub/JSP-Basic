<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign in</title>
</head>
<body>
	<h2>Sign in</h2>
	<form action = "R09.jsp" method = "post" >
		Your Email<br>
		<input type = "email" name = "email" placeholder = "E-mail" required ><br>
		Password<br>
		<input type = "password" name = "password" placeholder = "PASSWORD" required ><br>
		<input type = "submit" value = "Sign in" ><br>
		<a href = "R06.jsp" >Move to Create account</a>
	</form>
</body>
</html>