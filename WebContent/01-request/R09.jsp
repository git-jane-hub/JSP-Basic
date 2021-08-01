<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String email = request.getParameter("email");
	String password = request.getParameter("password");
%>
<!DOCTYPE html>
<html>

<%
	if(email.equals("aaa@gmail.com") && password.equals("1234")){
%>

<head>
<meta charset="UTF-8">
<title>Sign in - Success</title>
</head>
<body>
	<%= email %>님 환영합니다.
</body>

<%
	}else if(!email.equals("aaa@gmail.com")){
%>

<head>
<meta charset="UTF-8">
<title>Sign in - Failed</title>
</head>
<body>
	존재하지 않는 이메일입니다.<br>
	<a href = "R08.jsp">Move to Sign in</a>
</body>

<%
	}else{
%>

<head>
<meta charset="UTF-8">
<title>Sign in - Failed</title>
</head>
<body>
	비밀번호를 다시 확인해주세요.<br>
	<a href = "R08.jsp">Move to Sign in</a>
</body>

<%
	}
%>

</html>