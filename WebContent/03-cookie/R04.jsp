<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie peanut = new Cookie("peanut_cookie", "peanutfavor");
	peanut.setMaxAge(20);
	response.addCookie(peanut);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href = "R05.jsp">쿠키 직접 확인</a>
</body>
</html>