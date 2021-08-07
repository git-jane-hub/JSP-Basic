<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome - login</title>
</head>
<body>
	<form action = "R04.jsp" method = "post">
		<input type = "text" name = "id" placeholder = "ID" required /><br>
		<input type = "text" name = "nick" placeholder = "NICKNAME" required /><br>
		<input type = "password" name = "pw" placeholder = "PASSWORD" required /><br>
		<input type = "submit" value = "LOGIN" /><br>
	</form>
</body>
</html>