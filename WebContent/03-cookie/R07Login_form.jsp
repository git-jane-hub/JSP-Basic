<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie [] cookies = request.getCookies();
	String str = null;
	String id = null;
	String pw = null;
	for(Cookie c : cookies){
		str = c.getName();
		if(str.equals("rememid")){
			id = c.getValue();
		}
		if(str.equals("remempw")){
			pw = c.getValue();
		}
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login page</title>
</head>
<body>
	<h2>Login Please</h2><hr>
	<form action = "R08Login_ok.jsp" method = "post">
		<input type = "text" name = "id" placeholder = "ID" value = "<%= id %>" required /><br>
		<input type = "password" name = "pw" placeholder = "PASSWORD" value = "<%= pw %>" required />
		<input type = "checkbox" name = "remem_idpw" value = "yes"/>remember<br>
		<input type = "submit" value = "LOGIN" /><br>
	</form>
</body>
</html>