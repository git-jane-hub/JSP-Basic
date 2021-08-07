<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.setAttribute("newyork", "USA");
	session.setAttribute("shanghai", "China");
	session.setAttribute("sydney", "AU");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session check</title>
</head>
<body>
	<a href = "R01.jsp">session check</a>
</body>
</html>