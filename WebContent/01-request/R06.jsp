<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create account</title>
</head>
<body>
	<h2>Create account</h2>
	<form action = "R07.jsp" method = "post" >
		Your Email<br>
		<input type = "email" name = "email" placeholder = "E-mail" required ><br>
		Password<br>
		<input type = "password" name = "password" placeholder = "PASSWORD" required ><br>
		Re-enter password<br>
		<input type = "password" name = "password" placeholder = "PASSWORD" required ><br>
		<input type = "submit" value = "Create your account" >
		<input type = "reset" value = "Reset" ><br>
	</form>
</body>
</html>