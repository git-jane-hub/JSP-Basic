<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String email = request.getParameter("email");
%>
<!DOCTYPE html>
<html>

<%
	if(email.equals("abcd@gmail.com")){
%>

<head>
<meta charset="UTF-8">
<title>Create account - Failed</title>
</head>
<body>
	<%= email %>은 중복된 이메일입니다. 다른 이메일로 다시 시도해주세요.<br>
	<a href = "R06.jsp">Move to Create account</a>
</body>

<%
	}else{
%>

<head>
<meta charset="UTF-8">
<title>Create account - Success</title>
</head>
<body>
	<%= email %>님 환영합니다.<br>
	<a href = "R08.jsp">Move to Sign in</a>
</body>

<% } %>
</html>