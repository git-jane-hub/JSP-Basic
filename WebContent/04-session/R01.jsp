<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String usa = (String)session.getAttribute("USA");
	String china = (String)session.getAttribute("China");
	String au = (String)session.getAttribute("AU");
	
	out.println(usa);
	out.println(china);
	out.println(au);
	
/* 	session.setMaxInactiveInterval(20);
	int time = session.getMaxInactiveInterval();
	out.println(time); */
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>