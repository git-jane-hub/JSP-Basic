<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String loginOk = (String)session.getAttribute("id_session");
	if(loginOk != null){
		response.sendRedirect("R04.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome - login</title>
</head>
<body>
	<h2>로그인을 진행해주세요.</h2><hr>
	<form action = "R04.jsp" method = "post">
		<input type = "text" name = "id" placeholder = "ID" required /><br>
		<input type = "password" name = "pw" placeholder = "PASSWORD" required /><br>
		<input type = "submit" value = "LOGIN" /><br>
	</form>
</body>
</html>